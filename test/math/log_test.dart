import 'package:test/test.dart';
import 'package:dartora/math.dart';

void main() {
  group('log family', () {
    test('ln/e relationships', () {
      expect(ln(e), closeTo(1.0, 1e-12));
      expect(exp(1), closeTo(e, 1e-12));
    });

    test('log base 10', () {
      expect(log(1), equals(0));
      expect(log(10), closeTo(1, 1e-12));
      expect(log(100), closeTo(2, 1e-12));
    });

    test('log2 base 2', () {
      expect(log2(1), equals(0));
      expect(log2(2), closeTo(1, 1e-12));
      expect(log2(8), closeTo(3, 1e-12));
    });

    test('logB arbitrary base', () {
      expect(logB(5, 25), closeTo(2, 1e-12));
      expect(logB(3, 27), closeTo(3, 1e-12));
    });
  });
}
