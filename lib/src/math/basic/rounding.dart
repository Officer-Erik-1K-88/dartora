
import 'root.dart';

/// Defines the modes of rounding.
///
/// Rounding is defined by [RoundMode.round].
final class RoundMode {
  /// Builds a rounding mode.
  ///
  /// [toEven] and [toOdd] cannot both be true.
  ///
  /// While [toZero] and [awayFromZero] are both
  /// allowed to be true, there behavior (if both are `true`) is defined as
  /// [toZero] is use if the `toRound` value of
  /// [RoundMode.round] negative, while [awayFromZero] would be used if `toRound`
  /// if positive.
  const RoundMode({
    required this.roundAt,
    required this.reverse,
    required this.toEven,
    required this.toOdd,
    required this.toZero,
    required this.awayFromZero,
    required this.allowSubtract,
  }):
    assert(toEven? !toOdd : true),
    assert(roundAt >= 0 && roundAt <= 10)
  ;

  /// An integer between 0 and 10.
  ///
  /// Defines at what value to attempt rounding.
  ///
  /// If zero, then will always attempt rounding.
  ///
  /// If ten, then will never attempt rounding.
  final int roundAt;

  /// Whether to reverse the rounding behavior.
  ///
  /// Reversal of rounding behavior occurs after normal
  /// behavior has been calculated.
  ///
  /// The only thing that happens after reversal would be
  /// the check of [allowSubtract].
  final bool reverse;

  /// If true, then will attempt to round to the
  /// nearest even.
  final bool toEven;
  /// If true, then will attempt to round to the
  /// nearest odd.
  final bool toOdd;
  /// If true, then will attempt to round to 0.
  ///
  /// If [awayFromZero] is also `true`, then
  /// this value will only be used when
  /// `toRound` is negative in [RoundMode.round].
  final bool toZero;
  /// If true, then will attempt to round away from 0.
  ///
  /// If [toZero] is also `true`, then
  /// this value will only be used when
  /// `toRound` is positive in [RoundMode.round].
  final bool awayFromZero;
  /// If true, then will allow the return of [RoundMode.round]
  /// to be less than `toRound` when positive and allow it to be
  /// greater than `toRound` when negative.
  final bool allowSubtract;

  /// Compares [rounder] to the rounding settings
  /// to see whether [toRound] should be rounded
  /// and where it should be rounded to.
  ///
  /// Returns [toRound] after rounding.
  /// The return should equal [toRound] if no rounding occurred.
  ///
  /// [rounder] must be an integer between 0 and 9.
  ///
  /// When this method is calculating how to round:
  /// - Step 1: If [toEven] or [toOdd] is `true`
  ///   - If [toRound] is even and [toEven] is `true`
  /// or [toRound] is odd and [toOdd] is `true`,
  /// then `Step 2` is skipped. And rounding is `0`.
  /// - Step 2: If [toZero] and/or [awayFromZero] is `true`
  ///   - If [toZero] is `true` and [toRound] is negative
  /// or [awayFromZero] is `true` and [toRound] is positive,
  /// then rounding is `1`.
  ///   - If [awayFromZero] is `true` and [toRound] is negative
  /// or [toZero] is `true` and [toRound] is positive,
  /// then rounding is `-1`.
  /// - Step 3: If [reverse] is `true`
  ///   - If [toRound] is negative, rounding is zero, and [toZero]
  /// is `true` or [toRound] is positive and rounding is zero,
  /// then rounding is `1`.
  ///   - If [toRound] is negative, rounding is zero, and [toZero]
  /// is `false`, then rounding is `-1`.
  ///   - If [toRound] is positive, rounding is not zero, and [toZero]
  /// is `true`, then rounding is `0`.
  ///   - All other cases rounding is set to `-1` if previously `1` and
  /// set to `1` if previously `-1`.
  /// - Step 4: If [allowSubtract] is `false`
  ///   - If [toRound] is negative and rounding is positive,
  /// then rounding is `0`.
  ///   - If [toRound] is positive and rounding is negative,
  /// then rounding is `0`.
  /// - Step 5: End
  ///   - Applies rounding to [toRound].
  ///   - The application is rounding added to [toRound].
  ///   - The rounding value should be only of three values `-1`, `0`, and `1`.
  int round(int rounder, [int toRound=0]) {
    assert(rounder >= 0 && rounder <= 9);
    if (rounder >= roundAt) {
      int ret = 1;
      bool even = toRound.isEven;
      bool lessThanZero = toRound < 0;
      if ((even && toEven) || (toOdd && !even)) {
        ret = 0;
      } else {
        if (lessThanZero && toZero) {
          ret = 1;
        } else if (lessThanZero && awayFromZero) {
          ret = -1;
        } else if (awayFromZero) {
          ret = 1;
        } else if (toZero) {
          ret = -1;
        }
      }
      if (reverse) {
        if (lessThanZero) {
          ret = ret == 0? (toZero? 1 : -1) : -ret;
        } else {
          ret = ret == 0? 1 : (toZero? 0 : -ret);
        }
      }
      if (!allowSubtract) {
        if (lessThanZero) {
          if (ret > 0) ret = 0;
        } else if (ret < 0) {
          ret = 0;
        }
      }
      if (ret != 0) {
        return toRound+ret;
      }
    }
    return toRound;
  }

