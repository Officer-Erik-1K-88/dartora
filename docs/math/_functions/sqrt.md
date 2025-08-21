# sqrt

Converts [x] to a [double] and returns the positive square root of the
value.

Returns -0.0 if [x] is -0.0, and NaN if [x] is otherwise negative or NaN.
```dart
var result = sqrt(9.3);
print(result); // 3.0495901363953815
result = sqrt(2);
print(result); // 1.4142135623730951
result = sqrt(0);
print(result); // 0.0
result = sqrt(-2.2);
print(result); // NaN
```

_Defined in: `src/math/basic/root.dart`_

_Import_: `package:dartora/math/basic/root.dart`

---

### Signature

```dart
double sqrt(num x) {
```
