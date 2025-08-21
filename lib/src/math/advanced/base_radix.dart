
import '../basic/root.dart';

class BaseRadix {
  const BaseRadix({
    required this.radix,
    required this.code,
    required this.number,
  });

  /// The base integer value.
  /// This value represents the count of [BaseRadix.digits]
  /// that are valid in the [BaseRadix.code] value.
  final int radix;
  /// The string value that represents the encoded [BaseRadix.number] value
  /// in the base of [BaseRadix.radix].
  final String code;
  /// The numeric value that represents the decoded [BaseRadix.code] value.
  final double number;

  BaseRadix applyNumber(double newNum) {
    if (number == newNum) return this;
    return toBase(newNum, radix);
  }

  BaseRadix remainder(num other) {
    return applyNumber(number.remainder(other));
  }

  BaseRadix operator +(num other) {
    return applyNumber(number + other);
  }

  BaseRadix operator -(num other) {
    return applyNumber(number - other);
  }

  BaseRadix operator *(num other) {
    return applyNumber(number * other);
  }

  BaseRadix operator %(num other) {
    return applyNumber(number % other);
  }

  BaseRadix operator /(num other) {
    return applyNumber(number / other);
  }

  BaseRadix operator ~/(num other) {
    return applyNumber((number ~/ other) as double);
  }

  BaseRadix operator -() {
    return BaseRadix(
      radix: radix,
      code:code.startsWith('-')? code.replaceFirst('-', '') : '-$code',
      number: -number,
    );
  }

  BaseRadix abs() {
    return BaseRadix(
      radix: radix,
      code: code.replaceFirst('-', ''),
      number: number.abs(),
    );
  }

  /// The sign of [number]'s numerical value.
  ///
  /// Returns -1.0 if the value is less than zero,
  /// +1.0 if the value is greater than zero,
  /// and the value itself if it is -0.0, 0.0 or NaN.
  double get sign => number.sign;

  /// Returns the integer closest to this number.
  ///
  /// Rounds away from zero when there is no closest integer:
  ///  `(3.5).round() == 4` and `(-3.5).round() == -4`.
  ///
  /// Throws an [UnsupportedError] if this number is not finite
  /// (NaN or an infinity).
  /// ```dart
  /// print(3.0.round()); // 3
  /// print(3.25.round()); // 3
  /// print(3.5.round()); // 4
  /// print(3.75.round()); // 4
  /// print((-3.5).round()); // -4
  /// ```
  BaseRadix round() {
    return applyNumber(number.roundToDouble());
  }

  /// Returns the greatest integer no greater than this number.
  ///
  /// Rounds the number towards negative infinity.
  ///
  /// Throws an [UnsupportedError] if this number is not finite
  /// (NaN or infinity).
  /// ```dart
  /// print(1.99999.floor()); // 1
  /// print(2.0.floor()); // 2
  /// print(2.99999.floor()); // 2
  /// print((-1.99999).floor()); // -2
  /// print((-2.0).floor()); // -2
  /// print((-2.00001).floor()); // -3
  /// ```
  BaseRadix floor() {
    return applyNumber(number.floorToDouble());
  }

  /// Returns the least integer that is not smaller than this number.
  ///
  /// Rounds the number towards infinity.
  ///
  /// Throws an [UnsupportedError] if this number is not finite
  /// (NaN or an infinity).
  /// ```dart
  /// print(1.99999.ceil()); // 2
  /// print(2.0.ceil()); // 2
  /// print(2.00001.ceil()); // 3
  /// print((-1.99999).ceil()); // -1
  /// print((-2.0).ceil()); // -2
  /// print((-2.00001).ceil()); // -2
  /// ```
  BaseRadix ceil() {
    return applyNumber(number.ceilToDouble());
  }

  /// Returns the integer obtained by discarding any fractional
  /// part of this number.
  ///
  /// Rounds the number towards zero.
  ///
  /// Throws an [UnsupportedError] if this number is not finite
  /// (NaN or an infinity).
  /// ```dart
  /// print(2.00001.truncate()); // 2
  /// print(1.99999.truncate()); // 1
  /// print(0.5.truncate()); // 0
  /// print((-0.5).truncate()); // 0
  /// print((-1.5).truncate()); // -1
  /// print((-2.5).truncate()); // -2
  /// ```
  BaseRadix truncate() {
    return BaseRadix(
      radix: radix,
      code: code.split('.')[0],
      number: number.truncateToDouble(),
    );
  }

