## IterationBase<E>

`IterationBase` is an abstract class that extends the `Iteration` mixin and implements Dart’s `List<E>` interface.  It provides a mutable, list‑like view over an underlying collection while still supporting the windowing capabilities of `Iteration`.  Concrete subclasses (such as `IterationList`, `IterationHolder` and `ImmutableIterationHolder`) supply the low‑level storage and implement the hooks for insertion and removal; `IterationBase` orchestrates index adjustments and delegates to these hooks.

### Construction

```
IterationBase({
  int startIndex = 0,
  int indexTake = 0,
})
```

`startIndex` and `indexTake` define the visible window in the same way as described in [`Iteration`](Iteration.md).  Concrete subclasses must also implement the following abstract members:

* **`sourceLength` (getter/setter)** – returns the total number of elements in the backing store.  Setting this property may truncate or extend the underlying collection and is used by `length` and `clear()` implementations.
* **`sourceLengthBeenModified(int amount)`** – called when the source length has changed due to insertion or removal without directly setting `sourceLength`.  It updates any cached length values.
* **`sourceInsertAll(int index, Iterable<E> iterable)`** – inserts elements into the source at the given *raw* index (before applying `startIndex`).
* **`removeAction({...})`** – performs removal or replacement operations.  It accepts optional parameters `start`/`end` (raw indices), `replacements` (iterable of new values), `removeAll` (list of raw indices to remove) and returns the number of elements removed.
* **`set(int index, E element)`** – updates the element at the given *visible* index.

### List API

`IterationBase` implements or forwards most methods of `List<E>`:

* **Length manipulation** – writing to `length` adjusts `indexTake` when shrinking and may grow the source length when extending (filling new entries with `null` if `E` is nullable).  Setting `length` to zero calls `clear()`.
* **Random access** – `operator [](index)` and `operator []=(index, value)` retrieve and set elements via `elementAt()` and `set()` respectively, applying `startIndex`.
* **Insertion** – `add(value)`, `addAll(iterable)`, `insert(index, value)` and `insertAll(index, iterable)` call `sourceInsertAll(offset(index), iterable)` and update `sourceLengthBeenModified()` accordingly.
* **Removal** – `remove(value)`, `removeAt(index)`, `removeLast()`, `removeRange(start,end)`, `removeWhere(test)`, `replaceRange(start,end,replacements)`, `retainWhere(test)` all delegate to `removeAction()` and adjust the cached length.
* **Shuffle and sort** – `shuffle([random])` shuffles the visible portion in place by repeatedly calling `sort()` with a random comparator.  `sort([compare])` sorts the visible portion using a dual‑pivot quicksort; if no comparator is provided, the elements must implement `Comparable`.
* **Clearing** – `clear()` removes all visible elements by calling `removeRange(0,length)` and then resets `startIndex` and `indexTake` to zero.

### View operations

`IterationBase` returns new mutable views rather than copying data:

* **`map<T>(toElement)`** – returns an `IterationList<T>` whose elements are mapped from the visible items using `toElement`.
* **`followedBy(other)`** – materialises the current view into an `IterationList<E>`, appends `other` and returns the result.
* **`expand<T>(toElements)`** – materialises the current view, applies `toElements` to each element, and flattens the results into an `IterationList<T>`.
* **`operator +`** – concatenates the visible view with another list and returns a new `IterationList<E>`.
* **`reversed`** – returns an `IterationList<E>` whose underlying data is the reversed visible portion.
* **`sublist(start,[end])`** – materialises a slice of the visible portion into a new `IterationList<E>`.
* **`skip(count)`** / **`take(count)`** – adjust `startIndex` or `indexTake` to produce a new windowed view without copying.
* **`whereType<T>()`**, **`cast<R>()`** – perform runtime type checks and return new views or lists of the requested type.

### Notes

Because `IterationBase` implements the full `List<E>` interface, it can be passed to APIs expecting a mutable list.  However, heavy lifting (such as insertion, removal and range replacement) is delegated to concrete subclasses, which must manage their own storage and length tracking.  This separation of concerns allows `IterationHolder` to operate on multiple sublists, `IterationList` to operate on a single list, and `ImmutableIterationHolder` to provide a read‑only concatenation, all while sharing the same high‑level list API.