  /// Checks to see if the return of [RoundMode.round] (result)
  /// doesn't equal [toRound].
  ///
  /// If [compare] is true, then the method checks
  /// the status of result against [toRound]
  /// based on what [greater] is.
  /// If [greater] is true, then it checks if [toRound]
  /// is greater than result. While on the other hand,
  /// when false, the check is reversed to checking if
  /// [toRound] is less than result.
  bool roundCheck(int rounder, [int toRound=0, bool compare=false, bool greater=false]) {
    int result = round(rounder, toRound);
    if (compare) {
      if (greater) return toRound > result;
      return toRound < result;
    }
    return toRound != result;
  }

  /// Checks to see if the return of [RoundMode.round]
  /// is greater than [toRound].
  bool roundsUp(int rounder, toRound) {
    return roundCheck(rounder, toRound, true);
  }

  /// Checks to see if the return of [RoundMode.round]
  /// is less than [toRound].
  bool roundsDown(int rounder, int toRound) {
    return roundCheck(rounder, toRound, true, true);
  }

  // Predefined modes.

  /// The standard rounding method.
  ///
  /// Rounds way from zero when there is no closest number:
  /// - `2.5 -> 3`
  /// - `3.5 -> 4`
  /// - `-2.5 -> -3`
  /// - `-3.5 -> -4`
  static const RoundMode halfUp = RoundMode(
    roundAt: 5,
    reverse: false,
    toEven: false,
    toOdd: false,
    toZero: false,
    awayFromZero: false,
    allowSubtract: false,
  );

  /// The banker rounding method.
  ///
  /// Rounds way from zero when odd:
  /// - `2.5 -> 2`
  /// - `3.5 -> 4`
  /// - `-2.5 -> -2`
  /// - `-3.5 -> -4`
  static const RoundMode halfEven = RoundMode(
    roundAt: 5,
    reverse: false,
    toEven: true,
    toOdd: false,
    toZero: false,
    awayFromZero: false,
    allowSubtract: false,
  );

  /// The reverse banker rounding method.
  ///
  /// This is the reverse of [RoundMode.halfEven].
  ///
  /// Rounds way from zero when even:
  /// - `2.5 -> 3`
  /// - `3.5 -> 3`
  /// - `-2.5 -> -3`
  /// - `-3.5 -> -3`
  static const RoundMode halfOdd = RoundMode(
    roundAt: 5,
    reverse: false,
    toEven: false,
    toOdd: true,
    toZero: false,
    awayFromZero: false,
    allowSubtract: false,
  );

  /// Similar to the standard rounding method.
  ///
  /// Rounds way from zero when there is no closest number:
  /// - `2.5 -> 3`
  /// - `3.5 -> 4`
  /// - `-2.5 -> -3`
  /// - `-3.5 -> -4`
  static const RoundMode halfAwayFrom = RoundMode(
    roundAt: 5,
    reverse: false,
    toEven: false,
    toOdd: false,
    toZero: false,
    awayFromZero: true,
    allowSubtract: false,
  );

