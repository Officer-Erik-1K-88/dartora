# round

Rounds a `double` to a specific number of decimal places using a configurable [`RoundMode`](../math/RoundMode.md).

## Signature
```dart
double round(
  final double value, {
  final int decimals = 6,
  final RoundMode mode = RoundMode.halfUp,
})
```

## Behavior
- Splits the input into whole and fractional parts as **strings** to control rounding precisely.
- Uses `decimals` to determine the *kept* last digit and the *discarded* digit (`rounder`).
- Delegates the rounding decision to `mode.round(rounder, signedKeptDigit)`.
- Writes the adjusted last digit back. If the digit overflows to `10` or `-10`, it carries into the preceding place.
- Recombines the pieces and parses back to `double`.

## Parameters
- **`value`** — number to round. Throws `UnsupportedError` for `NaN` or `Infinity`.
- **`decimals`** — positive = digits after the decimal point; negative = digits **to the left** (e.g., `-1` rounds to tens). Error if its absolute exceeds the available places.
- **`mode`** — rounding policy; defaults to `RoundMode.halfUp`.

## Examples
```dart
round(2.3456, decimals: 2);                      // 2.35  (half-up)
round(2.5, mode: RoundMode.halfEven);            // 2.0   (banker’s rounding)
round(-3.5, mode: RoundMode.halfAwayFrom);       // -4.0  (away from zero on ties)
round(1234.0, decimals: -2);                     // 1200  (to nearest hundred)
```
