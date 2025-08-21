# _logCalc

Does the calculations needed to calculate a logarithm.

This function gets the natural logarithm of [x]
and divides it by the [denominator].
However, if [calcD] is true,
then we get the natural logarithm of [denominator]
and then divide [x] by that.

Returns negative infinity if [x] is equal to zero or [denominator] is negative infinity or zero.
Returns NaN if [x] is NaN or less than zero, or [denominator] is NaN.
Given that [calcD] is true then if [denominator] is zero, then NaN is returned.

_Defined in: `src/math/basic/log.dart`_

_Import_: `package:dartora/math/basic/log.dart`


---


### Signature

```dart
double _logCalc(num x, [num denominator=1, bool calcD=false]) {
```
