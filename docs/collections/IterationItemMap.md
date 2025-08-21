## IterationItemMap<K, V>

`IterationItemMap` is the standard concrete implementation of [`IterationMap`](IterationMap.md).  It wraps an existing `Map<K,V>` and maintains a parallel list of keys to preserve a deterministic order.  This design allows the map to behave like a list of key–value pairs while supporting the full suite of `Map` operations and index‑based manipulations.

### Constructor

```
IterationItemMap({
  required Map<K, V> map,
  int startIndex = 0,
  int indexTake = 0,
})
```

* **`map`** – the backing `Map<K,V>` that stores all key–value pairs.  The keys and values in this map are kept in sync with the `_keys` list described below.
* **`startIndex`**, **`indexTake`** – inherited window offsets that determine which entries are visible through this view.  They are passed to the superclass constructor.

On initialisation the class copies `map.keys` into `_keys`, preserving insertion order.  Subsequent insertions and removals update both `_keys` and `_map` so that the order of keys remains consistent.

### Internal state

| Field | Description |
|------|-------------|
| `_map` | The underlying `Map<K,V>` used for storage.  Reads and writes operate directly on this map. |
| `_keys` | A `List<K>` storing the keys of `_map` in deterministic order.  All index‑based operations (such as `getEntry()`, `removeAt()`, `insert()`) manipulate this list to maintain order. |
| `startIndex` / `indexTake` | Offsets inherited from `IterationConstruct`.  They hide a number of entries at the beginning/end of `_keys`. |

### Core overrides

`IterationItemMap` implements the abstract hooks of `IterationMap` as follows:

* **`sourceEntries`** – returns an iterable of `MapEntry<K,V>` constructed on the fly by mapping `_keys` to `(key) ⇒ MapEntry(key, _map[key]!)`.  Because it uses `_keys`, the order is deterministic and unaffected by the underlying map’s internal ordering.
* **`set(key,value)`** – assigns `value` to `_map[key]`.  If `key` is not already present in `_keys`, it appends the key to `_keys`; otherwise the position of `key` is unchanged.  This ensures that new keys appear at the end but existing keys remain in place when updated.
* **`insert(index,key,value)`** – inserts or moves the entry so that `key` occupies the given global index.  The method delegates to `_insertCheck(index,key,value)`, which:
  * Writes `value` to `_map[key]`.
  * Finds the current index of `key` in `_keys`.  If the key exists and the desired index is greater than the current index, it decrements the insertion index to account for the removal.
  * Removes the key from its old position if necessary and inserts it at the new position.  If the key was previously absent, it is simply inserted.
  * Returns `true` if the key was newly inserted and `false` if it was moved.

* **`get(key)`** – returns `_map[key]`.  May be `null` if the key does not exist.
* **`removeAction({...})`** – performs all removal operations.  It accepts range parameters (adjusted by `startIndex`), a list of replacements, a list of indices to remove (`removeAll`), and/or a list of keys to remove (`removeKeys`).  It updates `_keys` and `_map` accordingly and returns the number of entries removed.  For example:
  * **Range removal** – computes the slice of `_keys` to remove, deletes those keys from `_map`, removes them from `_keys`, then inserts any replacements at the starting index.
  * **Indexed removal** – sorts the indices in `removeAll`, removes keys at those positions from `_keys` (accounting for shifts), and deletes them from `_map`.
  * **Key removal** – iterates over `removeKeys`, removing each key from both `_keys` and `_map` if present.

Other methods of `IterationMap` (such as `addAll`, `update`, `remove`, `removeAt`, `clear`, `getRange`, `sublist`, `reversed`, `skip`, `take`) reuse these overrides and the `_keys` list to provide deterministic behaviour.

### Notes on efficiency

Because `IterationItemMap` stores keys in a list, index‑based operations such as `removeAt()` and `insert()` run in O(n) time to shift subsequent elements.  However, key‑based look‑ups (`get(key)`, `containsKey(key)`) remain O(1) on average thanks to the underlying map.  This trade‑off makes `IterationItemMap` suitable for moderately sized maps where deterministic ordering and windowed views are important.

### Example usage

```dart
final backing = <String,int>{'a':1, 'b':2, 'c':3};
final iterMap = IterationItemMap(map: backing);
print(iterMap.keys);    // [a, b, c]
iterMap['b'] = 5;       // updates value without moving key
iterMap.insert(0,'d',0);// inserts new key 'd' at position 0
print(iterMap.keys);    // [d, a, b, c]
iterMap.remove('a');    // removes key 'a'
print(iterMap.values);  // [0, 5, 3]
```
