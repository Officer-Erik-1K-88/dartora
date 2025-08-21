# Matrix

`Matrix` represents a two‑dimensional array of numbers and supports common matrix operations.  It is built on top of the `Iteration<num>` mixin, allowing you to iterate over its elements in row‑major order and to use slicing functionality from the collections module.

### Construction

```dart
factory Matrix(List<List<num>> rows)
```

Creates a matrix from a list of rows.  All rows must have the same length.  A private constructor caches the matrix and initialises iteration state.  `Matrix.empty()` returns a 0×0 matrix.

### Properties

- `rowCount` – the number of rows.
- `columnCount` – the number of columns (zero if there are no rows).
- `length` – total number of elements (`rowCount * columnCount`).

### Element access

- `get(int row, int column)` – returns the element at the specified row and column.
- `sourceGet(int index)` – internal method implementing `Iteration`’s random access.  It flattens the 2‑D matrix into a 1‑D sequence by subtracting row lengths until the target row is found.
- `operator []` – index into the flattened sequence (via `sourceGet`).

### Matrix arithmetic

- `operator +` and `operator -` – add or subtract matrices element‑wise.  Both matrices must have the same dimensions.
- Unary `operator -` – negates every element of the matrix.
- `operator *` – supports two forms:
  - **Matrix multiplication**: if the right operand is a `Matrix`, it performs standard matrix multiplication (`m × other`), requiring that this matrix’s `columnCount` equals `other.rowCount`.
  - **Scalar multiplication**: if the right operand is a number, it multiplies every element by that number.
- `power(int exponent)` – repeated matrix multiplication (`this * this * ... * this`) `exponent` times.
- `operator /` – divides by a scalar or by another matrix.  Division by a matrix is defined as multiplication by its inverse (`this * other.inverse`).  Throws if the divisor is zero or not invertible.

### Determinant and derived matrices

- `determinant` – computes the determinant of a square matrix.  Uses a recursive minor/cofactor expansion for larger matrices and direct formula for 2×2.
- `_calculateDet(row, column)` – helper that computes the determinant of the sub‑matrix obtained by removing the specified row and column.
- `_cfact(row, column)` – computes the signed cofactor for an element.
- `cofactor` – returns the matrix of cofactors.
- `adjoint` – returns the adjoint (transpose of the cofactor matrix).
- `inverse` – returns the inverse of a square matrix: for 2×2, swaps and negates elements; for larger matrices, divides the adjoint by the determinant.  Throws if the matrix is not square or has determinant zero.
- `transpose` – returns the transpose of the matrix (rows become columns).
- `identity` – returns the identity matrix of the same size as this matrix.
- `rowEchelon` – experimental row echelon form; currently implemented as a naive subtraction of scaled rows and marked as TODO.

### Notes

`Matrix` is immutable; all operations return new matrices.  Internally caches the determinant, transpose, inverse and other derived matrices on first computation to avoid recomputation.  Iteration over a matrix yields its elements in row‑major order, making it compatible with the `Iteration` framework.
