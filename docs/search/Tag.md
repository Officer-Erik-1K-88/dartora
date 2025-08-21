# Tag<E>

Named value that can behave as a boolean tag or a generic key→value.

- **`name : String`** — tag key.
- **`value : E`** — data; must be `bool` when `isTag == true`.
- **`isTag : bool`** — if true, the tag participates in `#tag` search and `value` is a boolean toggle.
- **`searchString : String?`** — optional override used for search text.

### Behavior
- `toggle()` flips a boolean tag and reports if it changed.
- `toString()` returns `searchString` if set, else a stringified representation suitable for search text.
