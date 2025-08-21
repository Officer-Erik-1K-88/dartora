# SearchQuery

Immutable query compiled from a user string.

## Buckets
- **`optional : List<PointedWord>`** — soft matches (add positive points).
- **`require  : List<PointedWord>`** — must match somewhere (sets `hasRequired`).
- **`cannot   : List<PointedWord>`** — forbidden (sets `containsNotAllowed` if matched).
- **`tags     : Map<String, List<PointedWord>>`** — tag‑scoped words (matched using `#tag` semantics).

`SearchQuery` is also an `Iteration<PointedWord>` spanning all buckets.

## Scoring
### `compare(String s, {bool asTag=false}) → SearchQueryComparison`
- Builds a `RegExp` per word using the engine (wildcards get translated).
- **Positive words:** increments `occurrences` by the number of matches, adds the word's points once if `occurrences > 0`.
- **Forbidden words:** adds to `negative` once if any match.
- **Modifier:** for the total occurrences, adds `max(stepwiseGrowth(occurrences), 1)`.
- Returns a `SearchQueryComparison` with `Points.from(positive, negative, occurrences, modifier)` plus flags for required/forbidden.

### Validity helpers
- `hasRequired` and `containsNotAllowed` flags are OR‑combined across fields when you add comparisons (e.g., title + description + tags).
