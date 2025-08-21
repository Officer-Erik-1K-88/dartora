# BaseRadix

_No summary provided in source._

_Defined in: `src/math/advanced/base_radix.dart`_

_Import_: `package:dartora/math/advanced/base_radix.dart`


---


### Constructors

#### `return toBase(newNum, radix);`



#### `return applyNumber(number.remainder(other));`



#### `return applyNumber(number + other);`



#### `return applyNumber(number - other);`



#### `return applyNumber(number * other);`



#### `return applyNumber(number % other);`



#### `return applyNumber(number / other);`



#### `return applyNumber((number ~/ other) as double);`



#### `return BaseRadix(
      radix: radix,
      code:code.startsWith('-')? code.replaceFirst('-', '') : '-$code',
      number: -number,
    );`



#### `return BaseRadix(
      radix: radix,
      code: code.replaceFirst('-', ''),
      number: number.abs(),
    );`



#### `round() == 4` and `(-3.5).round() == -4`.
  ///
  /// Throws an [UnsupportedError] if this number is not finite
  /// (NaN or an infinity).
  /// ```dart
  /// print(3.0.round());`



#### `print(3.25.round());`



#### `print(3.5.round());`



#### `print(3.75.round());`



#### `print((-3.5).round());`



#### `return applyNumber(number.roundToDouble());`



#### `print(1.99999.floor());`



#### `print(2.0.floor());`



#### `print(2.99999.floor());`



#### `print((-1.99999).floor());`



#### `print((-2.0).floor());`



#### `print((-2.00001).floor());`



#### `return applyNumber(number.floorToDouble());`



#### `print(1.99999.ceil());`



#### `print(2.0.ceil());`



#### `print(2.00001.ceil());`



#### `print((-1.99999).ceil());`



#### `print((-2.0).ceil());`



#### `print((-2.00001).ceil());`



#### `return applyNumber(number.ceilToDouble());`



#### `print(2.00001.truncate());`



#### `print(1.99999.truncate());`



#### `print(0.5.truncate());`



#### `print((-0.5).truncate());`



#### `print((-1.5).truncate());`



#### `print((-2.5).truncate());`



#### `return BaseRadix(
      radix: radix,
      code: code.split('.')[0],
      number: number.truncateToDouble(),
    );`



#### `return number.toInt();`



#### `assert(resolution >= 0);`



#### `assert(radix >= 2 && radix <= 36);`



#### `val.abs();`



#### `invertedVal.floor();`



#### `pow(radix, resolution);`



#### `calcPart.floor().toRadixString(radix);`



#### `calcPart.floorToDouble();`



#### `floor().abs();`



#### `return BaseRadix(
      radix: radix,
      code: code.toUpperCase(),
      number: val,
    );`



#### `assert(resolution >= 0);`



#### `assert(radix >= 2 && radix <= 36);`



#### `val.toUpperCase();`



#### `val.startsWith('-');`



#### `if (isNeg) val.replaceFirst('-', '');`



#### `digits.indexOf(char);`



#### `assert(index < radix);`



#### `pow(radix, count)));`



#### `if (count > 0) number = number * pow(10, count);`



#### `return BaseRadix(
      radix: radix,
      code: code,
      number: number,
    );`



### Fields

#### `final int radix;`



#### `final String code;`



#### `final double number;`



#### `return this;`



#### `sign;`



#### `return number;`



#### `return code;`



#### `invertedVal;`



#### `break;`



#### `radix;`



#### `flooredCalc;`



#### `length;`



#### `val;`



#### `length;`



#### `continue;`



#### `break;`



#### `number;`





### Methods

#### `BaseRadix applyNumber(double newNum) {`



#### `BaseRadix remainder(num other) {`



#### `BaseRadix abs() {`



#### `BaseRadix round() {`



#### `BaseRadix floor() {`



#### `BaseRadix ceil() {`



#### `BaseRadix truncate() {`



#### `int toInt() {`



#### `double toDouble() {`



#### `override
  String toString() {`



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



#### `while (calcPart != 0) {`



#### `if (calcPart < radix) {`



#### `if (resolution > 0) {`



#### `if (holePart != 0) {`



#### `static BaseRadix fromBase(
    String val,
    int radix,
    [
      int resolution=10000,
    ]
  ) {`



#### `if (char == '.') {`


