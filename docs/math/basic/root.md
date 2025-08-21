# root.dart

This file defines functions for computing powers and roots with attention to sign, zero and negative inputs.  It includes:

### `num pow(num base, num exponent)`

Computes `base` raised to `exponent`.  Uses Dart’s built‑in `pow` for integer exponents and real exponents.  Handles negative bases and non‑integer exponents by converting the result to a double.  Throws if either argument is NaN.

### `double sqrt(num x)`

Computes the square root of `x`.  Returns NaN for negative inputs (non‑complex numbers) and uses Dart’s `sqrt` internally for positive values.

### `double nthRoot(num x, int n)`

Computes the `n`‑th root of `x`.  Handles the following cases:

- If `n` is zero, throws `ArgumentError`.
- If `x` is zero, returns `0` (for positive `n`) or throws (for negative `n`).
- If `n` is even and `x` is negative, returns NaN because the result would be complex.
- Otherwise, returns `pow(x, 1/n)` (as a double).

### Notes

These functions serve as building blocks for higher‑level math operations such as base conversion and curves.  They mirror the behaviour of Dart’s built‑in `pow` and `sqrt` but provide explicit error messages and handle some edge cases differently.
