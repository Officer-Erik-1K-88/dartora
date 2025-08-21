import 'package:test/test.dart';
import 'package:dartora/math.dart' as dmath;

void main() {
  group('castToNum', () {
    test('casts primitives and strings', () {
      expect(dmath.numberCast(5), equals(5));
      expect(dmath.numberCast(true), equals(1));
      expect(dmath.numberCast(false), equals(0));
      expect(dmath.numberCast('42'), equals(42));
      expect(dmath.numberCast(''), equals(0));
    });

    test('string fallback average of code units', () {
      final n = dmath.numberCast('ab');
      // 'a' = 97, 'b' = 98 => average = (97 + 98) / 2 = 97.5
      expect(n, closeTo(97.5, 1e-12));
    });
  });
}