  /// Truncates [BaseRadix.number] to an integer and returns the result as an [int].
  int toInt() {
    return number.toInt();
  }

  /// This [BaseRadix] as a [double].
  ///
  /// The value returned should be exactly the same as [BaseRadix.number].
  double toDouble() {
    return number;
  }

  /// Provide a representation of this [BaseRadix] value.
  ///
  /// The value returned is exactly the same as [BaseRadix.code].
  @override
  String toString() {
    return code;
  }


  /// Static

  static const List<String> digits = [
    '0','1','2','3','4','5','6','7','8','9',
    'A','B','C','D','E','F','G','H','I','J',
    'K','L','M','N','O','P','Q','R','S','T',
    'U','V','W','X','Y','Z'
  ];

  /// Converts [val] to a string representation in the given [radix].
  ///
  /// In the string representation, capital letters are used for digits above '9', with 'A' being 10 and 'Z' being 35.
  ///
  /// The [radix] argument must be an integer in the range 2 to 36.
  ///
  /// A [radix] of 2 is binary.
  ///
  /// A [radix] of 8 is octal.
  ///
  /// A [radix] of 10 is decimal (this should be the same as doing [double.toString] on [val]).
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
  ) {
    assert(resolution >= 0);
    assert(radix >= 2 && radix <= 36);
    String code = '';
    bool isNeg = val < 0;
    double invertedVal = val.abs();
    int holePart = invertedVal.floor();
    //double decimalPart = holePart - invertedVal;
    double calcPart = invertedVal * pow(radix, resolution);
    code = calcPart.floor().toRadixString(radix);
    /*while (calcPart != 0) {
      if (calcPart < radix) {
        code = '${digits[calcPart.floor()]}$code';
        calcPart = 0;
        break;
      }
      calcPart = calcPart / radix;
      double flooredCalc = calcPart.floorToDouble();
      int index = ((flooredCalc - calcPart) * radix).floor().abs();
      calcPart = flooredCalc;
      code = '${digits[index]}$code';
    }*/
    if (resolution > 0) {
      if (holePart != 0) {
        int dotIndex = holePart.toString().length;
        code = '${code.substring(0, dotIndex)}.${code.substring(dotIndex, code.length)}';
      } else {
        code = '0.$code';
      }
    }
    if (isNeg) code = '-$code';
    return BaseRadix(
      radix: radix,
      code: code.toUpperCase(),
      number: val,
    );
  }

  /// Parses [val] into a [BaseRadix].
  ///
  /// The [val] must be a non-empty sequence of base-[radix] digits.
  ///
  /// The [radix] must be in the range 2..36. The digits used are
  /// first the decimal digits 0..9, and then the letters 'A'..'Z' with
  /// values 10 through 35. Also accepts lower-case letters with the same
  /// values as the upper-case ones.
  ///
  /// The [resolution] is the number of allowed loops before it force ends calculations.
  static BaseRadix fromBase(
    String val,
    int radix,
    [
      int resolution=10000,
    ]
  ) {
    assert(resolution >= 0);
    assert(radix >= 2 && radix <= 36);
    val = val.toUpperCase();
    String code = val;
    double number = 0;
    bool isNeg = val.startsWith('-');
    if (isNeg) val.replaceFirst('-', '');
    int count = val.split('.')[0].length-1;
    for (int i=0; i<val.length; i++) {
      final char = val[i];
      if (char == '.') {
        continue;
      } else {
        int index = digits.indexOf(char);
        assert(index < radix);
        number += (index * (pow(radix, count)));
        count -= 1;
      }
      if (i == resolution) break;
    }
    if (count > 0) number = number * pow(10, count);
    if (isNeg) number = -number;
    return BaseRadix(
      radix: radix,
      code: code,
      number: number,
    );
  }
}
