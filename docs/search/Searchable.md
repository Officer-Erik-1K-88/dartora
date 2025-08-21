# Searchable

Abstract entity that can be searched.

- **`id : String`** — unique id.
- **`name : String`** — permanent name.
- **`title : String`** — display name (used in search).
- **`description : String`** — body text (used in search).
- **`tags : Tags`** — tag/value map.
- **`type : SearchableType`** — `parent` or `child` (hierarchy support).
- **`children : List<Searchable>`** — (optional) nested items.

### DefaultSearchable
Concrete implementation with convenient constructors; suitable for most apps.
