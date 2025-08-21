# OrderedMap

`OrderedMap<K, V>` behaves like a normal Dart `Map<K,V>` but **remembers the insertion order** of keys.  It stores key order in a `MultiViewList<K>` and values in a regular `Map<K,V>`.  When iterating, keys and values are returned in the order they were first inserted unless explicitly removed or re‑ordered.  This structure is useful when the order of items must stay stable across mutations and iteration.

### Construction

```dart
OrderedMap({
  Map<K,V>? map,
  List<K>? keys,
})
```

- `map` – optional initial values.  If provided, keys are added in the map’s iteration order.
- `keys` – optional list to specify the initial order of keys.  When provided, `keys` and `map` must contain the same keys; the list is used to seed the internal key order.

The backing fields are:

- `_mapping` – a `Map<K,V>` storing key→value pairs.
- `_mapKeys` – a `MultiViewList<K>` storing keys in insertion order.  Views on this list drive iteration order.

### Core map operations

`OrderedMap` implements all of `Map<K,V>`:

- `operator [](K key)` / `operator []=(K key, V value)` – get or set a key.  When setting a **new** key, it is appended to the end of `_mapKeys`.  Updating an existing key does not change its position in the order.
- `remove(K key)` – removes the key/value pair and also removes the key from `_mapKeys`.
- `addAll(Map<K,V> other)` / `addEntries(Iterable<MapEntry<K,V>> entries)` – adds all entries, appending new keys in iteration order.
- `putIfAbsent(K key, V Function() ifAbsent)` – inserts and appends only if the key is absent.
- `update(K key, V Function(V value) update, {V Function()? ifAbsent})` – updates an existing value or optionally inserts a new one at the end.
- `updateAll(...)`, `removeWhere(...)`, `clear()` – behave as in `Map` and update `_mapKeys` accordingly.
- `containsKey`, `containsValue`, `entries`, `forEach`, `isEmpty`, `isNotEmpty`, `length`, `values` – all follow the underlying map semantics but reflect the insertion order.

### Iteration

- `keys` returns a list of keys in insertion order (via `_mapKeys.unmodifiable`).
- Iterating over the map (e.g. with `for (var entry in map.entries)`) uses the order defined by `_mapKeys`.

### Other features

- `cast<K2,V2>()` – returns an `OrderedMap` with keys/values cast to the new types.  The order is preserved but type conversions are not checked.
- `map<K2,V2>(...)` – maps each entry to a new entry.  Returns a standard `Map<K2,V2>` (not an `OrderedMap`) because the ordering semantics may differ.

### Notes

- Removing a key always removes its position in the key list, so iteration reflects only present keys.
- Inserting the same key again after removal appends it at the end.
- Access via index into `keys` can be done through the `MultiViewList` API returned by `keys`.

`OrderedMap` is therefore ideal when you need a map whose iteration order stays predictable across modifications but you still want full `Map` behaviour.
