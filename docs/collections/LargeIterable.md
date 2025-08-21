# LargeIterable

`LargeIterable<VT, E>` provides a **lazy sequence** of values from a keyed map with optional extras, viewed through a transformation function.  It implements the `Iteration<E>` mixin, which means it supports windowing via `startIndex` and `indexTake` and can be composed into larger iterables without copying data.

### Purpose

Often you have a `Map<String, VT>` and a list of keys that defines the order in which values should be presented.  You may also have an optional list of extra objects to append after all keys.  `LargeIterable` turns this combination into an `Iteration<E>` where each value is lazily converted from `VT` to `E` using a `modifier` callback.  This is used heavily by `LargeList` and `ChildHolder` to support efficient mapping over large data sets.

### Construction

```dart
LargeIterable({
  required Map<String, VT> mapped,
  required List<String> keys,
  Iterable<dynamic>? extras,
  required E Function(VT e) modifier,
  int startIndex = 0,
  int indexTake = 0,
})
```

- `mapped` – the map of keys to values of type `VT`.
- `keys` – the order in which keys should appear in the sequence.  Only keys starting at `startIndex` and not exceeding `indexTake` are visible.
- `extras` – an optional iterable appended after the map values.  Extras may be of type `VT` or `E`; non‑`VT` values are assumed to already be of the desired type.
- `modifier` – transforms a `VT` value into `E`.  This is applied lazily when values are read.
- `startIndex`/`indexTake` – define a window into the keys/extras.  `indexTake` is how many items to take from the starting position; zero means take all available items.

### Internal fields

The class stores the map (`_mapped`), the key list (`_keys`), any extras (`_extras`) and the `modifier`.  It also stores the public `startIndex` and `indexTake` values from `Iteration`.

### Length and key count

`LargeIterable` exposes two length properties:

- `sourceLength` – the total number of items (keys + extras), regardless of windowing.
- `keyLength` – the number of keys visible in the current window.  It computes `(_keys.length - startIndex) - indexTake` and clamps to zero.

### Iteration

When iterated, `LargeIterable` uses an `IteratorBuild<E>` whose `elementAt` reads values from the map or extras depending on the index.  The range is from `0` up to `sourceLength`.

### Access methods

- `getKey(int index)` – returns the key at a given index within the window.  Valid indices are `0 ≤ index < keyLength`.  Throws if there are no keys or the index is out of range.
- `getItem(String key)` – returns the transformed value for the specified key, searching only within the visible window.  Throws a `KeyException` if the key is not present.
- `sourceGet(int sourceIndex)` – internal method that returns the value at a raw source index.  It checks if the index points into the keys list or extras and either applies the modifier or casts the extras value.  Throws a `BaseException` if the index is out of bounds.

### Contains check

`containsKey(Object? key)` returns `true` if the string key exists within the visible window and `false` otherwise.

### Transformations

`LargeIterable` implements many of the methods defined by `Iteration`:

- `map(toElement)` – returns a new `LargeIterable` with the same keys/extras but composes `toElement` on top of the existing `modifier`.
- `followedBy(other)` – returns a new `LargeIterable` whose extras are the current extras (taking into account the window) followed by `other`.
- `expand(toElements)` – eagerly collects all results into an `IterationItem` because expansion destroys the one‑to‑one mapping.
- `skip(count)` / `take(count)` – adjust `startIndex`/`indexTake` to window the sequence.
- `cast<R>()` – returns a new `LargeIterable` whose modifier casts the underlying values to `R`.

### Notes

`LargeIterable` is **read‑only**: there are no methods to insert, remove or modify the backing map or keys.  If you need to modify the underlying data, adjust the map/keys/extras and create a new `LargeIterable`.
