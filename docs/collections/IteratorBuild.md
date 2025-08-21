## IteratorBuild<E>

`IteratorBuild` is a helper class that lets you implement a custom `Iterator<E>` by providing only an element getter function and the bounds of the iteration.  This is particularly useful when you want to expose a view into a larger collection or compute elements on the fly without constructing a full list.

### Purpose

In many parts of Dartora, iterators are needed over subsets of existing data structures, such as windows of an `Iteration`, slices of a `LargeIterable`, or flattened rows of a matrix.  Instead of writing bespoke iterator classes for each case, `IteratorBuild` centralises the logic: you pass in a callback that knows how to fetch the element at a given index and specify the start and end indices.  The class then manages iteration state for you.

### Constructor

```
IteratorBuild({
  required E Function(int index) elementAt,
  int startIndex = 0,
  required int endIndex,
})
```

* **`elementAt(int index)`** – function that returns the element corresponding to the given index.  It will be called for each value of the internal pointer between `startIndex` (inclusive) and `endIndex` (exclusive).
* **`startIndex`** – index of the first element to produce.  Defaults to 0.
* **`endIndex`** – one past the index of the last element.  The iterator will yield elements for indices in the range `[startIndex, endIndex)`.  If `startIndex` equals `endIndex`, the iterator will be empty.

### Internal fields

| Field | Description |
|------|-------------|
| `elementAt` | The callback used to fetch elements on demand. |
| `startIndex` | The lower bound of the iteration (inclusive). |
| `endIndex` | The upper bound of the iteration (exclusive). |
| `_index` | Internal pointer initialised to `-1` so that the first call to `moveNext()` sets it to `startIndex`. |

### Methods

* **`current`** – returns `elementAt(_index)` when `_index` is within the iteration bounds.  If `current` is accessed before the first call to `moveNext()` or after `moveNext()` has returned `false`, it throws a `StateError`.
* **`moveNext()`** – on the first call, sets `_index` to `startIndex` and returns `true` if `_index < endIndex`.  On subsequent calls, increments `_index` by 1 and returns `true` while `_index < endIndex`.  Once `_index` equals `endIndex`, it returns `false` and iteration is complete.

### Example

```
// Create an iterator that yields the squares of numbers 0 through 4.
final it = IteratorBuild<int>(
  elementAt: (i) => i * i,
  startIndex: 0,
  endIndex: 5,
);
while (it.moveNext()) {
  print(it.current);
}
// Prints: 0, 1, 4, 9, 16
```

`IteratorBuild` is widely used in the implementation of `Iteration`, `LargeIterable`, and other collection classes to provide efficient iteration without copying data.
