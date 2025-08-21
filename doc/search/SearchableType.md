# SearchableType

`SearchableType` is an enumeration that classifies `Searchable` items as either **parent** or **child**.  This affects how a `Searchable` participates in a hierarchy and how it is stored in a `ChildHolder`.

### Values

| Value | Description |
|-------|-------------|
| `parent` | Indicates a `Searchable` that can hold children.  The `children` getter returns a mutable `ChildHolder` that can add, remove or enumerate child items. |
| `child` | Indicates a `Searchable` that is intended to be held by a parent.  A child may still have its own `children` holder if you wrap it in `DefaultSearchable.build()`, but conceptually it occupies a single position in its parent’s list. |

The type is used by `ChildHolder` to group keys and to decide whether to call `add()` or `remove()` operations on the holder.
