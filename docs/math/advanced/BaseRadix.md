# BaseRadix

`BaseRadix` represents a number in an arbitrary **radix** (base).  It stores three pieces of information:

- `radix : int` – the base (between 2 and 36) in which the number is represented.  For example, 2 is binary, 10 is decimal, 16 is hexadecimal.
- `code : String` – the string representation of the number in the given base.  Digits above 9 are represented by upper‑case letters `A`–`Z` corresponding to decimal values 10–35.
- `number : double` – the numeric value of the number.  This is always the value represented by `code` when converted to base 10.

### Construction

To create a `BaseRadix` instance, use the private constructor or the static factory methods:

```dart
const BaseRadix({ required int radix, required String code, required double number });

static BaseRadix toBase(double val, int radix, [int resolution = 0])
static BaseRadix fromBase(String val, int radix, [int resolution = 10000])
```

* `toBase(val, radix, resolution)` converts a decimal value `val` to its base‑`radix` string representation.  If `resolution` is greater than zero, digits after the decimal point are included up to `resolution` places.  The returned `code` is capitalised and prefixed with `'-'` if the value is negative.
* `fromBase(val, radix, resolution)` parses a string `val` containing digits and an optional decimal point into a base‑`radix` number.  Lower‑case letters are accepted.  `resolution` limits how many loops the conversion algorithm runs; it is set high by default to process the entire string.

### Arithmetic

`BaseRadix` overloads common arithmetic operators by delegating to `double` arithmetic and then re‑encoding the result in the same base:

- `applyNumber(double newNum)` – helper that returns `this` if the numeric value does not change, or calls `toBase(newNum, radix)` otherwise.
- `operator +`, `operator -`, `operator *`, `operator /`, `operator %`, `operator ~/` – perform the arithmetic on `number` and return a new `BaseRadix` with the same base.
- `remainder(num other)` – returns `number.remainder(other)` encoded back into the base.
- Unary `operator -` – negates the value and prefixes the code with `'-'` if necessary.
- `abs()` – returns the absolute value.
- `round()`, `floor()`, `ceil()`, `truncate()` – return rounded versions of the number encoded back into the same base.
- `toInt()` / `toDouble()` – cast the numeric value to `int` or `double` in base 10.
- `sign` – returns the sign of the numeric value as a double (−1.0, +1.0 or ±0.0).

### Notes

`BaseRadix.digits` is a static list of allowable digit characters.  `toBase` and `fromBase` use this list when converting between numeric and string representations.

`BaseRadix` is immutable; all arithmetic returns new instances.  It is useful for representing and computing with numbers in non‑decimal bases while retaining the original base representation.
