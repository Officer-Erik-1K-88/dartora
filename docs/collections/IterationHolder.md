## IterationHolder<E>

`IterationHolder` is a concrete subclass of `IterationBase<E>` that concatenates multiple mutable lists into a single logical list.  It allows you to build large sequences out of smaller chunks without copying elements.  Each chunk must itself be an `IterationBase<E>`, so that `IterationHolder` can delegate insertion, removal and element access to its children.

### Constructor

```
IterationHolder({
  required List<IterationBase<E>> items,
  int startIndex = 0,
  int indexTake = 0,
})
```

* **`items`** – ordered list of sub‑lists to be concatenated.  Each item must implement `IterationBase<E>` so that its length and mutation operations are available.  The order of these lists defines the global sequence order.
* **`startIndex`**, **`indexTake`** – window offsets inherited from `Iteration`.  They apply across the entire concatenated view; for example, `startIndex = 2` hides the first two elements of the first sub‑list, while `indexTake = 1` hides the last element of the last sub‑list.

On construction, `IterationHolder` computes the total length of all sub‑lists and caches it in `_sourceLength`.

### Internal state

| Field | Description |
|------|-------------|
| `items` | The list of child `IterationBase<E>` instances. |
| `_sourceLength` | Caches the total number of elements across all children.  Updated whenever elements are added or removed. |
| `startIndex` / `indexTake` | Window offsets inherited from `IterationBase`. |

### Hook implementations

`IterationHolder` overrides the hooks from `IterationBase` to operate across multiple sub‑lists:

* **`sourceIterator`** – returns a `HolderIterator<E>` whose `holder` is `items`.  This iterator yields elements of the first sub‑list, then the second, and so on.
* **`sourceLength` (getter)** – returns the cached `_sourceLength`.  **Setter** – growing the length inserts `null` (if `E` is nullable) into the last sub‑list; shrinking removes elements from the end of the last non‑empty sub‑list.  After adjusting a sub‑list, it updates `_sourceLength` accordingly.
* **`sourceLengthBeenModified(int amount)`** – increments `_sourceLength` by `amount` when a sub‑list reports that its length has changed due to insertion or removal.
* **`sourceGet(sourceIndex)`** – walks through `items`, subtracting each child’s length until the index falls within one of them.  It then returns that sub‑list’s element at the reduced index.  Throws `IndexError` if out of bounds.

### Mutation logic

`IterationHolder` implements `sourceInsertAll` and `removeAction` by delegating to the appropriate child sub‑lists:

* **Insertion** – given a global source index and an iterable of new elements, `IterationHolder` determines which sub‑list contains the insertion point and forwards the insertion to that sub‑list’s `sourceInsertAll`.  If the insertion happens at the boundary between sub‑lists, it inserts into the next sub‑list.  After insertion, it calls `sourceLengthBeenModified(iterable.length)`.
* **Removal / replacement** – the `removeAction` method accepts a range (`start`/`end`), a list of global indices (`removeAll`), or a list of replacement values.  It computes which sub‑lists are affected, calls each child’s `removeAction` with adjusted indices, and may remove entire sub‑lists if they become empty.  When replacing, it inserts a new `IterationList` as a sub‑list to hold the replacement values.  Finally, it updates `_sourceLength` based on the number of elements removed and inserted.
* **Single element removal** – `remove(value)` searches for the first occurrence of `value` among the children and removes it in place.

Because each child is itself an `IterationBase<E>`, removal or insertion may change its length.  The holder uses `sourceLengthBeenModified` to keep its cached `_sourceLength` in sync.

### Usage

Use `IterationHolder` when you need to treat several lists as one large list without copying.  Examples include storing extra values for a `LargeList` (which uses a sub‑list for extras) or building composite views for search results.  Mutations performed on an `IterationHolder` are forwarded to the appropriate child list, so the underlying storage remains consistent.
