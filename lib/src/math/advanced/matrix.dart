
import '../../collections/iteration.dart';
import '../../collections/iterators.dart';
import '../basic/comparison.dart';
import '../basic/root.dart';

class Matrix extends Iteration<num> {
  final List<List<num>> _matrix;

  /// The number of rows in the matrix.
  int get rowCount => _matrix.length;

  /// The number of columns in the matrix.
  int get columnCount => rowCount!=0 ? _matrix[0].length : 0;

  @override
  int get sourceLength => rowCount * columnCount;

  @override
  final int startIndex = 0;
  @override
  final int indexTake = 0;
  
  @override
  Iterator<num> get sourceIterator => HolderIterator(holder: _matrix);

  Matrix._(this._matrix);

  /// Builds a [Matrix] where [matrix]
  /// is used as the list of rows.
  factory Matrix(List<List<num>> matrix) {
    int? columnCount;
    for (var matrixRow in matrix) {
      columnCount ??= matrixRow.length;
      assert(columnCount == matrixRow.length);
    }
    assert(columnCount != null);

    return Matrix._(matrix);
  }

  /// Builds an empty [Matrix].
  Matrix.empty(): _matrix=[];

  @override
  num sourceGet(int sourceIndex) {
    int actualIndex = sourceIndex;
    for (var row in _matrix) {
      if (actualIndex >= row.length) {
        actualIndex -= row.length;
        continue;
      }
      return row[actualIndex];
    }
    throw IndexError.withLength(sourceIndex, length);
  }

  /// Gets the [num] that is at the coordinates
  /// of [row] and [column].
  num get(int row, int column) {
    return _matrix[row][column];
  }

  /// Adds this [Matrix] and another [Matrix] together
  /// and returns the sum [Matrix].
  Matrix operator +(Matrix other) {
    assert(rowCount == other.rowCount);
    assert(columnCount == other.columnCount);
    List<List<num>> matrix = [];
    for (int i=0; i<rowCount; i++) {
      matrix.add([]);
      for (int j=0; j<columnCount; j++) {
        matrix[length-1].add(get(i, j) + other.get(i, j));
      }
    }
    return Matrix(matrix);
  }

  /// Subtracts a [Matrix] from this [Matrix]
  /// and returns the difference [Matrix].
  Matrix operator -(Matrix other) {
    assert(rowCount == other.rowCount);
    assert(columnCount == other.columnCount);
    List<List<num>> matrix = [];
    for (int i=0; i<rowCount; i++) {
      matrix.add([]);
      for (int j=0; j<columnCount; j++) {
        matrix[length-1].add(get(i, j) - other.get(i, j));
      }
    }
    return Matrix(matrix);
  }

  /// Returns a new [Matrix] where
  /// the signs of all [num]s in this [Matrix]
  /// have been flipped.
  Matrix operator -() {
    List<List<num>> matrix = [];
    for (int i=0; i<rowCount; i++) {
      matrix.add([]);
      for (int j=0; j<columnCount; j++) {
        matrix[length-1].add(-get(i, j));
      }
    }
    return Matrix(matrix);
  }

  /// Multiplies this [Matrix] with some other [num]
  /// or [Matrix].
  Matrix operator *(dynamic other) {
    if (other is Matrix) {
      assert(columnCount == other.rowCount);
      List<List<num>> newMatrix = [];
      for (int i=0; i<rowCount; i++) {
        List<num> row = [];
        for (int j=0; i<other.columnCount; j++) {
          num cell = 0;
          for (int i2=0; i<columnCount; i2++) {
            cell += get(i, i2) * other.get(i2, j);
          }
          row.add(cell);
        }
        newMatrix.add(row);
      }
      return Matrix(newMatrix);
    }
    assert(other is num);
    List<List<num>> matrix = [];
    for (int i=0; i<rowCount; i++) {
      matrix.add([]);
      for (int j=0; j<columnCount; j++) {
        matrix[length-1].add(get(i, j) * other);
      }
    }
    return Matrix(matrix);
  }

  /// Multiplies this [Matrix] to itself [exponent]
  /// amount of times.
  Matrix power(int exponent) {
    if (exponent > 1) {
      assert(columnCount == rowCount);
      // TODO: Optimize this for when exponent is large.
      Matrix answer = this;
      for (int i=1; i<exponent; i++) {
        answer *= this;
      }
      return answer;
    } else if (exponent == 1) {
      return this;
    } else if (exponent == 0) {
      return identity;
    } else if (exponent == -1) {
      return inverse;
    }
    return inverse.power(exponent.abs());
  }

  /// Multiplies this [Matrix] to the inverse of
  /// another [Matrix].
  ///
  /// Or divides each [num] in this matrix by [other].
  Matrix operator /(dynamic other) {
    if (other is Matrix) {
      return this * other.inverse;
    }
    assert(other is num);
    assert(!(other as num).isNaN);
    List<List<num>> matrix = [];
    for (int i=0; i<rowCount; i++) {
      matrix.add([]);
      for (int j=0; j<columnCount; j++) {
        matrix[length-1].add(get(i, j) / other);
      }
    }
    return Matrix(matrix);
  }

