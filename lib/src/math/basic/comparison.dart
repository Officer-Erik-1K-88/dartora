import 'dart:math' as math;

import '../advanced/base_radix.dart';
import '../advanced/points.dart';

/// Cast [obj] to a numeric type.
///
/// Conversions:
/// - [num]: Converts using it's own built in systems.
/// - `null`: return `0`.
/// - [bool]:
///   - `false` returns `0`.
///   - `true` returns `1`.
/// - [String]:
///   - Firstly, attempts conversion to [double],
/// if fails, then will continue on.
///   - If it's length is zero then will return `0`.
///   - If length isn't zero, then will add up all char codes
/// and divide it by the length of the string.
/// - [BaseRadix]: Returns [BaseRadix.number].
/// - [Points]: Returns [Points.total].
/// - Other:
///   - Firstly, will check [obj] for a `toDouble()` or `toInt()`
/// functions.
///   - If they don't exist, then will take [obj]`s
/// string representation and call [numberCast] on it
/// for the return.
///
/// If [obj] is failed to be converted to a numeric value,
/// then an [ArgumentError] is thrown.
T numberCast<T extends num>(dynamic obj) {
  // If obj is already the same type as T, then just return it.
  if (obj is T) return obj;

  // Convert obj to a numeric value.
  num? n;
  if (obj is num) {
    n = obj;
  } else if (obj == null || obj == false) {
    n = 0;
  } else if (obj == true) {
    n = 1;
  } else if (obj is Points) {
    n = obj.total;
  } else if (obj is BaseRadix) {
    n = obj.number;
  } else if (obj is String) {
    n = double.tryParse(obj);
    if (n == null) {
      if (obj.isEmpty) {
        n = 0;
      } else {
        n = obj.codeUnits.reduce((a, b) => a+b) / obj.length;
      }
    }
  }

  // Check to see if obj was able to be turned into a numeric,
  // if it wasn't then check for toDouble() and toInt() functions,
  // if not present then use obj's string representation.
  if (n == null) {
    try {
      n = obj.toDouble();
    } on NoSuchMethodError {
      try {
        n = obj.toInt();
      } on NoSuchMethodError {
        return numberCast<T>(obj.toString());
      }
    }
    // If n is some how null, then throw argument error.
    if (n == null) throw ArgumentError.value(obj, 'obj', 'Cannot convert to numeric value');
  }

  // ensure that n is the correct numeric type.
  if (T == int) return n.toInt() as T;
  if (T == double) return n.toDouble() as T;

  // Falls to here only because T isn't a known extention of num
  // or is num itself.
  return n as T;
}

/// Returns the lesser of two numbers.
///
/// Returns NaN if either argument is NaN.
/// The lesser of `-0.0` and `0.0` is `-0.0`.
/// If the arguments are otherwise equal (including int and doubles with the
/// same mathematical value) then it is unspecified which of the two arguments
/// is returned.
T min<T extends num>(T a, T b) => math.min<T>(a, b);

/// Returns the larger of two numbers.
///
/// Returns NaN if either argument is NaN.
/// The larger of `-0.0` and `0.0` is `0.0`. If the arguments are
/// otherwise equal (including int and doubles with the same mathematical value)
/// then it is unspecified which of the two arguments is returned.
T max<T extends num>(T a, T b) => math.max<T>(a, b);