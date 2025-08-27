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
      expect(matrix.rowEchelon, wrapMatcher(Matrix([
        [1, 2, 3],
        [0, -3, -6],
        [0, 0, 0],
      ])));
    });

    test('reducedRowEchelon', () {
      expect(matrix.reducedRowEchelon, wrapMatcher(Matrix([
        [1, 0, -1],
        [0, 1, 2],
        [0, 0, 0],
      ])));
    });

    test('identity', () {
      expect(matrix.identity, wrapMatcher(Matrix([
        [1, 0, 0],
        [0, 1, 0],
        [0, 0, 1],
      ])));
    });

    test('rank', () {
      expect(matrix.rank, equals(2));
    });

    test('determinant', () {
      expect(matrix.determinant, equals(0));
    });
  });
}