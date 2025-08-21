## IndexBaseIterator<E>

`IndexBaseIterator` provides a simple way to iterate over any iterable by index.  Many classes in Dartora (including the `Iteration` mixin) prefer to fetch elements using `elementAt()` so that they can apply windowing offsets.  `IndexBaseIterator` wraps an `Iterable<E>` and uses its `elementAt()` method to retrieve values one by one.

### Constructor

```
IndexBaseIterator({
  required Iterable<E> iterable,
})
```

* **`iterable`** – the underlying sequence to iterate.  The iterator will yield exactly `iterable.length` elements.

Internally, `IndexBaseIterator` stores the `iterable` and sets up an `IteratorBuild` with:

* `elementAt(i)` returning `iterable.elementAt(i)`;
* `startIndex = 0`;
* `endIndex = iterable.length`.

### Behaviour

Because `IndexBaseIterator` extends `IteratorBuild`, it inherits the following behaviour:

* **`current`** – holds the element most recently returned by `moveNext()`.  Accessing it before calling `moveNext()` throws.
* **`moveNext()`** – on the first call, sets an internal index to `startIndex` and returns `true` if `startIndex < endIndex`; on subsequent calls, increments the index and returns `true` until the index equals `endIndex`.  Once `moveNext()` returns `false`, the iteration is complete.

`IndexBaseIterator` does not store any data itself; it simply delegates element retrieval to the underlying iterable.  This makes it suitable for iterating over views or other `Iteration` types that may not expose a conventional Dart iterator but do implement `elementAt()`.

### Usage

`IndexBaseIterator` is used internally by the `Iteration` mixin to implement its default `iterator` getter.  It can also be used whenever you need to provide a Dart `Iterator` over a sequence that can be indexed, without relying on the sequence’s own `iterator` implementation.
