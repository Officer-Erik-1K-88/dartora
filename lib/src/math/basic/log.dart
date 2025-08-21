import 'dart:math' as math;

import '../constants.dart';

// Functions

/// Converts [x] to a [double] and returns the natural exponent, [e],
/// to the power [x].
///
/// Returns NaN if [x] is NaN.
double exp(num x) => math.exp(x);

/// Does the calculations needed to calculate a logarithm.
///
/// This function gets the natural logarithm of [x]
/// and divides it by the [denominator].
/// However, if [calcD] is true,
/// then we get the natural logarithm of [denominator]
/// and then divide [x] by that.
///
/// Returns negative infinity if [x] is equal to zero or [denominator] is negative infinity or zero.
/// Returns NaN if [x] is NaN or less than zero, or [denominator] is NaN.
/// Given that [calcD] is true then if [denominator] is zero, then NaN is returned.
double _logCalc(num x, [num denominator=1, bool calcD=false]) {
  if (
    x == 0 ||
    denominator == 0 ||
    denominator == double.negativeInfinity
  ) {
    return double.negativeInfinity;
  }
  if (
    x.isNaN ||
    x < 0 ||
    denominator.isNaN ||
    (calcD && denominator < 0)
  ) {
    return double.nan;
  }
  double lnX = math.log(x);
  if (calcD) {
    double lnD = math.log(denominator);
    return lnX / lnD;
  }
  return lnX / denominator;
}

/// Renaming of dart's `log` function to it's more accurate mathematical
/// name of `ln`.
///
/// Converts [x] to a [double] and returns the natural logarithm of the value.
///
/// Returns negative infinity if [x] is equal to zero. Returns NaN if [x] is NaN or less than zero.
double ln(num x) {
  if (x == 10) return math.ln10;
  if (x == 2) return math.ln2;
  return _logCalc(x);
}

/// Unlike dart's `log` function this one
/// converts [x] to a [double] and returns the `common logarithm` of the value.
///
/// Returns negative infinity if [x] is equal to zero. Returns NaN if [x] is NaN or less than zero.
double log(num x) {
  if (x == e) return math.log10e;
  return _logCalc(x, math.ln10);
}

/// Converts [x] to a [double] and returns the base-2 logarithm of the value.
///
/// Returns negative infinity if [x] is equal to zero. Returns NaN if [x] is NaN or less than zero.
double log2(num x) {
  if (x == e) return math.log2e;
  return _logCalc(x, math.ln2);
}

/// Converts [x] to a [double] and returns the natural logarithm of the value.
///
/// If [x] or [base] is zero then negative infinity is returned.
/// And if [x] or [base] is NaN or less than zero then NaN is returned.
double logB(num base, num x) {
  if (base == 10) return log(x);
  if (base == 2) return log2(x);
  if (base == e) return ln(x);
  return _logCalc(x, base, true);
}