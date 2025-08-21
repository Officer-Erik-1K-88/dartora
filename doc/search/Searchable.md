# Searchable

`Searchable` is the abstract base class for any item that can participate in a **search**.  It defines common properties such as an identifier, display name and description, and a set of tags, and it supports a parent/child hierarchy.  Concrete implementations provide storage for child items and may customise event handling.

### Properties

- `id : String` – a unique identifier for the item.  Used to look up or remove the item from a `ChildHolder`.
- `name : String` – a permanent name that should not change once assigned.  In `DefaultSearchable` this is stored as a final field.
- `title : String` – the display name used in search results.  This can change over time (e.g. to reflect user‑editable titles).
- `description : String` – body text used for search and display.  Defaults to the empty string.
- `tags : Tags` – a collection of tag values used to influence search ranking.  Tags may include booleans (presence/absence) or arbitrary values.
- `type : SearchableType` – indicates whether the item is a `parent` (can have children) or a `child` (no children or part of a parent hierarchy).
- `parent : Searchable?` – reference to the parent in the hierarchy, if any.
- `children : ChildHolder` – returns a holder for managing child `Searchable`s.  Only valid when `type == SearchableType.parent`.

### Construction and factory

```dart
Searchable({ required String id, required SearchableType type, String description = '', String title = '', required Tags tags })

factory Searchable.build({
  required String id,
  required String name,
  required SearchableType type,
  String description = '',
  String title = '',
  required Tags tags,
  List<Searchable>? children,
  EventAction? onHolderEvent,
})
```

The factory returns a `DefaultSearchable`, a concrete implementation that stores the `name` in a final field and instantiates a `ChildHolder` for the provided children.  The `onHolderEvent` callback is passed down to the holder to handle add/remove events.

### Hierarchy

A `Searchable` can contain children if its `type` is `SearchableType.parent`.  Children are managed via a `ChildHolder`, which tracks keys, types and events.  When a child is added to a parent, its `_parent` field is set to the parent.  Removing a child clears its parent reference.

### Notes

- The hierarchy is flat: there is only one level of parent/child.  Nested children would need to attach `ChildHolder`s to child items themselves.
- `DefaultSearchable` is sufficient for most use cases; you rarely need to implement `Searchable` yourself unless you need custom child storage or event handling.