  /// The reverse of [RoundMode.halfAwayFrom].
  ///
  /// Rounds to zero when there is no closest number:
  /// - `2.7 -> 3`
  /// - `3.5 -> 3`
  /// - `-2.5 -> -2`
  /// - `-3.7 -> -4`
  static const RoundMode halfToZero = RoundMode(
    roundAt: 5,
    reverse: false,
    toEven: false,
    toOdd: false,
    toZero: true,
    awayFromZero: false,
    allowSubtract: false,
  );

  /// The ceil rounding method.
  ///
  /// Always rounds away from zero:
  /// - `2.3 -> 3`
  /// - `3.5 -> 4`
  /// - `-2.5 -> -3`
  /// - `-3.3 -> -4`
  static const RoundMode awayFrom = RoundMode(
    roundAt: 1,
    reverse: false,
    toEven: false,
    toOdd: false,
    toZero: false,
    awayFromZero: true,
    allowSubtract: false,
  );

  /// The floor rounding method.
  ///
  /// Always rounds to zero:
  /// - `2.7 -> 2`
  /// - `3.5 -> 3`
  /// - `-2.5 -> -2`
  /// - `-3.7 -> -3`
  static const RoundMode alwaysToZero = RoundMode(
    roundAt: 10,
    reverse: false,
    toEven: false,
    toOdd: false,
    toZero: true,
    awayFromZero: false,
    allowSubtract: false,
  );
}

String _removeLast(
  String value,
  {
    String Function(String last)? modifyLast,
  }
) {
  String last = value[value.length-1];

  String afterRemove = value.substring(0, value.length-1);

  if (modifyLast != null) return afterRemove + modifyLast(last);

  return afterRemove;
}


/// Returns the number closest to [value].
///
/// The way rounding works is defined by the [RoundMode]
/// set as [mode]. The default is [RoundMode.halfUp].
///
/// Throws an [UnsupportedError] if [value] is not finite
/// (NaN or an infinity).
double round(
  final double value,
  {
    final int decimals = 6,
    final RoundMode mode = RoundMode.halfUp,
  }
) {
  if (value.isNaN || value.isInfinite) throw UnsupportedError('Cannot round some number that is infinite or is not a number.');
  String valP1;
  String valP2;
  // Calculate valP1 and valP2
  String stringVal = value.toString();
  int end = stringVal.length;
  if (decimals >= 0) {
    if (!stringVal.contains('.')) return value;
    end = (stringVal.split('.')[0].length + 1) + (decimals + 1);
    stringVal = stringVal.padRight(end, '0');
  } else {
    stringVal = stringVal.split('.')[0];
    end = stringVal.length + (decimals + 1);
  }
  if (end < 0) throw StateError('Decimals must no smaller than the -value.floor().toString().length');
  valP1 = stringVal.substring(0, end);
  valP2 = '0' * (decimals<0? decimals.abs() : 0);

  // Get digit for calculating wether to round up or down.
  int lastDigit = int.parse(valP1[valP1.length-1]);

  // remove calculation digit, as it's beyond length defined by decimals.
  valP1 = _removeLast(valP1);

  // Calculate rounding
  int toRound = int.parse(valP1[valP1.length-1]);

  int rounded = mode.round(lastDigit, value.isNegative? -toRound: toRound);

  // Apply rounding
  if (rounded != 10 || rounded != -10) {
    valP1 = _removeLast(
      valP1,
      modifyLast: (last) {
        return rounded.abs().toString();
      }
    );
  } else {
    int one = rounded < 0? -1 : 1;
    if (valP1.contains('.')) {
      valP1 = (double.parse(valP1) + ( one / pow(10, valP1.split('.')[1].length) )).toString();
    } else {
      valP1 = (int.parse(valP1) + one).toString();
    }
  }

  // Combine valP1 and valP2 and parse as double.
  return double.parse(valP1 + valP2);
}
