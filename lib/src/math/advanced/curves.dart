
import '../basic/log.dart';
import '../basic/root.dart';
import '../constants.dart';

/// Takes [input] and gives back an integer increment.
///
/// The increment is based on the following:
///
/// - [speed]: Manages the speed at which step will increment.
/// A [speed] of zero or less would result in an error.
/// The higher [speed] is, the faster step will increase as [input] gets larger.
/// - [length]: Like [speed], [length] manages the speed of step increment.
/// However, [length] works in the opposite direction as [speed].
/// A higher [length] would mean the larger [input] must be to increment in step.
/// A [length] of zero would cause the step to be calculated only by `floor(input / factor)`.
/// A [length] that is less than zero will cause a weird spike at a low [input] and
/// drop back down to a some what lower number at a higher [input].
/// - [factor]: This is the curve height. It defines the amount
/// of input that needs to be there for an increase in the step.
int stepwiseGrowth(
  num input,
  {
    double speed=4.0,
    double length=4.0,
    double factor=0.5,
  }
) {
  assert(speed > 0);
  double l = log2(input);// The log base 2 of input, this is the base curve. As the base curve, given that the modifiers are at their default settings and input is greater than or equal to one, rounding this number to the nearest integer should give the same number as the calculated step.
  double s = l==0? 1 : (
    (input - 1) / // subtracts one so that the step usually increases as input increases.
    (l * speed)
  ); // generates the speed curve.
  double z = length * s + factor; // generate the calculation curve
  int q = (input / z // input needs to be minified to an incremental step system so that the steps don't get insanely large.
  ).floor(); // floors the step for integer returns.
  return q >= 0? q : -q; // ensure step is always positive.
}

double _f(double m, double c) {
  return ln(
    1 + pow(c/m, 1.5)
  );
}

List<double> _getAB(List<List<double>> mckLists) {
    double a = 0;
    double b = 0;

    List<double> answerMatrix = [];
    List<List<double>> coefficientMatrix = [];
    for (var mck in mckLists) {
      double m = mck[0];
      double c = mck[1];
      double k = mck[2];
      double p1 = _f(m, c);
      double lnC = ln(c);
      coefficientMatrix.add([
        (lnC * p1), (c * p1)
      ]);
      answerMatrix.add(k);
    }

    double coefficientInverse = 0;

    return [a,b];
  }

double sigmoidCurve(
  num input,
  {
    double centerX = 1,
    double centerY = 0.8,
    double zeroY = 0.02,
  }
) {
  
  double g(double c) {
    return (
      5.03658576654 * ln(c)
    ) + (
      15.0242196149 * c
    );
  }
  double k = _f(centerX, centerY) * g(centerY);
  double s(num x) {
    return k * (x - centerY);
  }
  double z(num x) {
    return centerX / (centerX + pow(e, -s(x)));
  }
  double q = ln(zeroY) / ln(z(0));
  return pow(z(input), q) as double;
}