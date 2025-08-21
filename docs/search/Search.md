# Search

Executes a `SearchQuery` against a collection of [`Searchable`](./Searchable.md)s and ranks results.

## Fields
- `query : SearchQuery` — compiled query.
- `itemCheck : bool Function(SearchItem)?` — optional extra filter applied after built‑in validity.

## Methods
- `compare(Searchable)` — compares title + description + tag strings and returns a `SearchQueryComparison`.
- `getItem(Searchable)` — wraps the item and its comparison into a `SearchItem`.
- `validityCheck(SearchItem)` — enforces `hasRequired == true` (if any required words exist in the query) and `containsNotAllowed == false`; also applies `itemCheck` if provided.
- `search({required List<Searchable> held})` — returns **descending** score order (inserts at the first index with a lower score).

## Notes
- Tags only contribute if the tag is active (boolean true) or if the tag is just key→value (non‑boolean). In both cases, their `.toString()` becomes searchable text.
