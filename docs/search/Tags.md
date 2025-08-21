# Tags

`Tags` is simply a type alias for `Map<String, Tag>`, but it is given its own documentation here to emphasise its role in the search system.  Each `Searchable` stores a `Tags` object containing any number of tag values keyed by name.  The search engine uses tags both as **filters** (via the `#tag` syntax) and as **keywords** (by appending their string values to the item’s description for matching).

### Behaviour in search

- If a tag has `isTag == true` and its `value == true`, then the tag name can be matched with `#name` in a query.  Matching is case‑sensitive.
- If a tag has `isTag == false`, its string value is appended to the searchable’s full text.  This allows queries like `#color red` to match an item whose tag `color` has the value `red`.
- When a tag has `searchString` defined, that string is used instead of `value.toString()` when constructing the full text.

### Managing tags

Tags are stored in a normal map, so you can use all standard map methods to add, remove, or update tag values.  The search system does not enforce any schema; the meaning of tags is up to the application.
