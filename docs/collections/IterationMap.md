## IterationMap<K, V>

`IterationMap` is an abstract base class that combines the windowing capabilities of `IterationConstruct<V>` with the standard `Map<K, V>` API.  It views a sequence of key–value pairs as a list‑like structure that can be **sliced**, **iterated** and **mutated** while maintaining a deterministic order of keys.

### Purpose

While a normal `Map` in Dart does not guarantee a particular order beyond insertion order, `IterationMap` formalises the concept of an ordered map view.  It exposes `startIndex` and `indexTake` offsets (from `IterationConstruct`) to hide elements at the beginning or end of the map and provides index‑based operations in addition to key‑based look‑ups.

Concrete subclasses (such as [`IterationItemMap`](IterationItemMap.md)) supply the underlying storage and define how keys and values are stored and updated.  `IterationMap` itself focuses on index manipulation and implements most of the `Map` interface in terms of abstract hooks.

### Construction

```
IterationMap({
  int startIndex = 0,
  int indexTake = 0,
})
```

* **`startIndex`**, **`indexTake`** – define the visible window into the underlying entry list, analogous to `Iteration`.  They determine which entries are returned by `entries`, `keys` and `values` and affect index‑based operations such as `getEntry()` and `removeAt()`.

Subclasses must initialise the internal `_startIndex` and `_indexTake` fields and provide a concrete implementation of the `sourceEntries` getter.

### Key fields and getters

| Member | Description |
|------|-------------|
| `sourceEntries` | **Abstract** iterable of all `MapEntry<K,V>` objects in the backing map, in their full order (without applying `startIndex`/`indexTake`).  Subclasses must implement this to drive iteration and look‑ups. |
| `startIndex` / `indexTake` | Offsets inherited from `IterationConstruct` determining which portion of `sourceEntries` is exposed. |
| `sourceLength` | Returns `sourceEntries.length`.  Can be overridden for efficiency. |
| `length` | Number of visible entries: `(sourceLength − startIndex) − indexTake`. |
| `entries` | An `IterationItem<MapEntry<K,V>>` wrapping `sourceEntries` with the current window applied. |
| `keys` | `entries.map((entry) ⇒ entry.key)`. |
| `values` | `entries.map((entry) ⇒ entry.value)`. |
| `operator [](key)` / `get(key)` | Returns the value associated with `key` or `null` if not found.  Delegated to subclass implementation. |
| `getEntry(index)` | Returns the visible `MapEntry` at `index`.  Performs a range check and uses `offset(index)` to account for `startIndex`. |
| `sourceGet(sourceIndex)` | Implements the `IterationConstruct` requirement by returning `sourceEntries.elementAt(sourceIndex).value`. |
| `getKey(index)` | Returns the key of the entry at the given index. |
| `indexOfKey(key,[start])` | Searches from `start` (default 0) for the first index where the key matches.  Returns `−1` if not found. |

### Presence checks

`IterationMap` forwards the standard `containsKey()` and `containsValue()` methods to its `keys` and `values` iterables.  Note that these operations perform a linear search unless overridden.

### Modification hooks

Subclasses must implement two key methods that power all modifications:

* **`set(K key, V value)`** – stores `value` at `key`.  If `key` already exists, it should replace the existing entry; otherwise it should insert a new entry at the end of the map.  Subclasses can override to preserve order when inserting or updating keys.
* **`insert(int index, K key, V value)`** – inserts or moves the entry so that `key` occupies the given index in the visible portion of the map.  This method should ensure that the internal order of keys is updated and must handle the case where `key` already exists elsewhere.
* **`removeAction({...})`** – a single entry point for all removal/replacement operations.  It accepts parameters to remove a range (`start`/`end`), replace that range with new entries (`replacements`), remove arbitrary indices (`removeAll`), or remove by keys (`removeKeys`).  It must return the number of entries removed.  Higher‑level methods such as `remove()`, `removeAt()`, `removeRange()`, `removeWhere()` and `replaceRange()` call into this hook.

### Mutation methods

`IterationMap` implements the rest of the `Map` interface in terms of the above hooks:

* **Key assignment** – `operator[]=(key,value)` calls `set(key,value)`.
* **Bulk insertion** – `insertAll(index, iterable)` calls `insert()` for each entry after performing bounds checks.  `addAll(other)` and `addEntries(newEntries)` insert or update each provided entry.
* **`putIfAbsent(key, ifAbsent)`** – inserts `key` with `ifAbsent()` if the key is missing.  Returns the current or newly inserted value.
* **`update(key, update, {ifAbsent})`** – updates the existing value with `update(value)`, or inserts a new value from `ifAbsent()` if provided.
* **`updateAll((key,value) ⇒ newValue)`** – replaces each entry’s value using the supplied function.
* **Removal** – `remove(key)` calls `removeAction(removeKeys:[key])`.  `removeValue(value)` searches for the first occurrence of `value` and removes its key.  `removeAt(index)` removes by index using `removeAction(removeAll:[index])`.  `removeRange(start,end)` removes a range of entries.  `removeWhere((key,value)⇒test)` removes entries where `test` returns true.
* **Replacement** – `replaceRange(start,end,replacements)` removes the range and inserts `replacements` at `start`.  `retainWhere(test)` keeps only entries where `test(key,value)` is true.
* **Clearing** – `clear()` removes all visible entries and resets `startIndex`/`indexTake` to zero.

### Slicing and mapping

Like `Iteration`, `IterationMap` supports producing new views rather than materialising a whole map:

* **`getRange(start,end)`** – returns an `IterationMap` representing the entries between `start` and `end` of the current view.  Implementations typically return a new `IterationItemMap` with adjusted `startIndex` and `indexTake` but still referencing the same underlying storage.
* **`sublist(start,[end])`** – materialises the specified sub‑range into a new `IterationItemMap` backed by a fresh `LinkedHashMap`.  This ensures that modifications to the returned map do not affect the original.
* **`reversed`** – returns a view with entries in reverse order.  Implementations may build a temporary list or map; `IterationItemMap` uses `LinkedHashMap.fromEntries` to preserve order.
* **`skip(count)`**, **`skipWhile(test)`**, **`take(count)`**, **`takeWhile(test)`** – return new `IterationMap` views by adjusting `startIndex`/`indexTake` or by materialising the filtered entries.
* **`map<K2,V2>((K key, V value)⇒MapEntry<K2,V2>)`** – transforms each entry to a new key and value, returning a plain `Map<K2,V2>`.
* **`cast<RK,RV>()`** – casts this map to a `Map<RK,RV>` if the underlying type relationships permit.

### Remarks

`IterationMap` does not specify how keys are stored or how ordering is maintained; these responsibilities are left to subclasses.  However, it *does* guarantee that operations using indices respect `startIndex` and `indexTake`.  The concrete implementation `IterationItemMap` uses a list of keys to preserve order and an underlying map for storage.
