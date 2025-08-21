# Tag<E>

A `Tag<E>` is a named value attached to a `Searchable`.  Tags allow search queries to restrict or score items based on categorical metadata rather than just plain text.  A tag can behave as a boolean toggle (on/off) or store an arbitrary value.

### Fields

- `name : String` – the key used to identify the tag in search queries (e.g. `#color`).
- `value : E` – the associated data.  If `isTag` is `true`, this must be a `bool` indicating whether the tag is active.  Otherwise it may be any type.
- `isTag : bool` – indicates whether this tag should respond to `#name` in search queries.  When `true`, the tag only contributes to search if `value` is `true`.  When `false`, the tag is treated as key→value metadata; its string representation will be included in the search text.
- `searchString : String?` – optional override used when building search text.  If provided, this string is used instead of `value.toString()` when adding tag values to the searchable’s full text.

### Behaviour

- `toggle()` flips the value of a boolean tag.  Returns `true` if the value changed.
- `toString()` returns `searchString` if set, otherwise `value.toString()` (unless `isTag` is `true` and `value` is `false`, in which case the empty string is returned).  This text is appended to the searchable’s description when building search indices.

### Use in queries

In query strings, tags are matched with a leading `#`.  For example, the query `#red` will match any searchable whose `tags` map contains a key `red` and whose tag is active (`isTag == true` and `value == true`) or whose tag is a non‑boolean value whose `toString()` contains the word `red`.  Tags with `isTag == false` behave like additional keywords; their string values contribute to the full text but are not matched with a `#` prefix.
