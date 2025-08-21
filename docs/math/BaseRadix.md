# BaseRadix

This class `BaseRadix` is part of the `math` module of the Dartora library. It defines behavior and data structures as implemented in the source code.

_Defined in: `src/math/advanced/base_radix.dart`_

_Import_: `package:dartora/math/advanced/base_radix.dart`


---


### Constructors

#### `return toBase(newNum, radix);`

Constructs a new instance of `BaseRadix`.



#### `return applyNumber(number.remainder(other));`

Constructs a new instance of `BaseRadix`.



#### `return applyNumber(number + other);`

Constructs a new instance of `BaseRadix`.



#### `return applyNumber(number - other);`

Constructs a new instance of `BaseRadix`.



#### `return applyNumber(number * other);`

Constructs a new instance of `BaseRadix`.



#### `return applyNumber(number % other);`

Constructs a new instance of `BaseRadix`.



#### `return applyNumber(number / other);`

Constructs a new instance of `BaseRadix`.



#### `return applyNumber((number ~/ other) as double);`

Constructs a new instance of `BaseRadix`.



#### `return BaseRadix(
      radix: radix,
      code:code.startsWith('-')? code.replaceFirst('-', '') : '-$code',
      number: -number,
    );`

Constructs a new instance of `BaseRadix`.



#### `return BaseRadix(
      radix: radix,
      code: code.replaceFirst('-', ''),
      number: number.abs(),
    );`

Constructs a new instance of `BaseRadix`.



#### `round() == 4` and `(-3.5).round() == -4`.
  ///
  /// Throws an [UnsupportedError] if this number is not finite
  /// (NaN or an infinity).
  /// ```dart
  /// print(3.0.round());`

Constructs a new instance of `BaseRadix`.



#### `print(3.25.round());`

Constructs a new instance of `BaseRadix`.



#### `print(3.5.round());`

Constructs a new instance of `BaseRadix`.



#### `print(3.75.round());`

Constructs a new instance of `BaseRadix`.



#### `print((-3.5).round());`

Constructs a new instance of `BaseRadix`.



#### `return applyNumber(number.roundToDouble());`

Constructs a new instance of `BaseRadix`.



#### `print(1.99999.floor());`

Constructs a new instance of `BaseRadix`.



#### `print(2.0.floor());`

Constructs a new instance of `BaseRadix`.



#### `print(2.99999.floor());`

Constructs a new instance of `BaseRadix`.



#### `print((-1.99999).floor());`

Constructs a new instance of `BaseRadix`.



#### `print((-2.0).floor());`

Constructs a new instance of `BaseRadix`.



#### `print((-2.00001).floor());`

Constructs a new instance of `BaseRadix`.



#### `return applyNumber(number.floorToDouble());`

Constructs a new instance of `BaseRadix`.



#### `print(1.99999.ceil());`

Constructs a new instance of `BaseRadix`.



#### `print(2.0.ceil());`

Constructs a new instance of `BaseRadix`.



#### `print(2.00001.ceil());`

Constructs a new instance of `BaseRadix`.



#### `print((-1.99999).ceil());`

Constructs a new instance of `BaseRadix`.



#### `print((-2.0).ceil());`

Constructs a new instance of `BaseRadix`.



#### `print((-2.00001).ceil());`

Constructs a new instance of `BaseRadix`.



#### `return applyNumber(number.ceilToDouble());`

Constructs a new instance of `BaseRadix`.



#### `print(2.00001.truncate());`

Constructs a new instance of `BaseRadix`.



#### `print(1.99999.truncate());`

Constructs a new instance of `BaseRadix`.



#### `print(0.5.truncate());`

Constructs a new instance of `BaseRadix`.



#### `print((-0.5).truncate());`

Constructs a new instance of `BaseRadix`.



#### `print((-1.5).truncate());`

Constructs a new instance of `BaseRadix`.



#### `print((-2.5).truncate());`

Constructs a new instance of `BaseRadix`.



