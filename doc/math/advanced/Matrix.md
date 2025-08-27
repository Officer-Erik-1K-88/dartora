# Matrix

`Matrix` represents a two‑dimensional array of numbers and supports common matrix operations.  It is built on top of the `Iteration<num>` mixin, allowing you to iterate over its elements in row‑major order and to use slicing functionality from the collections module.

## Construction

```dart
Matrix(List<List<num>> rows)
```

Creates a matrix from a list of rows.
All rows must have the same length.

`Matrix.check` ensures that during initialization each row in the matrix is checked to see if they are all the same length.

`Matrix.empty()` returns a 0×0 matrix.

## Properties

- `rowCount` – the number of rows.
- `columnCount` – the number of columns (zero if there are no rows).
- `length` – total number of elements (`rowCount * columnCount`).

## Element access

- `get(int row, int column)` – returns the element at the specified row and column.
- `sourceGet(int index)` – internal method implementing `Iteration`’s access. It flattens the 2‑D matrix into a 1‑D sequence by subtracting row lengths until the target row is found.
- `operator []` – index into the flattened sequence (via `sourceGet`).

## Operation

The `Matrix` has many operations that can be defined.

The most common would be `+`, `-`, `unary -`, `*`, and `/`.

### Operators

- `operator +` and `operator -` – add or subtract matrices element‑wise. Both matrices must have the same dimensions.
- Unary `operator -` – The negative of a matrix is the value of a matrix if the signs of all elements are flipped.
- `operator *` – supports two forms:
  - **Matrix multiplication**: if the right operand is a `Matrix`, it performs standard matrix multiplication (`m × other`), requiring that this matrix’s `columnCount` equals `other.rowCount`.
  - **Scalar multiplication**: if the right operand is a number, it multiplies every element by that number.
- `operator /` – divides by a scalar or by another matrix.  Division by a matrix is defined as multiplication by its inverse (`this * other.inverse`). Throws if the divisor is zero or not invertible.

#### Addition

The addition of matrices is defined as the process of getting the sum matrix from adding one matrix to another matrix.

For two matrices to be added, they must be of the same size, i.e. the rows must match in size, and the columns must match in size.

While in terms of actual math, we shouldn't be able to add a constant to a matrix. However, for simplicity we can.

#### Subtraction

The subtraction of matrices is defined as the process of getting the difference matrix from subtracting one matrix from another matrix.

For two matrices to be subtracted, they must be of the same size, i.e. the rows must match in size, and the columns must match in size.

While in terms of actual math, we shouldn't be able to subtract a constant from a matrix. However, for simplicity, and for being able to have unary functionality, we can.

#### Multiplication

We can multiply a matrix by a constant or another matrix.

Firstly, multiplying by a constant is called "scalar multiplication", as we refer to the constant as a **scalar**. It is referred to this because we are using a single number to scale (↕) the values in the matrix.

Secondly, multiplying by another matrix requires the usage of the "dot product" of rows and columns.

##### What is the dot product?

The dot product is where we multiply matching members, then sum up.

For example, we have a row of `(1, 2, 3)` and a column of `(7, 9, 11)`.
First, we match the 1st members (1 and 7), multiply them,
likewise for the 2nd members (2 and 9) and the 3rd members (3 and 11),
and finally sum them up. So that would look a little like, `1×7 + 2×9 + 3×11`.
So in total the equation `(1, 2, 3) • (7, 9, 11)` would give us `58`.

##### Multiplication Law

When multiplying matrices, the _Commutative Law of Multiplication_
(3 × 5 = 5 × 3) may not hold true as demonstrated below:
> | 1 2 | × | 2 0 | = | 1×2+2×1 1×0+2×2 | = | 4 4 |
> | 3 4 | × | 1 2 | = | 3×2+4×1 3×0+4×2 | = | 10 8 |
>
> ---
>
> | 2 0 | × | 1 2 | = | 2×1+0×3 2×2+0×4 | = | 2 4 |
> | 1 2 | × | 3 4 | = | 1×1+2×3 1×2+2×4 | = | 7 10 |

However, it can have the same result (such as when one matrix is the Identity Matrix) but not usually.

#### Division

With matrices, there is no such thing as division. Instead it is faked by the use of multiplication.

So what do we define as division?

Well, between two matrices, it is the multiplication of one matrix to the inverse of another matrix.

However, for simplicity, we made division of a constant possible. This is only possible because
division is just the same as doing `matrix * (1/number)`. But, if the constant is to come be before the matrix, then division becomes `matrix.inverse * number`.

### Methods

- `power(int exponent)` – repeated matrix multiplication (`this * this * ... * this`) `exponent` times.
- `calculateDet(row, column)` – helper that computes the determinant of the sub‑matrix obtained by removing the specified row and column.
- `cfact(row, column)` – computes the signed cofactor for an element.

### Fields

- `determinant` – computes the determinant of a square matrix. Uses a recursive minor/cofactor expansion for larger matrices and direct formula for 2×2.
- `minor` – returns the matrix of minors.
- `cofactor` – returns the matrix of cofactors.
- `adjoint` – returns the adjoint (transpose of the cofactor matrix).
- `inverse` – returns the inverse of a square matrix: for 2×2, swaps and negates elements; for larger matrices, divides the adjoint by the determinant.  Throws if the matrix is not square or has determinant zero.
- `transpose` – returns the transpose of the matrix (rows become columns).
- `identity` – returns the identity matrix of the same size as this matrix.
- `rowEchelon` – returns the Row Echelon Form (REF) that preserves row order.
- `reversedRowEchelon` – returns the Reversed Row Echelon Form (RREF) that preserves row order.

## Notes

`Matrix` is immutable; all operations return new matrices. Internally caches the determinant, transpose, inverse and other derived matrices on first computation to avoid recomputation. Iteration over a matrix yields its elements in row‑major order, making it compatible with the `Iteration` framework.
