
import '../../collections/iteration.dart';
import '../../collections/iterators.dart';
import '../basic/comparison.dart';
import '../basic/root.dart';

class Matrix extends Iteration<num> {
  static final Map<int, Matrix> _identities = {};

  /// Gets the identity matrix where the
  /// given matrix has a row and column count of [count].
  ///
  /// # What is an Identity Matrix?
  ///
  /// {@macro math.matrix.identity}
  static Matrix getIdentity(int count) {
    return _identities.putIfAbsent(count, () {
      List<List<num>> newMatrix = [];
      for (int i=0; i<count; i++) {
        List<num> row = [];
        for (int j=0; j<count; j++) {
          if (i == j) {
            row.add(1);
          } else {
            row.add(0);
          }
        }
        newMatrix.add(row);
      }
      return Matrix(newMatrix);
    });
  }

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

  /// Builds a [Matrix] where [matrix]
  /// is used as the list of rows.
  Matrix(List<List<num>> matrix): this.check(matrix.length, matrix[0].length, matrix);

  /// Builds a [Matrix] where [matrix]
  /// is used as the list of rows.
  ///
  /// The constructor validates that [matrix]
  /// has a length of [rows] and each row has
  /// a length of [cols].
  Matrix.check(int rows, int cols, List<List<num>> matrix):
    assert(rows > 0, 'There must be at least one row in a Matrix.'),
    assert(cols > 0, 'There must be at least one column in a Matrix.'),
    assert(matrix.length == rows),
    assert(matrix.every((r) => r.length == cols)),
    _matrix = matrix
  ;

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

  /// Helper function that defines how
  /// math operations are preformed.
  ///
  /// Configurations of [add] and [multiply]:
  /// - If [add] and not [multiply] then
  /// normal addition.
  /// - If [add] and [multiply] then
  /// normal multiplication.
  /// - If not [add] and not [multiply] then
  /// normal subtraction.
  /// - If not [add] and [multiply] then
  /// multiplication of inverse.
  ///
  /// If [otherFirst] then [other]
  /// will be in front of the operator.
  Matrix _mathOperation({
    required bool add,
    required bool multiply,
    required dynamic other,
    required bool otherFirst,
  }) {
    Matrix first;
    Matrix second;

    num Function(int, int)? compute;

    if (other is Matrix) {
      first = otherFirst? other : this;
      second = otherFirst? this : other;

      if (!multiply) {
        assert(rowCount == other.rowCount);
        assert(columnCount == other.columnCount);
        if (add) {
          compute = (i, j) { // addition cell computation
            return first.get(i, j) + second.get(i, j);
          };
        } else {
          compute = (i, j) { // subtraction cell computation
            return first.get(i, j) - second.get(i, j);
          };
        }
      } else {
        assert(columnCount == other.rowCount);
        if (!add) { // if division, then fix bottom matrix to it's inverse
          second = second.inverse;
        }
        compute = (i, j) { // multiplication cell computation
          num cell = 0;
          for (int i2=0; i<first.columnCount; i2++) {
            cell += first.get(i, i2) * second.get(i2, j);
          }
          return cell;
        };
      }
    } else {
      assert(other is num);
      assert(!(other as num).isNaN);
      first = this;

      if (multiply) {
        if (!add) {
          if (otherFirst) { // if division and other is first, then other is multiplied to the inverse of self.
            first = first.inverse;
          } else { // if division and not other is first, then divide each cell by other.
            compute = (i, j) { // division cell computation
              return first.get(i, j) / other;
            };
          }
        }
        compute ??= (i, j) { // multiplication cell computation
          return first.get(i, j) * other;
        };
      } else {
        if (add) {
          compute = (i, j) { // addition cell computation
            if (otherFirst) return other + first.get(i, j);
            return first.get(i, j) + other;
          };
        } else {
          compute = (i, j) { // subtraction cell computation
            if (otherFirst) return other - first.get(i, j);
            return first.get(i, j) - other;
          };
        }
      }
      
      second = first;
    }
    
    List<List<num>> newMatrix = [];

    // Loop through this and other and compute each cell
    for (int i=0; i<first.rowCount; i++) {
      List<num> row = [];
      for (int j=0; j<second.columnCount; j++) {
        row.add(compute(i, j));
      }
      newMatrix.add(row);
    }


    return Matrix(newMatrix);
  }

