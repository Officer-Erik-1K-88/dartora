# Matrix

This class `Matrix` is part of the `math` module of the Dartora library. It defines behavior and data structures as implemented in the source code.

_Defined in: `src/math/advanced/matrix.dart`_

_Import_: `package:dartora/math/advanced/matrix.dart`


---


### Constructors

#### `HolderIterator(holder: _matrix);`

Constructs a new instance of `Matrix`.



#### `Matrix._(this._matrix);`

Constructs a new instance of `Matrix`.



#### `assert(columnCount == matrixRow.length);`

Constructs a new instance of `Matrix`.



#### `assert(columnCount != null);`

Constructs a new instance of `Matrix`.



#### `return Matrix._(matrix);`

Constructs a new instance of `Matrix`.



#### `throw IndexError.withLength(sourceIndex, length);`

Constructs a new instance of `Matrix`.



#### `assert(rowCount == other.rowCount);`

Constructs a new instance of `Matrix`.



#### `assert(columnCount == other.columnCount);`

Constructs a new instance of `Matrix`.



#### `matrix.add([]);`

Constructs a new instance of `Matrix`.



#### `add(get(i, j) + other.get(i, j));`

Constructs a new instance of `Matrix`.



#### `return Matrix(matrix);`

Constructs a new instance of `Matrix`.



#### `assert(rowCount == other.rowCount);`

Constructs a new instance of `Matrix`.



#### `assert(columnCount == other.columnCount);`

Constructs a new instance of `Matrix`.



#### `matrix.add([]);`

Constructs a new instance of `Matrix`.



#### `add(get(i, j) - other.get(i, j));`

Constructs a new instance of `Matrix`.



#### `return Matrix(matrix);`

Constructs a new instance of `Matrix`.



#### `matrix.add([]);`

Constructs a new instance of `Matrix`.



#### `add(-get(i, j));`

Constructs a new instance of `Matrix`.



#### `return Matrix(matrix);`

Constructs a new instance of `Matrix`.



#### `assert(columnCount == other.rowCount);`

Constructs a new instance of `Matrix`.



#### `get(i, i2) * other.get(i2, j);`

Constructs a new instance of `Matrix`.



#### `row.add(cell);`

Constructs a new instance of `Matrix`.



#### `newMatrix.add(row);`

Constructs a new instance of `Matrix`.



#### `return Matrix(newMatrix);`

Constructs a new instance of `Matrix`.



#### `assert(other is num);`

Constructs a new instance of `Matrix`.



#### `matrix.add([]);`

Constructs a new instance of `Matrix`.



#### `add(get(i, j) * other);`

Constructs a new instance of `Matrix`.



#### `return Matrix(matrix);`

Constructs a new instance of `Matrix`.



#### `assert(other is num);`

Constructs a new instance of `Matrix`.



#### `assert(!(other as num).isNaN);`

Constructs a new instance of `Matrix`.



#### `matrix.add([]);`

Constructs a new instance of `Matrix`.



#### `add(get(i, j) / other);`

Constructs a new instance of `Matrix`.



#### `return Matrix(matrix);`

Constructs a new instance of `Matrix`.



#### `rowL.add(get(j, i2));`

Constructs a new instance of `Matrix`.



#### `newMatrix.add(rowL);`

Constructs a new instance of `Matrix`.



#### `if (rowCount != columnCount) throw StateError('Cannot compute determinant of non-square Matrix.');`

Constructs a new instance of `Matrix`.



#### `get(0, i);`

Constructs a new instance of `Matrix`.



#### `_calculateDet(0, i);`

Constructs a new instance of `Matrix`.



#### `pow(-1, (row+1)+(column+1));`

Constructs a new instance of `Matrix`.



#### `get(row, column) : _calculateDet(row, column);`

Constructs a new instance of `Matrix`.



#### `if (rowCount != columnCount) throw StateError('Cannot compute cofactor of non-square Matrix.');`

Constructs a new instance of `Matrix`.



