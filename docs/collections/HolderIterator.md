## HolderIterator<E>

`HolderIterator` flattens a collection of collections into a single iterator.  It is designed for scenarios where you have an iterable of iterables (for example, the rows of a matrix or the segments of an `IterationHolder`) and want to traverse all elements in sequence without manually writing nested loops.

### Constructor

```
HolderIterator({
  required Iterable<Iterable<E>> holder,
})
```

* **`holder`** – an iterable whose elements are themselves iterables.  Each inner iterable is treated as a *row* or *segment*.  The iterator yields all elements of the first segment, then proceeds to the second, and so on until all segments have been exhausted.

### Internal state

| Field | Description |
|------|-------------|
| `_holder` | Stores the outer iterable containing the segments.  It is typically a list of lists or a list of `Iteration` objects. |
| `_outerIndex` | Zero‑based index of the current segment being traversed.  Starts at 0. |
| `_innerIndex` | Index within the current segment.  Initialised to −1 so that the first call to `moveNext()` sets it to 0. |

### Methods

* **`current`** – returns the element at `_holder.elementAt(_outerIndex).elementAt(_innerIndex)`.  Calling `current` before `moveNext()` throws a `StateError`.
* **`moveNext()`** – advances the iterator to the next element.  It increments `_innerIndex`; if `_innerIndex` reaches the end of the current segment, it resets to 0 and increments `_outerIndex` to move to the next segment.  Returns `true` while there are elements left and `false` once all segments are exhausted.

### Usage

`HolderIterator` is not intended to be used directly by library consumers.  It is used internally by classes such as `Matrix` (to iterate over its rows) and `IterationHolder` (to iterate over concatenated lists) to provide a flattened view.  Because it reads from the underlying iterables without copying, it is efficient for large data sets.  However, it does not support modifying the underlying collections – it simply reads their elements in order.
