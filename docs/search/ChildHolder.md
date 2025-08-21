# ChildHolder and Child

`ChildHolder<T extends Searchable>` manages a collection of children for a parent `Searchable`.  Each child is wrapped in a `Child<T>` object that records the holder and the underlying item.  The holder tracks keys by `SearchableType`, maintains overall order via a `MultiViewList<String>` and exposes the full `Iterable<Child<T>>` interface so you can iterate and perform functional operations on children.

### Internal structures

- `_typedKeys : Map<SearchableType, MultiViewList<String>>` – stores key lists segmented by type (`parent` or `child`).  This allows listing only the children of a given type.
- `_keys : MultiViewList<String>` – master list of all keys in insertion order, regardless of type.
- `children : Map<String, Child<T>>` – map from `id` to `Child` object.
- `parent : T?` – reference to the parent `Searchable` that owns this holder.
- `onEvent : EventAction?` – callback invoked whenever a child is added or removed.  Event actions are described below.

### Adding children

`add(T item)` adds a `Searchable` to the holder and returns a `Child<T>` wrapper.  The steps are:

1. Assert that no child with the same `id` exists.
2. Create a `Child` wrapper with `holder` and `item`.
3. Fire an **add** event via `_callAction()`; the callback can call `prevent()` on the `ChildAction` to veto the operation.
4. If not prevented, set the child’s parent reference, add it to the `children` map, append its key to `_keys` and `_typedKeys[type]`, then call the callback again to report completion.

`addAll(List<T> items)` iterates over a list of items and adds each one.

### Removing children

`remove(String key)` removes the child with the given key and returns the `Child` wrapper or `null` if not found.  Steps:

1. Look up the child in `children`.  If absent, return `null`.
2. Fire a **remove** event via `_callAction()`; the callback can veto via `prevent()`.
3. If not prevented, remove the child from `children`, `_keys` and `_typedKeys[type]`, clear its parent reference if it pointed to this holder’s parent, and call the callback again to report completion.

`removeElement(Child<T> child)` calls `remove(child.key)`; `removeAt(int index)` removes by index.

### Event handling and `ChildAction`

When adding or removing a child, a `ChildAction<T>` is constructed with:

- `onCall` – the user‑supplied event callback.
- `target` – a `TargetChild` containing the holder and the child item.
- `type : ChildActionType` – an enum indicating `add`, `remove` or `result` (used internally).

The callback receives a `ChildAction` and may call `prevent()` to cancel the operation.  After the operation completes (if not prevented), the callback is invoked again with a `ChildActionResult` so that the user can update UI or perform side effects.  `ChildAction.locked()` indicates that the action cannot be prevented anymore.

### Querying keys

- `_getKeys(type)` – lazy helper returning the `MultiViewList` of keys for a particular `SearchableType`.
- `_addKey(key, type)` / `_removeKey(key, type)` – internal helpers to maintain `_keys` and `_typedKeys` when adding/removing.
- `getKeys(type)` – returns a read‑only view of keys for the specified type.
- `keys` – returns a read‑only view of all keys regardless of type.

### Collection API

`ChildHolder` extends `Iterable<Child<T>>`, so it supports all common iterable operations.  Many methods delegate to a private `LargeIterable` (`_iter`) that presents the `children` map in insertion order.  The most relevant include:

- `length`, `isEmpty`, `isNotEmpty` – size checks.
- `elementAt(int index)` – returns the `Child` at a given position.
- `first`, `last`, `single` – access by position (throwing on invalid conditions).
- `firstWhere`, `lastWhere`, `singleWhere` – find by predicate.
- `any`, `every`, `contains` – standard tests.
- `map(toElement)` / `expand` / `skip` / `take` / `takeWhile` / `skipWhile` / `followedBy` / `join` / `reduce` / `fold` / `toList` / `toSet` / `where` / `whereType` – these methods behave as on any iterable.  They operate on the sequence of `Child` wrappers rather than the raw `Searchable` items.

### Child wrapper

`Child<T>` derives from `TargetChild<T>` and exposes convenient getters:

- `key` – the child’s `id`.
- `type` – the child’s `SearchableType`.
- `parent` – returns the child’s parent if it exists; otherwise returns the child itself.

`Child` has no additional methods; it serves as a stable handle for actions and iteration.

### Use cases

`ChildHolder` forms the backbone of the search hierarchy in Dartora.  A root item (type `parent`) holds an arbitrary number of children (type `child`), and the holder allows them to be added, removed and iterated while firing events.  The separation of keys and map allows efficient lookup and reordering without sacrificing iteration speed.
