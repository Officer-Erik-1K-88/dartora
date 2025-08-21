# SearchQueryComparison

`SearchQueryComparison` encapsulates the result of comparing a [`SearchQuery`](./SearchQuery.md) against a piece of text (or tag value).  It holds a [`Points`](../math/advanced/Points.md) object representing positive and negative scores, the number of occurrences of positive terms, and flags indicating if all required terms were found or if any forbidden terms were encountered.

### Fields

- `points : Points` – holds the raw positive and negative scores, the number of positive occurrences and the stepwise modifier.  See [`Points`](../math/advanced/Points.md) for details on how scores are combined and compared.
- `hasRequired : bool` – set to `true` if either there are no required terms in the query or at least one required term was found in the text.  When combining comparisons via `+`, the flag becomes the logical OR of the individual flags.
- `containsNotAllowed : bool` – set to `true` if any forbidden term appears in the text.  When combining comparisons via `+`, the flag becomes the logical OR.

### Operators

`SearchQueryComparison` implements the `+` operator to merge two comparisons:

```dart
SearchQueryComparison operator +(SearchQueryComparison other) {
  return SearchQueryComparison(
    points: points + other.points,
    hasRequired: hasRequired || other.hasRequired,
    containsNotAllowed: containsNotAllowed || other.containsNotAllowed,
  );
}
```

This is useful when you compare the query against multiple fields (e.g. title, description, tag) and want to accumulate the points and flags into one result.  Note that points are combined by adding their positive/negative values and modifiers; occurrence counts are added, and the total is computed on demand from the new `Points` object.

### Usage

A `SearchQueryComparison` is typically produced by calling `SearchQuery.compare()` on a string.  You rarely need to instantiate it yourself.  The `Search` class combines comparisons from multiple fields and uses the flags to determine validity (via `hasRequired` and `containsNotAllowed`).
