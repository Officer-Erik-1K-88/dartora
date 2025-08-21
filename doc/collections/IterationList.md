## IterationList<E>

`IterationList` is the standard concrete implementation of `IterationBase<E>` backed by a mutable Dart `List<E>`.  It behaves like a normal list but honours the windowing offsets inherited from `Iteration`, allowing you to present only part of the underlying list while still supporting random access and mutation operations.

### Constructor

```
IterationList({
  required Iterable<E> iterable,
  int startIndex = 0,
  int indexTake = 0,
})
```

* **`iterable`** – the initial collection of elements.  If `iterable` is already a `List<E>`, it is stored directly; otherwise its elements are collected into a new list.  The underlying list is stored in `_listSource`.
* **`startIndex`**, **`indexTake`** – window offsets that hide elements at the beginning or end of the list.  They are passed to `IterationBase`.

### Hooks implementation

`IterationList` overrides the abstract hooks of `IterationBase` to operate directly on `_listSource`:

| Hook | Implementation |
|------|---------------|
| `sourceIterator` | Returns `_listSource.iterator`, a standard list iterator. |
| `sourceLength` (getter) | Returns `_listSource.length`. |
| `sourceLength` (setter) | Adjusts `_listSource.length`: extending fills new slots with `null` (if `E?`), shrinking truncates the list; setting to zero clears the list. |
| `sourceLengthBeenModified(amount)` | No‑op because changing `_listSource.length` directly updates the stored length. |
| `sourceGet(sourceIndex)` | Returns `_listSource.elementAt(sourceIndex)`. |
| `set(index, value)` | Writes `value` to `_listSource[offset(index)]`. |
| `sourceInsertAll(index, iterable)` | Inserts elements of `iterable` into `_listSource` at the given *raw* index. |
| `removeAction({...})` | Handles removal and replacement: removes elements by index range, by list of indices (`removeAll`) or by replacing a range with new elements.  Returns the number of removed elements and updates `_listSource`. |

### Behaviour

`IterationList` inherits all list operations from `IterationBase`.  Setting the visible `length` may adjust `indexTake` (to hide or reveal elements) and may grow the underlying `_listSource`.  Methods like `insert`, `removeAt`, `replaceRange`, `shuffle` and `sort` operate on the visible portion of `_listSource` and update it in place.  Because the underlying storage is a `List`, these operations have the same complexity characteristics as Dart’s built‑in list operations (e.g. insertion and removal are O(n)).

### Usage

`IterationList` is used throughout the package wherever a concrete, mutable list is needed.  It serves as the default backing for `LargeList` extras and for new sequences returned by mapping or slicing operations.  When combined with `startIndex` and `indexTake`, it allows you to create views of a list without copying it, then modify the underlying list through those views.
