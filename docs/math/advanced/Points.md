# Points

`Points` encapsulates positive and negative scores and provides arithmetic and comparison operations.  It is used by search scoring to accumulate points for matched and forbidden words and to calculate the final score via a **modifier** based on occurrences.

### Abstract API

`Points` is an abstract class with the following getters:

- `positive : int` – total positive points awarded for desired words.
- `negative : int` – total negative points penalised for forbidden words.
- `occurrences : int` – total number of positive occurrences counted (each match increments this).  Used to compute the modifier.
- `modifier : int` – sum of stepwise increments produced by [`stepwiseGrowth`](Curves.md) on each addition of positive points.  At least 1 if there are positive occurrences.
- `positiveModded : int` – `positive * modifier`.  Represents the weighted positive score.
- `total : int` – `positiveModded - negative`.  This is the final score used to rank search results.

### Factories

```dart
factory Points.from({ required int positive, required int negative, required int occurrences, required int modifier })
factory Points.all(int value)
factory Points.empty()
```

These factories return `UnmodifiablePoints` instances with the specified values.  `Points.all(value)` sets all fields (positive, negative, occurrences, modifier) to the same value.  `Points.empty()` sets all fields to zero.

### Operators

`Points` defines arithmetic operators to combine two points objects:

- `+`, `-`, `*`, `/` – combine each field separately (e.g. `positive + p.positive`, etc.) and return a new `Points`.
- `compareTo(Points other)` – compares by `total` for sorting.
- `==`, `<`, `>`, `<=`, `>=` – compare `total` to another `Points` or numeric value (via `numberCast`).  Two `Points` are equal if their `total` scores are equal.

### Implementations

#### `UnmodifiablePoints`

An immutable implementation of `Points`.  Fields are set at construction and cannot be changed.  Used by `SearchQueryComparison` to store final scores.

#### `ModifiablePoints`

A mutable implementation used internally when building up scores.  Fields start at zero and can be incremented:

- `addPositive(int count, int occurrence)` – increases `positive` by `count`, increases `occurrences` by `occurrence` and adds `max(stepwiseGrowth(occurrence), 1)` to `modifier` if `occurrence` is non‑zero.
- `addNegative(int count)` – increases `negative` by `count`.
- `clear()` – resets all fields to zero.
- `addPoints(Points other)` / `subtractPoints(Points other)` – modify fields by adding or subtracting another points object.

`ModifiablePoints` implements the abstract getters by returning internal fields.

### Usage in search

When computing a `SearchQueryComparison`, the algorithm uses `ModifiablePoints` to accumulate positive and negative scores and then converts it to `UnmodifiablePoints` via `Points.from(...)`.  This ensures that final scores are immutable but can be combined via `+` when comparing against multiple fields.
