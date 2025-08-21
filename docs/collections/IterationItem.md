## IterationItem<E>

`IterationItem` is a simple, read‑only implementation of the `Iteration` mixin.  It wraps any `Iterable<E>` and exposes a windowed view into it defined by `startIndex` and `indexTake`.  Unlike `IterationBase`, it does not implement the `List<E>` interface and provides no mutation methods; it is purely for iteration and slicing.

### Constructor

```
IterationItem({
  required Iterable<E> source,
  int startIndex = 0,
  int indexTake = 0,
})
```

* **`source`** – the underlying iterable whose elements will be presented.  If `source` is infinite, operations that compute `source.length` may not terminate.
* **`startIndex`**, **`indexTake`** – window offsets passed to `Iteration`.  They hide elements at the beginning and end of `source` as described in [`Iteration`](Iteration.md).

### Implementation

`IterationItem` stores the `source` and implements the abstract members of `Iteration`:

* **`sourceIterator`** – returns `source.iterator`.  Each call yields a fresh iterator over the entire source.
* **`sourceLength`** – returns `source.length`.  If `source` is not a `List`, this may require iterating the entire sequence.
* **`sourceGet(int sourceIndex)`** – delegates to `source.elementAt(sourceIndex)`.  Note that this assumes the underlying iterable supports random access via `elementAt()`; if it does not, an `UnsupportedError` will be thrown.

Because `IterationItem` does not implement `List<E>`, it inherits only the read‑only methods of `Iteration`.  It is useful for converting arbitrary iterables into the `Iteration` framework so that they can participate in windowing, mapping and slicing operations.

### Usage

You rarely instantiate `IterationItem` directly.  It is returned internally by methods like `map`, `followedBy` and `expand` on other `Iteration` types to wrap the resulting sequences back into an `Iteration`.  It can also be used to adapt any `Iterable` so that windowing and searching operations are available.
