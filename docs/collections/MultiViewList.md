# MultiViewList

`MultiViewList<E>` is a lightweight wrapper around a Dart list that exposes the same read/write behaviour but allows multiple **views** to share the same underlying storage.  It converts any `Iterable<E>` into a list on construction and provides an `unmodifiable` view when needed.  The primary goal is to support the ordered‑map keys lists used by `OrderedMap` and to allow slicing and filtering operations to return new `MultiViewList` instances without copying the entire list.

### Construction

```dart
MultiViewList<E>({ required Iterable<E> source })
```

* `source` – any iterable of elements.  If it is already a `List<E>` then it is used directly; otherwise the iterable is eagerly collected into a new list.  The resulting list backs all view operations.

Internally the class stores:

- `source` – the original iterable (for reference).
- `_listSource` – the backing list.
- `unmodifiable` – an `UnmodifiableListView<E>` pointing at `_listSource` for read‑only access.

### Core properties and iteration

`MultiViewList` implements `Iterable<E>`, so you can iterate over it directly.  It provides:

- `length` – the number of elements.
- `isEmpty` / `isNotEmpty` – whether the list has zero elements.
- `iterator` – returns `_listSource.iterator`.
- `forEach(void Function(E element) action)` – applies a function to each element.
- `first`, `last`, `single` – get specific elements (throws if conditions aren’t met).
- Index access `operator []` and `elementAt(int)` – return the element at a given index.

### Searching

- `indexOf(element, [int start])` – search for the element starting at `start`.
- `firstWhere`, `lastWhere`, `singleWhere` – search with a predicate, optionally supplying an `orElse` callback.
- `any` / `every` / `contains` – standard Dart list checks.

### Mutation

Although most of `dartora`’s collection types are immutable views, `MultiViewList` is mutable.  You can:

- `set(int index, E value)` – replace the element at the given index.
- `add(E value)` – append to the end of the list.
- `remove(Object? value)` – remove the first occurrence (returns a boolean indicating success).
- `removeAt(int index)` – remove the element at the index and return it.
- `clear()` – remove all elements.

### Reduction

Standard reduction methods from `Iterable` are delegated to the backing list:

- `join([separator])` – join elements into a string.
- `reduce(combine)` – reduce using a binary function.
- `fold(initial, combine)` – fold with an initial value.

### View transformations

View‑oriented methods return new `MultiViewList` instances wrapping a transformed `List`:

- `map(toElement)` – lazily applies a function to each element, returning a new `MultiViewList` of the mapped type.
- `followedBy(other)` – returns a new view that concatenates this list with another iterable.
- `expand(toElements)` – expands each element into zero or more values.
- `skip(count)` / `take(count)` – skip or take a prefix of elements.
- `skipWhile(test)` / `takeWhile(test)` – skip/take based on a predicate.
- `where(test)` – filter by predicate.
- `whereType<T>()` – keep only elements of a given type.
- `cast<R>()` – cast elements to a different type (performs no checks).

### Converting back to standard collections

- `toList({bool growable = true})` – returns a copy of the backing list (read‑only by default).
- `toSet()` – returns a `Set` of the elements.

`MultiViewList` is intentionally simple: it is mostly a façade over `List` that returns new `MultiViewList` instances when an operation would otherwise return a plain list.  This preserves the ability for `OrderedMap` and `ChildHolder` to build multiple views without reallocating memory.