  /// Adds this [Matrix] and another [Matrix] together
  /// and returns the sum [Matrix].
  Matrix operator +(Matrix other) {
    return _mathOperation(add: true, multiply: false, other: other, otherFirst: false);
  }

  /// Subtracts a [Matrix] from this [Matrix]
  /// and returns the difference [Matrix].
  Matrix operator -(Matrix other) {
    return _mathOperation(add: false, multiply: false, other: other, otherFirst: false);
  }

  /// Returns a new [Matrix] where
  /// the signs of all [num]s in this [Matrix]
  /// have been flipped.
  Matrix operator -() {
    return _mathOperation(add: false, multiply: false, other: 0, otherFirst: true);
  }

  /// Multiplies this [Matrix] with some other [num]
  /// or [Matrix].
  Matrix operator *(dynamic other) {
    return _mathOperation(add: true, multiply: true, other: other, otherFirst: false);
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
  ///
  /// In terms of division, matrices can't divided.
  /// However, it is faked by use of multiplication.
  Matrix operator /(dynamic other) {
    return _mathOperation(add: false, multiply: true, other: other, otherFirst: false);
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
  ///
  /// {@template math.matrix.determinant}
  /// For a matrix to have a determinant
  /// it must be square (same number of rows and columns).
  ///
  /// The determinant helps us find the inverse of a matrix,
  /// tells us things about the matrix that are useful in systems of linear equations,
  /// calculus and more.
  /// {@endtemplate}
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
  ///
  /// {@template math.matrix.inverse}
  /// For a matrix to have an inverse
  /// it must be square (same number of rows and columns).
  /// Also the [determinant] cannot be zero (or we end up dividing by zero).
  ///
  /// The inverse exists because there is no concept of dividing by a matrix.
  /// But we can **multiply by an inverse**, which achieves the same thing.
  /// {@endtemplate}
  Matrix get inverse {
    if (_inverse == null) {
      if (rowCount != columnCount) throw StateError('Cannot compute inverse of non-square Matrix.');
      if (determinant == 0) throw StateError('Cannot compute inverse of a Matrix with a determinant of zero.');
      Matrix flip = Matrix.empty();
      if (rowCount == 2 && columnCount == 2) {
        flip = Matrix([
          [get(1, 1), -get(0, 1)],
          [-get(1, 0), get(0, 0)]
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
  /// the columns of this [Matrix] are the rows
  /// of the returned [Matrix].
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
  ///
  /// {@template math.matrix.identity}
  /// The identity [Matrix] is equivalent to the
  /// number "1".
  ///
  /// - It is "square" (has same number of rows as columns).
  /// - It has **1**s on the diagonal and **0**s everywhere else.
  /// - Its symbol is the capital letter **I**.
  /// {@endtemplate}
  Matrix get identity {
    if (_identity == null) {
      if (rowCount != columnCount) throw StateError('Cannot compute identity of non-square Matrix.');
      _identity = getIdentity(rowCount);
    }
    return _identity!;
  }

  /// A helper function to help construct any type
  /// of row echelon.
  Matrix _rowEchelonBuild({
    bool reduced = false,
    bool pivoting = false,
    double eps = 1e-12,
  }) {
    if (rowCount == 0 || columnCount == 0) return Matrix.empty();

    // Work on a mutable copy
    final m = copyData();

    int r = 0;    // pivot row
    int lead = 0; // pivot column

    while (r < rowCount && lead < columnCount) {
      // --- choose pivot row
      int pivRow = reduced? -1 : r;

      final int iStart = r + (reduced? 0 : 1);
      if (pivoting) {
        // full partial pivoting in this column
        num best = m[pivRow][lead].abs();
        for (int i = iStart; i < rowCount; i++) {
          final v = m[i][lead].abs();
          if (v > best) { best = v; pivRow = i; }
        }
      } else {
        // order-preserving: only swap if current pivot is ~0
        if (reduced || m[pivRow][lead].abs() <= eps) {
          for (int i = iStart; i < rowCount; i++) {
            if (m[i][lead].abs() > eps) { pivRow = i; break; }
          }
        }
      }
      
      // If no pivot found in this column,
      // or if the column is (numerically) zero (from r downward),
      // move to next column
      if (pivRow == -1 || m[pivRow][lead].abs() <= eps) {
        lead++;
        continue;
      }

      // Swap pivot row into position r if needed (only happens when pivot is zero in non-pivoting mode)
      if (pivRow != r) {
        final tmp = m[r];
        m[r] = m[pivRow];
        m[pivRow] = tmp;
      }

      final pivot = m[r][lead];
      if (reduced) {
        if (pivot.abs() <= eps) { lead++; continue; } // safety
        // Normalize pivot row so pivot becomes 1
        for (int j = 0; j < columnCount; j++) {
          m[r][j] /= pivot;
        }
        m[r][lead] = 1.0;
      }

      // Eliminate entries strictly below the pivot in column `lead`
      for (int i = reduced? 0 : r + 1; i < rowCount; i++) {
        if (reduced && i == r) continue;
        final factor = reduced? m[i][lead] : (pivot.abs() <= eps) ? 0.0 : m[i][lead] / pivot;
        if (factor.abs() <= eps) {
          // already ~0; skip work
          m[i][lead] = 0.0;
          continue;
        }
        // Row_i = Row_i - factor * Row_r  (start at `lead` for cache locality)
        for (int j = reduced? 0 : lead; j < columnCount; j++) {
          m[i][j] -= factor * m[r][j];
          // squash tiny noise
          if ((!reduced) && m[i][j].abs() <= eps) m[i][j] = 0.0;
        }
        if (reduced) m[i][lead] = 0.0;
      }

      if (reduced) {
        // Clean small numerical noise
        for (int j = 0; j < columnCount; j++) {
          if (m[r][j].abs() <= eps) m[r][j] = 0.0;
        }
      }

      // Advance to next row/column (next pivot should be to the right and below)
      r++;
      lead++;
    }

    return Matrix(m);
  }

  Matrix? _rowEchelon;

  /// Gets the row echelon of this [Matrix].
  ///
  /// {@template math.matrix.rowEchelon}
  /// Row Echelon Form (REF) that preserves row order when possible.
  /// - No scaling; just eliminates below each pivot.
  /// - Only swaps if the current pivot is (numerically) zero.
  /// {@endtemplate}
  Matrix get rowEchelon {
    _rowEchelon ??= _rowEchelonBuild();
    return _rowEchelon!;
  }

  Matrix? _reducedRowEchelon;

  /// Gets the reduced row echelon of this [Matrix].
  ///
  /// {@template math.matrix.rowEchelon.reduced}
  /// Reduced Row Echelon Form (RREF).
  /// - Preserves row order when possible (no swaps unless needed).
  /// - Scales each pivot row so the pivot is 1.
  /// - Zeros both *below and above* each pivot.
  /// {@endtemplate}
  Matrix get reducedRowEchelon {
    _reducedRowEchelon ??= _rowEchelonBuild(reduced: true);
    return _reducedRowEchelon!;
  }

  int? _rank;

  /// Gets the rank of this [Matrix].
  ///
  /// ### What is Rank?
  ///
  /// {@template math.matrix.rank}
  /// The rank is how many of the rows are "unique":
  /// not made of other rows. (Same for columns.)
  ///
  /// In fact the rows and columns always agree on the rank (amazing but true!).
  ///
  /// When we talk about rows here, we can also say the same thing about columns.
  /// So we don't really need to work out both.
  ///
  /// With square matrices, a non-zero determinant tells us that all rows (or columns)
  /// are linearly independent, so it is "full rank" and its rank equals the number of rows.
  ///
  /// The rank can't be larger than the smallest dimension of the matrix.
  /// {@endtemplate}
  int get rank {
    if (_rank == null) {
      if (rowCount == columnCount) {
        _rank = determinant != 0? rowCount : null;
      }
      _rank ??= reducedRowEchelon._matrix.fold<int>(0, (rank, row) {
        return rank + (row.any((cell) => cell != 0)? 1:0);
      });
    }
    return _rank!;
  }

  List<List<num>> copyData() {
    return _matrix.map((r) => List<num>.from(r)).toList();
  }

  @override
  String toString() {
    return 'Matrix(rows: $rowCount, cols: $columnCount, matrix: [${_matrix.join(', ')}])';
  }
}
