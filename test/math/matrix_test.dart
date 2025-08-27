import 'package:test/test.dart';
import 'package:dartora/math.dart';

void main() {
  group('Matrix', () {
    final matrix = Matrix([
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9],
    ]);

    test('rowEchelon', () {
      final rowEchelon = matrix.rowEchelon;
      expect(rowEchelon, wrapMatcher(Matrix([
        [1, 2, 3],
        [0, -3, -6],
        [0, 0, 0],
      ])));
    });

    test('reducedRowEchelon', () {
      final reducedRowEchelon = matrix.reducedRowEchelon;
      expect(reducedRowEchelon, wrapMatcher(Matrix([
        [1, 0, -1],
        [0, 1, 2],
        [0, 0, 0],
      ])));
    });

    
  });
}