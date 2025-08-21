# Matrix

_No summary provided in source._

_Defined in: `src/math/advanced/matrix.dart`_

_Import_: `package:dartora/math/advanced/matrix.dart`

---

### Constructors

#### `HolderIterator(holder: _matrix);`



#### `Matrix._(this._matrix);`



#### `assert(columnCount == matrixRow.length);`



#### `assert(columnCount != null);`



#### `return Matrix._(matrix);`



#### `throw IndexError.withLength(sourceIndex, length);`



#### `assert(rowCount == other.rowCount);`



#### `assert(columnCount == other.columnCount);`



#### `matrix.add([]);`



#### `add(get(i, j) + other.get(i, j));`



#### `return Matrix(matrix);`



#### `assert(rowCount == other.rowCount);`



#### `assert(columnCount == other.columnCount);`



#### `matrix.add([]);`



#### `add(get(i, j) - other.get(i, j));`



#### `return Matrix(matrix);`



#### `matrix.add([]);`



#### `add(-get(i, j));`



#### `return Matrix(matrix);`



#### `assert(columnCount == other.rowCount);`



#### `get(i, i2) * other.get(i2, j);`



#### `row.add(cell);`



#### `newMatrix.add(row);`



#### `return Matrix(newMatrix);`



#### `assert(other is num);`



#### `matrix.add([]);`



#### `add(get(i, j) * other);`



#### `return Matrix(matrix);`



#### `assert(other is num);`



#### `assert(!(other as num).isNaN);`



#### `matrix.add([]);`



#### `add(get(i, j) / other);`



#### `return Matrix(matrix);`



#### `rowL.add(get(j, i2));`



#### `newMatrix.add(rowL);`



#### `if (rowCount != columnCount) throw StateError('Cannot compute determinant of non-square Matrix.');`



#### `get(0, i);`



#### `_calculateDet(0, i);`



#### `pow(-1, (row+1)+(column+1));`



#### `get(row, column) : _calculateDet(row, column);`



#### `if (rowCount != columnCount) throw StateError('Cannot compute cofactor of non-square Matrix.');`



#### `row.add(_cfact(j, i));`



#### `newMatrix.add(row);`



#### `Matrix(newMatrix);`



#### `if (rowCount != columnCount) throw StateError('Cannot compute inverse of non-square Matrix.');`



#### `Matrix.empty();`



#### `Matrix([
          [_matrix[1][1], -_matrix[0][1]],
          [-_matrix[1][0], _matrix[0][0]]
        ]);`



#### `row.add(get(j, i));`



#### `newMatrix.add(row);`



#### `Matrix(newMatrix);`



#### `row.add(1);`



#### `row.add(0);`



#### `newMatrix.add(row);`



#### `Matrix(newMatrix);`



#### `row.add(get(i, j) - ((get(i, (i-1)) / (i-1)) * get(i-1, j)));`



#### `newMatrix.add(row);`



#### `Matrix(newMatrix);`



### Fields

#### `_matrix;`



#### `length;`



#### `columnCount;`



#### `columnCount;`



#### `length;`



#### `sourceIndex;`



#### `length;`



#### `continue;`



#### `rowCount;`



#### `columnCount;`



#### `rowCount;`



#### `columnCount;`



#### `rowCount;`



#### `columnCount;`



#### `rowCount;`



#### `columnCount;`



#### `columnCount;`



#### `rowCount;`



#### `columnCount;`



#### `this;`



#### `exponent;`



#### `this;`



#### `return answer;`



#### `inverse;`



#### `rowCount;`



#### `columnCount;`



#### `rowCount;`



#### `continue;`



#### `columnCount;`



#### `continue;`



#### `determinant
    ;`



#### `_determinant;`



#### `true;`



#### `columnCount;`



#### `add;`



#### `p2;`



#### `_cofactor;`



#### `columnCount;`



#### `rowCount;`



#### `transpose;`



#### `_inverse;`



#### `adjoint;`



#### `determinant;`



#### `_transposed;`



#### `columnCount;`



#### `rowCount;`



#### `_identity;`



#### `columnCount;`



#### `rowCount;`



#### `_rowEchelon;`



#### `rowCount;`



#### `columnCount;`





### Methods

#### `factory Matrix(List\<List\<num\>\> matrix) {`



#### `for (var matrixRow in matrix) {`



#### `override
  num sourceGet(int sourceIndex) {`



#### `for (var row in _matrix) {`



#### `if (actualIndex \>= row.length) {`



#### `num get(int row, int column) {`



#### `if (other is Matrix) {`



#### `Matrix power(int exponent) {`



#### `if (other is Matrix) {`



#### `num _calculateDet(int row, int column) {`



#### `if (_determinant != null) {`



#### `if (rowCount == 2 && columnCount == 2) {`



#### `if (cell != 0) {`



#### `num _cfact(int row, int column) {`



#### `if (_cofactor == null) {`



#### `if (_inverse == null) {`



#### `if (rowCount == 2 && columnCount == 2) {`



#### `if (_transposed == null) {`



#### `if (_identity == null) {`



#### `if (i == j) {`



#### `if (_rowEchelon == null) {`