  /// Helper function that helps build the [determinant].
  num _calculateDet(int row, int column) {
    List<List<num>> newMatrix = [];
    for (int j=0; j<rowCount; j++) {
      if (j == row) continue;
      List<num> rowL = [];
      for (int i2=0; i2<columnCount; i2++) {
        if (i2 == column) continue;
        rowL.add(get(j, i2));
      }
      newMatrix.add(rowL);
    }
    return Matrix(
      newMatrix
    ).determinant
    ;
  }

  double? _determinant;

  /// Gets the determinant of this [Matrix].
  double get determinant {
    if (_determinant != null) {
      if (rowCount != columnCount) throw StateError('Cannot compute determinant of non-square Matrix.');
      if (rowCount == 2 && columnCount == 2) {
        num ad = _matrix[0][0] * _matrix[1][1];
        num bc = _matrix[0][1] * _matrix[1][0];
        _determinant = numberCast<double>(ad - bc);
      } else {
        _determinant = 0;
        bool add = true;
        for (int i=0; i<columnCount; i++) {
          num cell = get(0, i);
          if (cell != 0) {
            num n = cell * _calculateDet(0, i);
            _determinant = _determinant! + (add? n : -n);
          }
          add = !add;
        }
      }
    }
    return _determinant!;
  }

  /// Helper function to build the [num]
  /// that is to replace each item in this [Matrix]
  /// when calculating [cofactor].
  num _cfact(int row, int column) {
    num p1 = pow(-1, (row+1)+(column+1));
    num p2 = rowCount == 2? get(row, column) : _calculateDet(row, column);
    return p1 * p2;
  }

  Matrix? _cofactor;

  /// Gets the cofactor of this [Matrix].
  Matrix get cofactor {
    if (_cofactor == null) {
      if (rowCount != columnCount) throw StateError('Cannot compute cofactor of non-square Matrix.');
      List<List<num>> newMatrix = [];
      for (int i=0; i<columnCount; i++) {
        List<num> row = [];
        for (int j=0; j<rowCount; j++) {
          row.add(_cfact(j, i));
        }
        newMatrix.add(row);
      }
      _cofactor = Matrix(newMatrix);
    }
    return _cofactor!;
  }

  /// gets the [Matrix.transpose]
  /// of [cofactor].
  Matrix get adjoint => cofactor.transpose;

  Matrix? _inverse;

  /// Gets the inverse of this [Matrix].
  ///
  /// The inverse is defined as this [Matrix]
  /// to the [power] of `-1`.
  Matrix get inverse {
    if (_inverse == null) {
      if (rowCount != columnCount) throw StateError('Cannot compute inverse of non-square Matrix.');
      Matrix flip = Matrix.empty();
      if (rowCount == 2 && columnCount == 2) {
        flip = Matrix([
          [_matrix[1][1], -_matrix[0][1]],
          [-_matrix[1][0], _matrix[0][0]]
        ]);
      } else {
        flip = adjoint;
      }

      _inverse = flip / determinant;
    }
    return _inverse!;
  }

  Matrix? _transposed;

  /// Gets the [Matrix] where
  /// the columns of this [Matrix] are the rows.
  Matrix get transpose {
    if (_transposed == null) {
      List<List<num>> newMatrix = [];
      for (int i=0; i<columnCount; i++) {
        List<num> row = [];
        for (int j=0; j<rowCount; j++) {
          row.add(get(j, i));
        }
        newMatrix.add(row);
      }
      _transposed = Matrix(newMatrix);
    }
    return _transposed!;
  }

  Matrix? _identity;

  /// Gets the identity [Matrix] of this [Matrix].
  Matrix get identity {
    if (_identity == null) {
      List<List<num>> newMatrix = [];
      for (int i=0; i<columnCount; i++) {
        List<num> row = [];
        for (int j=0; j<rowCount; j++) {
          if (i == j) {
            row.add(1);
          } else {
            row.add(0);
          }
        }
        newMatrix.add(row);
      }
      _identity = Matrix(newMatrix);
    }
    return _identity!;
  }

  Matrix? _rowEchelon;

  /// Gets the row echelon of this [Matrix].
  Matrix get rowEchelon {
    // TODO: Make computation actually work correctly.
    if (_rowEchelon == null) {
      List<List<num>> newMatrix = [_matrix[0]];
      for (int i=1; i<rowCount; i++) {
        List<num> row = [];
        for (int j=0; j<columnCount; j++) {
          row.add(get(i, j) - ((get(i, (i-1)) / (i-1)) * get(i-1, j)));
        }
        newMatrix.add(row);
      }
      _rowEchelon = Matrix(newMatrix);
    }
    return _rowEchelon!;
  }
}
