# LargeList

`LargeList<VT, E>` represents a potentially **large, indexed collection** of values derived from a backing map and an optional sequence of additional items.  It implements `Iterable<E>`, providing random access and lazily transforms underlying data on the fly via a `modifier` function.  Unlike `LargeIterable`, which only offers sequence semantics, `LargeList` exposes a full list‑like API (indexing, `first`, `last`, `single`, etc.) while avoiding unnecessary copying.

### Construction

```dart
LargeList({
  required Map<String, VT> mapped,
  required List<String> keys,
  IterationHolder? extras,
  required E Function(VT e) modifier,
  int startIndex = 0,
  int? indexCount,
})
```

* `mapped` – the primary data store mapping string keys to values of type `VT`.
* `keys` – the order in which keys should appear.  Only keys beyond `startIndex` and within `indexCount` are visible.
* `extras` – an optional `IterationHolder` of extra items appended after all keys.  This enables mixing arbitrary sequences into the list without modifying the map.
* `modifier` – transforms a `VT` value from the map into the exposed type `E`.  If an element in `extras` is already `E`, it is cast directly.
* `startIndex` – offset into the keys/extras sequence; allows windows or slicing.
* `indexCount` – optional total number of visible elements.  If `null`, the list includes all remaining keys and extras.

### Properties

- `length` – the number of elements visible from `startIndex` (respects `indexCount`).
- `isEmpty` / `isNotEmpty` – standard checks based on `length`.
- `keyLength` – number of keys available in the current window.

### Iteration

`LargeList`’s `iterator` yields transformed values in order.  The default iterator uses `IndexBaseIterator`, which calls `elementAt(i)` for each index.

### Element access

- `get first` – returns the first element (throws if empty).
- `get last` – returns the last element.
- `get single` – returns the only element or throws if there are zero or multiple.
- `operator [](int index)` / `elementAt(int index)` – returns the element at the specified index.  Internally this computes an offset via `startIndex` and then either looks up the key in `_mapped` or reads from `_extras`.
- `getKey(int index)` – returns the string key at the given position (throws if no keys are available).
- `getItem(String key)` – returns the transformed value corresponding to the provided key (throws if the key is absent or outside the view).

### Searching and checks

`LargeList` does not store values sequentially, so many search methods iterate explicitly:

- `firstWhere`, `lastWhere`, `singleWhere` – search with a predicate and optionally provide an `orElse` callback.
- `any`, `every`, `contains` – standard checks that iterate through the view.

### Reduction

- `join([separator])` – concatenates `toString()` values separated by `separator`.
- `reduce(combine)` – folds the list left to right using the first element as the initial value.
- `fold(initial, combine)` – same as `reduce` but takes an explicit initial value.

### Transformations

Operations that would normally return an `Iterable` or `List` instead return a new `LargeList` or a standard `List` depending on semantics:

- `map(toElement)` – returns a new `LargeList` whose `modifier` applies `toElement` to the result of the previous modifier.  The structure (keys, extras, window) is preserved.
- `followedBy(other)` – concatenates the current view with another `Iterable`.  This is implemented by creating a copy with additional `IterationList` items appended to `extras`.
- `expand(toElements)` – collects all resulting elements into a standard `List` (no longer lazy) because expansion can yield a variable number of items per element.
- `skip(count)` / `take(count)` – return a new `LargeList` with adjusted `startIndex` and `indexCount`.
- `skipWhile(test)` / `takeWhile(test)` – return a plain `List` because evaluating a predicate may not preserve lazy semantics.
- `where(test)` and `whereType()` – currently unimplemented for `LargeList` due to complexity of preserving the view structure.  Use `toList().where(...)` instead if filtering is required.
- `cast<R>()` – returns a new `LargeList` whose `modifier` casts each value to the desired type.

### Conversion

`toList({bool growable = true})` and `toSet()` return a materialised collection of the current view.  Use these when a concrete list or set is needed.

### Copying

`LargeList.copy([...additionalItems])` creates a new `LargeList` with the same keys and map values but replaces the `extras` sequence by concatenating the existing extras with additional `IterationList`s.  This is used internally by `followedBy`.

`LargeList` offers a flexible, windowed view over a map and extra items, making it ideal for representing search results, ordered keys and large datasets without copying data.  Because all lookups funnel through `elementAt` and `modifier`, changes in the underlying map or extras are reflected in the view.
