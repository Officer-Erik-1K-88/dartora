import 'package:test/test.dart';
import 'package:dartora/math.dart';

void main() {
  group('RoundMode', () {
    test('halfEven at .5', () {
      // 2.5 -> 2, 3.5 -> 4
      expect(RoundMode.halfEven.round(5, 2), equals(2));
      expect(RoundMode.halfEven.round(5, 3), equals(4));
    });

    test('halfAwayFrom at .5', () {
      expect(RoundMode.halfAwayFrom.round(5, 2), equals(3));
      expect(RoundMode.halfAwayFrom.round(5, -2), equals(-3));
    });

    test('halfToZero at .5', () {
      expect(RoundMode.halfToZero.round(5, 2), equals(2));
      expect(RoundMode.halfToZero.round(5, -2), equals(-2));
    });

    test('awayFrom (ceil-like for any fraction)', () {
      // Any fractional digit (rounder >= 1) rounds away from zero
      expect(RoundMode.awayFrom.round(1, 2), equals(3));   // 2.x -> 3
      expect(RoundMode.awayFrom.round(9, -2), equals(-3)); // -2.x -> -3
    });

    test('alwaysToZero (floor-to-zero)', () {
      // Never bumps the integer (roundAt=10), effectively truncation
      expect(RoundMode.alwaysToZero.round(1, 2), equals(2));
      expect(RoundMode.alwaysToZero.round(9, -2), equals(-2));
    });
  });
}
