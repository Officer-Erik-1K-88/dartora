# PointedWord

`PointedWord` couples a search term with the number of points it contributes when matched.  It is defined in `src/search/searcher.dart` as:

```dart
class PointedWord {
  final String word;
  final int points;
  PointedWord({ required this.word, required this.points });
  @override String toString() => word;
}
```

### Purpose

When parsing a query, each distinct word is turned into a `PointedWord` with an initial point value of 1.  If the same word appears multiple times (e.g. repeated in the query), the parser increments the `points` of the existing `PointedWord` rather than creating a new one.  This way, repeated terms in the query carry more weight in the final score.

### Fields

- `word : String` – the literal search term (after lower‑casing and removing wildcard sentinels).
- `points : int` – the weight assigned to this term.  Positive for desired words (optional/required) and negative for forbidden words.

### Usage in scoring

When computing a [`SearchQueryComparison`](./SearchQueryComparison.md), the algorithm counts occurrences of each `PointedWord` in the target string.  If the word is present at least once, it adds `points` to the positive (or negative) tally.  The raw count of matches is used to compute the modifier via `stepwiseGrowth()`.
