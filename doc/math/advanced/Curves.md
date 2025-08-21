# Curves

This module defines utility functions for non‑linear growth and smoothing curves used by the search scoring algorithm and the points system.

### `int stepwiseGrowth(num input, { double speed = 4.0, double length = 4.0, double factor = 0.5 })`

Returns a non‑negative integer representing the **stepwise growth** of `input`.  The idea is to reward repeated occurrences of a word in search scoring without linear explosion.  The parameters adjust the shape of the curve:

- `speed` – controls how fast the step count grows.  Smaller values yield faster growth.
- `length` – scales how much input is needed to increment the step.  Larger values require more occurrences to increase the step.
- `factor` – influences the slope at low values.  Higher factors make the first steps more difficult to achieve.

The function computes `log2(input)` and a second curve based on `(input - 1) / (log2(input) * speed)`.  It then divides `input` by a linear combination of these curves to obtain a step count.  The result is always non‑negative and symmetric around zero.

This function is used in [`Points`](Points.md) to calculate the `modifier` for positive points: each time a word occurs in the search text, `stepwiseGrowth(occurrenceCount)` is added to the modifier.  This yields diminishing returns for repeated matches.

### `double sigmoidCurve(num input, { double centerX = 1, double centerY = 0.8, double zeroY = 0.02 })`

Computes a smoothed curve that maps input values to a range between 0 and 1.  The curve is defined by:

- `centerX` – x‑coordinate of the inflection point (where the curve transitions from steep to shallow).
- `centerY` – y‑coordinate at the inflection point.  This sets the midpoint of the curve.
- `zeroY` – y‑coordinate at `input = 0`.  This sets the lower bound of the curve.

Internally it constructs a helper function `g(c) = a*ln(c) + b*c` and uses a value `k = f(centerX, centerY) * g(centerY)` to compute a logistic‑like mapping.  It then raises the result to a power so that `sigmoidCurve(0) = zeroY`.  The resulting curve starts near `zeroY`, approaches `centerY` around `centerX` and tends toward 1 as `input` increases.

While not used in the default search scoring, `sigmoidCurve()` can be applied to normalise counts or scores.  Its parameters allow shaping the curve to fit specific requirements.
