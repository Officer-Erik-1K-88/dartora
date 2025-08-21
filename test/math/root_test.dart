import 'package:test/test.dart';
import 'package:dartora/math.dart';

void main() {
  group('root & pow', () {
    test('pow integers', () {
      expect(pow(2, 10), equals(1024));
      expect(pow(10, 0), equals(1));
    });

    test('sqrt', () {
      expect(sqrt(0), equals(0));
      expect(sqrt(4), equals(2));
      expect(sqrt(9), equals(3));
    });

    test('nthRoot', () {
      expect(nthRoot(3, 27), closeTo(3, 1e-12));
      expect(nthRoot(4, 16), closeTo(2, 1e-12));
    });
  });
}
