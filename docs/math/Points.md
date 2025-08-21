# Points

_No summary provided in source._

_Defined in: `src/math/advanced/points.dart`_

_Import_: `package:dartora/math/advanced/points.dart`

---

### Constructors

#### `Points();`



#### `return UnmodifiablePoints(
      positive: positive,
      negative: negative,
      occurrences: occurrences,
      modifier: modifier,
    );`



#### `return Points.from(
      positive: positive + p.positive,
      negative: negative + p.negative,
      occurrences: occurrences + p.occurrences,
      modifier: modifier + p.modifier
    );`



#### `return Points.from(
      positive: positive - p.positive,
      negative: negative - p.negative,
      occurrences: occurrences - p.occurrences,
      modifier: modifier - p.modifier
    );`



#### `return Points.from(
      positive: positive * p.positive,
      negative: negative * p.negative,
      occurrences: occurrences * p.occurrences,
      modifier: modifier * p.modifier
    );`



#### `return Points.from(
      positive: (positive / p.positive).floor(),
      negative: (negative / p.negative).floor(),
      occurrences: (occurrences / p.occurrences).floor(),
      modifier: (modifier / p.modifier).floor()
    );`



#### `return total.compareTo(other.total);`



#### `numberCast(other);`



#### `numberCast(other);`



#### `numberCast(other);`



#### `numberCast(other);`



#### `numberCast(other);`



#### `return total.toString();`



#### `return total.toDouble();`



#### `return UnmodifiablePoints(
      positive: positive,
      negative: negative,
      occurrences: occurrences,
      modifier: modifier,
    );`



### Fields

#### `int get positive;`



#### `int get negative;`



#### `int get occurrences;`



#### `int get modifier;`



#### `positive;`



#### `negative;`



#### `all;`



#### `empty;`



#### `hashCode;`



#### `return total;`





### Methods

#### `override
  int compareTo(Points other) {`



#### `override
  String toString() {`



#### `int toInt() {`



#### `double toDouble() {`



#### `Points toUnmodifiable() {`


