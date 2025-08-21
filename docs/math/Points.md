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



#### `UnmodifiablePoints.empty(): this.all(0);`



#### `ModifiablePoints();`



#### `assert(count > 0);`



#### `assert(occurrence >= 0);`



#### `max(stepwiseGrowth(occurrence), 1);`



#### `assert(count > 0);`



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



#### `override
  final int positive;`



#### `override
  final int negative;`



#### `override
  final int occurrences;`



#### `override
  final int modifier;`



#### `value
  ;`



#### `_positive;`



#### `_negative;`



#### `_occurrences;`



#### `_modifier;`



#### `count;`



#### `occurrence;`



#### `count;`



#### `positive;`



#### `negative;`



#### `occurrences;`



#### `modifier;`



#### `positive;`



#### `negative;`



#### `occurrences;`



#### `modifier;`





### Methods

#### `override
  int compareTo(Points other) {`



#### `override
  String toString() {`



#### `int toInt() {`



#### `double toDouble() {`



#### `Points toUnmodifiable() {`



#### `void addPositive(int count, int occurrence) {`



#### `if (occurrence != 0) {`



#### `void addNegative(int count) {`



#### `void clear() {`



#### `void addPoints(Points other) {`



#### `void subtractPoints(Points other) {`


