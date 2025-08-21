# Search

The `Search` class coordinates parsing a user query, comparing it against a collection of `Searchable` items and sorting the results by relevance.  It encapsulates a compiled `SearchQuery` and provides convenience methods for comparing individual items or executing the full search.

### Construction

```dart
Search.from(String query, {QueryEngine engine = QueryEngine.defaultEngine})

Search({ required SearchQuery query, bool Function(SearchItem)? itemCheck })
```

- The convenience `from` constructor parses a raw query string with the given `QueryEngine` and constructs a `Search` object.  It is equivalent to calling `Search(query: SearchQuery.from(queryString, engine: engine))`.
- The normal constructor accepts a pre‑built `SearchQuery` and an optional `itemCheck` callback used to filter `SearchItem`s after built‑in validity checks.  `itemCheck` should return `true` to keep the item or `false` to discard it.

### Fields

- `query : SearchQuery` – the compiled representation of the user’s search string.  Contains the lists of optional, required and forbidden words and tags.
- `itemCheck : bool Function(SearchItem)?` – an optional predicate applied after scoring to decide whether to include the result.

### Methods

#### `compare(Searchable item)`

Compares a single `Searchable` against the query and returns a `SearchQueryComparison`.  It concatenates the `title`, `description` and tag text of the item into a unified string.  For each field it calls `query.compare(...)` and then combines the comparisons with `+`, which merges points and flags.  This method does not enforce `hasRequired` or `containsNotAllowed`; it simply measures how well the item matches.

#### `getItem(Searchable item)`

Wraps a `Searchable` and its comparison into a `SearchItem`.  This is convenient when you want both the item and its score.

#### `validityCheck(SearchItem item)`

Determines whether a `SearchItem` is acceptable.  It returns `false` if:

- The query has required words but none of them were found (`hasRequired == false`), or
- Any forbidden word was found (`containsNotAllowed == true`).

If the built‑in checks pass, it calls the user‑provided `itemCheck` (if any) to allow custom filtering.

#### `search({ required List<Searchable> held })`

Executes the search over the provided list of items.  It iterates through each item, computes its `SearchQueryComparison`, wraps it into a `SearchItem`, checks validity and inserts it into a results list in **descending** order of total points.  The insertion uses a simple linear scan: for each new item, find the index where its score is greater than or equal to the score of the item at that index and insert it there.  If the item has zero points, it is appended at the end.

The returned list contains all matching items sorted by relevance.

### Notes

- The search algorithm is simple and does not implement paging; for large collections you may wish to cut off results after a certain count.
- `Search` does not mutate the items; it only computes scores based on their fields and tags.
- Additional fields (e.g. categories) can be incorporated by including them in the concatenated text passed to `query.compare()` or by customising `itemCheck`.
