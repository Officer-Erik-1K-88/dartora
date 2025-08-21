# SearchQuery

`SearchQuery` encapsulates a parsed user query and provides methods to compute how well a piece of text (or tags) matches that query.  It holds lists of positive and negative words, required terms, optional terms and tags, and defines the scoring algorithm used to produce a `SearchQueryComparison`.

### Fields

- `optional : List<PointedWord>` – words that contribute positive points when present in the target text.  Each has an associated point value (typically one for plain words, more if repeated tokens are merged).
- `require  : List<PointedWord>` – words that **must** appear in the target text to pass the validity check.  They also contribute positive points.
- `cannot   : List<PointedWord>` – words that, if present, cause the result to be invalid.  They contribute negative points.
- `tags     : Map<String, List<PointedWord>>` – mapping of tag names to words associated with that tag.  Tag words are matched against the tag’s string value rather than the main text.
- `optionalPrefix : String?` – internal field used by the parser to prefix words found inside quotes.

`SearchQuery` implements `Iteration<PointedWord>`, so it can be iterated over all pointed words across all buckets.

### Parsing

Use `SearchQuery.from(String query, {QueryEngine engine = QueryEngine.defaultEngine})` to parse a raw query string.  The engine uses its configured `PatternItem`s to recognise quotes, negation, wildcards, tags and escape sequences.  The resulting `SearchQuery` categorises words into optional, required, forbidden and tag buckets and assigns each a point count based on whether it appears once or multiple times.

### Scoring

#### `compare(String text, {bool asTag = false}) → SearchQueryComparison`

Compares the query against a given string (e.g. title or description).  For each word in `optional`, `require` and `cannot` lists, it builds a regular expression taking into account wildcards (`*`) and escapes.  It counts the number of matches (occurrences) and computes positive/negative points accordingly:

- For each optional or required word, if the word appears at least once, add the word’s `points` to the positive score.  Also record the total number of occurrences.
- For each forbidden word, if it appears at least once, increment the negative score by the word’s `points` (usually 1) and set `containsNotAllowed` to `true`.
- Compute a **modifier** using `stepwiseGrowth(occurrences)`.  This increases weighting for multiple occurrences according to a logarithmic growth curve.
- Return a `SearchQueryComparison` containing the positive, negative, occurrences, modifier and flags for missing required words or containing forbidden words.

#### Validity helpers

- `bool get hasRequired` – `true` if the query has no required words or if at least one required word was found in the last comparison.
- `bool get containsNotAllowed` – `true` if any forbidden word was found.

These flags are OR‑combined when adding comparisons with `+` to aggregate results across multiple fields (e.g. title + description + tags).

### Combining comparisons

When you compare a query against multiple fields, you can add the resulting `SearchQueryComparison` objects together using the `+` operator.  The operator sums positive/negative points and modifiers and ORs the `hasRequired`/`containsNotAllowed` flags.  This allows you to accumulate scores across different text sources and then evaluate them together.

### Notes

- Tags are compared by passing the tag’s string value into `compare()` with `asTag = true`.  When `asTag` is true, required/cannot words in the query are applied to the tag and not to the main text.
- The scoring algorithm is intentionally simple but designed to prioritise items that contain the most query terms and to penalise items containing forbidden words.  You can customise the behaviour by providing your own `QueryEngine` with different `PatternItem`s or by modifying the `Points` growth function in `math/advanced/curves.dart`.
