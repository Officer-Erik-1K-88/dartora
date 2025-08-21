# rounding.dart

This module defines a **configurable rounding policy** via the [`RoundMode`](../advanced/RoundMode.md) class and provides a top‑level `round()` function that rounds doubles to a fixed number of decimal places using a chosen mode.  It allows precise control over how ties are resolved and whether rounding can decrease or increase magnitude.

### `double round(double value, { int decimals = 6, RoundMode mode = RoundMode.halfUp })`

Rounds `value` to `decimals` places according to `mode`.  The algorithm:

1. Splits `value` into integer and fractional parts as strings.
2. Determines the **to‑round** digit and the **rounder** digit based on `decimals`.  For negative `decimals`, digits to the left of the decimal point are considered.
3. Calls `mode.round(rounder, signedToRound)` to decide whether to increment, decrement or leave the last kept digit.  Handles ties according to parity, direction (towards/away from zero) and `reverse`/`allowSubtract` flags.
4. Applies the increment/decrement to the string representation, carrying if necessary.
5. Reassembles the string and parses it back to a double.

Throws `UnsupportedError` if `value` is NaN or infinity, or if `decimals` is outside the range of the number’s precision.

### Example

```dart
round(3.275, decimals: 2); // 3.28 (half-up)
round(3.275, decimals: 2, mode: RoundMode.halfEven); // 3.28 (tie goes to even)
round(-3.275, decimals: 2, mode: RoundMode.halfAwayFrom); // -3.28 (away from zero)
round(1234.0, decimals: -2); // 1200 (round to nearest hundred)
```

### Rounding Modes

`RoundMode` is a data class specifying how rounding decisions are made.

A configurable rounding policy used by `round()` to decide whether to increment, decrement, or keep the last retained digit.

You can construct custom modes by supplying boolean flags to the `RoundMode` constructor.  The `rounder` digit threshold and the `reverse` flag allow fine‑grained control over tie resolution.

refer to RoundMode documentation for more information. The defined defaults:

- `RoundMode.halfUp` – standard rounding: rounds up when the discarded digit is ≥ 5, rounds down otherwise.
- `RoundMode.halfEven` – banker’s rounding: rounds to the nearest even digit on ties.
- `RoundMode.halfOdd` – rounds to the nearest odd digit on ties.
- `RoundMode.halfAwayFrom` – rounds away from zero on ties.
- `RoundMode.halfToZero` – rounds towards zero on ties.
- `RoundMode.awayFrom` – always rounds away from zero (no ties needed).
- `RoundMode.alwaysToZero` – always rounds towards zero.