#### `return BaseRadix(
      radix: radix,
      code: code.split('.')[0],
      number: number.truncateToDouble(),
    );`

Constructs a new instance of `BaseRadix`.



#### `return number.toInt();`

Constructs a new instance of `BaseRadix`.



#### `assert(resolution >= 0);`

Constructs a new instance of `BaseRadix`.



#### `assert(radix >= 2 && radix <= 36);`

Constructs a new instance of `BaseRadix`.



#### `val.abs();`

Constructs a new instance of `BaseRadix`.



#### `invertedVal.floor();`

Constructs a new instance of `BaseRadix`.



#### `pow(radix, resolution);`

Constructs a new instance of `BaseRadix`.



#### `calcPart.floor().toRadixString(radix);`

Constructs a new instance of `BaseRadix`.



#### `calcPart.floorToDouble();`

Constructs a new instance of `BaseRadix`.



#### `floor().abs();`

Constructs a new instance of `BaseRadix`.



#### `return BaseRadix(
      radix: radix,
      code: code.toUpperCase(),
      number: val,
    );`

Constructs a new instance of `BaseRadix`.



#### `assert(resolution >= 0);`

Constructs a new instance of `BaseRadix`.



#### `assert(radix >= 2 && radix <= 36);`

Constructs a new instance of `BaseRadix`.



#### `val.toUpperCase();`

Constructs a new instance of `BaseRadix`.



#### `val.startsWith('-');`

Constructs a new instance of `BaseRadix`.



#### `if (isNeg) val.replaceFirst('-', '');`

Constructs a new instance of `BaseRadix`.



#### `digits.indexOf(char);`

Constructs a new instance of `BaseRadix`.



#### `assert(index < radix);`

Constructs a new instance of `BaseRadix`.



#### `pow(radix, count)));`

Constructs a new instance of `BaseRadix`.



#### `if (count > 0) number = number * pow(10, count);`

Constructs a new instance of `BaseRadix`.



#### `return BaseRadix(
      radix: radix,
      code: code,
      number: number,
    );`

Constructs a new instance of `BaseRadix`.



### Fields

#### `final int radix;`

Stores the value of `radix` for this instance of `BaseRadix`.



#### `final String code;`

Stores the value of `code` for this instance of `BaseRadix`.



#### `final double number;`

Stores the value of `number` for this instance of `BaseRadix`.



#### `return this;`

Stores the value of `this` for this instance of `BaseRadix`.



#### `sign;`

Stores the value of `sign` for this instance of `BaseRadix`.



#### `return number;`

Stores the value of `number` for this instance of `BaseRadix`.



#### `return code;`

Stores the value of `code` for this instance of `BaseRadix`.



#### `invertedVal;`

Stores the value of `invertedVal` for this instance of `BaseRadix`.



#### `break;`

Stores the value of `break` for this instance of `BaseRadix`.



#### `radix;`

Stores the value of `radix` for this instance of `BaseRadix`.



#### `flooredCalc;`

Stores the value of `flooredCalc` for this instance of `BaseRadix`.



#### `length;`

Stores the value of `length` for this instance of `BaseRadix`.



#### `val;`

Stores the value of `val` for this instance of `BaseRadix`.



#### `length;`

Stores the value of `length` for this instance of `BaseRadix`.



#### `continue;`

Stores the value of `continue` for this instance of `BaseRadix`.



#### `break;`

Stores the value of `break` for this instance of `BaseRadix`.



#### `number;`

Stores the value of `number` for this instance of `BaseRadix`.





### Methods

#### `BaseRadix applyNumber(double newNum) {`

Executes the `applyNumber` operation defined in `BaseRadix`.



#### `BaseRadix remainder(num other) {`

Executes the `remainder` operation defined in `BaseRadix`.



#### `BaseRadix abs() {`

Executes the `abs` operation defined in `BaseRadix`.



#### `BaseRadix round() {`

Executes the `round` operation defined in `BaseRadix`.



#### `BaseRadix floor() {`

Executes the `floor` operation defined in `BaseRadix`.



#### `BaseRadix ceil() {`

Executes the `ceil` operation defined in `BaseRadix`.



#### `BaseRadix truncate() {`

Executes the `truncate` operation defined in `BaseRadix`.



#### `int toInt() {`

Executes the `toInt` operation defined in `BaseRadix`.



#### `double toDouble() {`

Executes the `toDouble` operation defined in `BaseRadix`.



#### `override
  String toString() {`

Executes the `toString` operation defined in `BaseRadix`.



#### `is decimal (this should be the same as doing [double.toString] on [val]).
  ///
  /// A [radix] of 16 is hexadecimal.
  ///
  /// The [resolution] value represents decimal place accuracy.
  /// A [resolution] of zero means that the decimal places will be ignored.
  static BaseRadix toBase(
    /// The base 10 value that is to be turned into the base value of [radix].
    double val,
    /// The base value to turn [val] into.
    int radix,
    [
      int resolution=0,
    ]
  ) {`

Executes the `decimal` operation defined in `BaseRadix`.



#### `while (calcPart != 0) {`

Executes the `while` operation defined in `BaseRadix`.



#### `if (calcPart < radix) {`

Executes the `if` operation defined in `BaseRadix`.



#### `if (resolution > 0) {`

Executes the `if` operation defined in `BaseRadix`.



#### `if (holePart != 0) {`

Executes the `if` operation defined in `BaseRadix`.



#### `static BaseRadix fromBase(
    String val,
    int radix,
    [
      int resolution=10000,
    ]
  ) {`

Executes the `fromBase` operation defined in `BaseRadix`.



#### `if (char == '.') {`

Executes the `if` operation defined in `BaseRadix`.