#### `row.add(_cfact(j, i));`

Constructs a new instance of `Matrix`.



#### `newMatrix.add(row);`

Constructs a new instance of `Matrix`.



#### `Matrix(newMatrix);`

Constructs a new instance of `Matrix`.



#### `if (rowCount != columnCount) throw StateError('Cannot compute inverse of non-square Matrix.');`

Constructs a new instance of `Matrix`.



#### `Matrix.empty();`

Constructs a new instance of `Matrix`.



#### `Matrix([
          [_matrix[1][1], -_matrix[0][1]],
          [-_matrix[1][0], _matrix[0][0]]
        ]);`

Constructs a new instance of `Matrix`.



#### `row.add(get(j, i));`

Constructs a new instance of `Matrix`.



#### `newMatrix.add(row);`

Constructs a new instance of `Matrix`.



#### `Matrix(newMatrix);`

Constructs a new instance of `Matrix`.



#### `row.add(1);`

Constructs a new instance of `Matrix`.



#### `row.add(0);`

Constructs a new instance of `Matrix`.



#### `newMatrix.add(row);`

Constructs a new instance of `Matrix`.



#### `Matrix(newMatrix);`

Constructs a new instance of `Matrix`.



#### `row.add(get(i, j) - ((get(i, (i-1)) / (i-1)) * get(i-1, j)));`

Constructs a new instance of `Matrix`.



#### `newMatrix.add(row);`

Constructs a new instance of `Matrix`.



#### `Matrix(newMatrix);`

Constructs a new instance of `Matrix`.



### Fields

#### `_matrix;`

Stores the value of `_matrix` for this instance of `Matrix`.



#### `length;`

Stores the value of `length` for this instance of `Matrix`.



#### `columnCount;`

Stores the value of `columnCount` for this instance of `Matrix`.



#### `columnCount;`

Stores the value of `columnCount` for this instance of `Matrix`.



#### `length;`

Stores the value of `length` for this instance of `Matrix`.



#### `sourceIndex;`

Stores the value of `sourceIndex` for this instance of `Matrix`.



#### `length;`

Stores the value of `length` for this instance of `Matrix`.



#### `continue;`

Stores the value of `continue` for this instance of `Matrix`.



#### `rowCount;`

Stores the value of `rowCount` for this instance of `Matrix`.



#### `columnCount;`

Stores the value of `columnCount` for this instance of `Matrix`.



#### `rowCount;`

Stores the value of `rowCount` for this instance of `Matrix`.



#### `columnCount;`

Stores the value of `columnCount` for this instance of `Matrix`.



#### `rowCount;`

Stores the value of `rowCount` for this instance of `Matrix`.



#### `columnCount;`

Stores the value of `columnCount` for this instance of `Matrix`.



#### `rowCount;`

Stores the value of `rowCount` for this instance of `Matrix`.



#### `columnCount;`

Stores the value of `columnCount` for this instance of `Matrix`.



#### `columnCount;`

Stores the value of `columnCount` for this instance of `Matrix`.



#### `rowCount;`

Stores the value of `rowCount` for this instance of `Matrix`.



#### `columnCount;`

Stores the value of `columnCount` for this instance of `Matrix`.



#### `this;`

Stores the value of `this` for this instance of `Matrix`.



#### `exponent;`

Stores the value of `exponent` for this instance of `Matrix`.



#### `this;`

Stores the value of `this` for this instance of `Matrix`.



#### `return answer;`

Stores the value of `answer` for this instance of `Matrix`.



#### `inverse;`

Stores the value of `inverse` for this instance of `Matrix`.



#### `rowCount;`

Stores the value of `rowCount` for this instance of `Matrix`.



#### `columnCount;`

Stores the value of `columnCount` for this instance of `Matrix`.



#### `rowCount;`

Stores the value of `rowCount` for this instance of `Matrix`.



#### `continue;`

Stores the value of `continue` for this instance of `Matrix`.



#### `columnCount;`

Stores the value of `columnCount` for this instance of `Matrix`.



#### `continue;`

Stores the value of `continue` for this instance of `Matrix`.



#### `determinant
    ;`

Stores the value of `determinant` for this instance of `Matrix`.



#### `_determinant;`

Stores the value of `_determinant` for this instance of `Matrix`.



#### `true;`

Stores the value of `true` for this instance of `Matrix`.



#### `columnCount;`

Stores the value of `columnCount` for this instance of `Matrix`.



#### `add;`

Stores the value of `add` for this instance of `Matrix`.



#### `p2;`

Stores the value of `p2` for this instance of `Matrix`.



#### `_cofactor;`

Stores the value of `_cofactor` for this instance of `Matrix`.



#### `columnCount;`

Stores the value of `columnCount` for this instance of `Matrix`.



#### `rowCount;`

Stores the value of `rowCount` for this instance of `Matrix`.



#### `transpose;`

Stores the value of `transpose` for this instance of `Matrix`.



#### `_inverse;`

Stores the value of `_inverse` for this instance of `Matrix`.



#### `adjoint;`

Stores the value of `adjoint` for this instance of `Matrix`.



#### `determinant;`

Stores the value of `determinant` for this instance of `Matrix`.



#### `_transposed;`

Stores the value of `_transposed` for this instance of `Matrix`.



#### `columnCount;`

Stores the value of `columnCount` for this instance of `Matrix`.



#### `rowCount;`

Stores the value of `rowCount` for this instance of `Matrix`.



#### `_identity;`

Stores the value of `_identity` for this instance of `Matrix`.



#### `columnCount;`

Stores the value of `columnCount` for this instance of `Matrix`.



#### `rowCount;`

Stores the value of `rowCount` for this instance of `Matrix`.



#### `_rowEchelon;`

Stores the value of `_rowEchelon` for this instance of `Matrix`.



#### `rowCount;`

Stores the value of `rowCount` for this instance of `Matrix`.



#### `columnCount;`

Stores the value of `columnCount` for this instance of `Matrix`.





### Methods

#### `factory Matrix(List<List<num>> matrix) {`

Executes the `Matrix` operation defined in `Matrix`.



#### `for (var matrixRow in matrix) {`

Executes the `for` operation defined in `Matrix`.



#### `override
  num sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `Matrix`.



#### `for (var row in _matrix) {`

Executes the `for` operation defined in `Matrix`.



#### `if (actualIndex >= row.length) {`

Executes the `if` operation defined in `Matrix`.



#### `num get(int row, int column) {`

Executes the `get` operation defined in `Matrix`.



#### `if (other is Matrix) {`

Executes the `if` operation defined in `Matrix`.



#### `Matrix power(int exponent) {`

Executes the `power` operation defined in `Matrix`.



#### `if (other is Matrix) {`

Executes the `if` operation defined in `Matrix`.



#### `num _calculateDet(int row, int column) {`

Executes the `_calculateDet` operation defined in `Matrix`.



#### `if (_determinant != null) {`

Executes the `if` operation defined in `Matrix`.



#### `if (rowCount == 2 && columnCount == 2) {`

Executes the `if` operation defined in `Matrix`.



#### `if (cell != 0) {`

Executes the `if` operation defined in `Matrix`.



#### `num _cfact(int row, int column) {`

Executes the `_cfact` operation defined in `Matrix`.



#### `if (_cofactor == null) {`

Executes the `if` operation defined in `Matrix`.



#### `if (_inverse == null) {`

Executes the `if` operation defined in `Matrix`.



#### `if (rowCount == 2 && columnCount == 2) {`

Executes the `if` operation defined in `Matrix`.



#### `if (_transposed == null) {`

Executes the `if` operation defined in `Matrix`.



#### `if (_identity == null) {`

Executes the `if` operation defined in `Matrix`.



#### `if (i == j) {`

Executes the `if` operation defined in `Matrix`.



#### `if (_rowEchelon == null) {`

Executes the `if` operation defined in `Matrix`.


