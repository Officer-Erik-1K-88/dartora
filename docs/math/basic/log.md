# log.dart

This file implements exponential and logarithmic functions using Taylor series and ratio‑based approximations.  The goal is to provide accurate and stable versions of `exp()`, natural logarithm (`ln`), base‑10 logarithm (`log`), base‑2 logarithm (`log2`) and arbitrary base logarithm (`logB`) without relying on Dart’s built‑in math functions.

### `double exp(num n)`

Computes `e^n` using a series expansion for small `|n|` and repeated squaring for larger values.  Handles negative arguments by returning `1 / exp(-n)`.  Throws an exception for NaN or infinite input.

### `double ln(num n)`

Computes the natural logarithm of `n`.  Uses ratio‑based approximations for values near 1 and reduction by powers of 10 or 2 for large values.  Returns negative infinity for zero, NaN for negative numbers and throws for NaN input.

### `double log(num n)`

Alias for `log10(n)`.  Uses `ln(n) / ln(10)` internally.  Equivalent to `ln` but scaled by log base conversion.  Returns negative infinity for zero, NaN for negative input.

### `double log2(num n)`

Computes the base‑2 logarithm using `ln(n) / ln(2)`.  Handles the same edge cases as `ln()`.

### `double logB(num n, num base)`

Computes the logarithm of `n` with respect to an arbitrary `base` using `ln(n) / ln(base)`.  Throws if the base is not positive or equals 1, and handles the same edge cases as `ln()`.

### Notes

These functions are deterministic and avoid using `dart:math`’s `log` or `exp`, providing explicit control over algorithmic precision.  They are used by other modules (e.g. curves and rounding) to build higher‑level behaviour.
