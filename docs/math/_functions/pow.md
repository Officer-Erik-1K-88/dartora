# pow

Returns [x] to the power of [exponent].

If [x] is an [int] and [exponent] is a non-negative [int], the result is
an [int], otherwise both arguments are converted to doubles first, and the
result is a [double].

For integers, the power is always equal to the mathematical result of `x` to
the power `exponent`, only limited by the available memory.

For doubles, `pow(x, y)` handles edge cases as follows:

- if `y` is zero (0.0 or -0.0), the result is always 1.0.
- if `x` is 1.0, the result is always 1.0.
- otherwise, if either `x` or `y` is NaN, then the result is NaN.
- if `x` is negative (but not -0.0) and `y` is a finite non-integer, the
result is NaN.
- if `x` is Infinity and `y` is negative, the result is 0.0.
- if `x` is Infinity and `y` is positive, the result is Infinity.
- if `x` is 0.0 and `y` is negative, the result is Infinity.
- if `x` is 0.0 and `y` is positive, the result is 0.0.
- if `x` is -Infinity or -0.0 and `y` is an odd integer, then the result is
`-pow(-x ,y)`.
- if `x` is -Infinity or -0.0 and `y` is not an odd integer, then the result
is the same as `pow(-x , y)`.
- if `y` is Infinity and the absolute value of `x` is less than 1, the
result is 0.0.
- if `y` is Infinity and `x` is -1, the result is 1.0.
- if `y` is Infinity and the absolute value of `x` is greater than 1,
the result is Infinity.
- if `y` is -Infinity, the result is `1/pow(x, Infinity)`.

This corresponds to the `pow` function defined in the IEEE Standard
754-2008.

Notice that the result may overflow. If integers are represented as 64-bit
numbers, an integer result may be truncated, and a double result may
overflow to positive or negative [double.infinity].

_Defined in: `src/math/basic/root.dart`_

_Import_: `package:dartora/math/basic/root.dart`


---


### Signature

```dart
num pow(num x, num exponent) =>
```
