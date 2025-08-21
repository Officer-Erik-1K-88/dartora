# comparison.dart

The `comparison` library provides helper functions for type coercion and numeric comparisons across different numeric types.  It includes:

### `numberCast<T extends num>(dynamic value)`

Attempts to convert `value` into a number of type `T`.  The function accepts `int`, `double`, `num`, `String`, or any object implementing `.toString()` that yields a numeric literal.  It throws an exception if the value cannot be parsed as a number.  This helper is used throughout `dartora` to safely cast dynamic values to numeric types.  Example:

```dart
int x = numberCast<int>('42');    // returns 42
double y = numberCast<double>(3); // returns 3.0
```

### `min<T extends num>(T a, T b)` and `max<T extends num>(T a, T b)`

Wrapper functions around Dart’s `min()` and `max()` from `dart:math`.  They constrain the return type to `T extends num` to avoid type promotions.  These helpers are primarily used internally by the math modules but are exposed for completeness.
