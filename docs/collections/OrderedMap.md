# OrderedMap<K, V>

A `Map` that preserves a deterministic key iteration order. Keys are stored in an internal list, while values live in a normal `Map<K,V>`.

## Guarantees
- Insertion order is preserved unless keys are explicitly re‑ordered (e.g., by constructing with a custom `keys` list).
- `keys`, `values`, and iteration reflect that stable order.

## Key operations
- `operator [] / []=` — get or set values. Setting a **new** key appends it to the end of the order.
- `remove(key)` — removes key and value and deletes the key from the order.
- `addAll` / `addEntries` — inserts while preserving order (new keys append).
- `putIfAbsent` — inserts and appends only when absent.

**Complexity:** lookups are O(1) average; insertions are O(1) average; operations that touch the keys list (like removal) are O(n) for the keys slice touched.
