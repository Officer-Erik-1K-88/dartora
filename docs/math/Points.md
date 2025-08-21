# Points

This class `Points` is part of the `math` module of the Dartora library. It defines behavior and data structures as implemented in the source code.

_Defined in: `src/math/advanced/points.dart`_

_Import_: `package:dartora/math/advanced/points.dart`


---


### Constructors

#### `Points();`

Constructs a new instance of `Points`.



#### `return UnmodifiablePoints(
      positive: positive,
      negative: negative,
      occurrences: occurrences,
      modifier: modifier,
    );`

Constructs a new instance of `Points`.



#### `return Points.from(
      positive: positive + p.positive,
      negative: negative + p.negative,
      occurrences: occurrences + p.occurrences,
      modifier: modifier + p.modifier
    );`

Constructs a new instance of `Points`.



#### `return Points.from(
      positive: positive - p.positive,
      negative: negative - p.negative,
      occurrences: occurrences - p.occurrences,
      modifier: modifier - p.modifier
    );`

Constructs a new instance of `Points`.



#### `return Points.from(
      positive: positive * p.positive,
      negative: negative * p.negative,
      occurrences: occurrences * p.occurrences,
      modifier: modifier * p.modifier
    );`

Constructs a new instance of `Points`.



#### `return Points.from(
      positive: (positive / p.positive).floor(),
      negative: (negative / p.negative).floor(),
      occurrences: (occurrences / p.occurrences).floor(),
      modifier: (modifier / p.modifier).floor()
    );`

Constructs a new instance of `Points`.



#### `return total.compareTo(other.total);`

Constructs a new instance of `Points`.



#### `numberCast(other);`

Constructs a new instance of `Points`.



#### `numberCast(other);`

Constructs a new instance of `Points`.



#### `numberCast(other);`

Constructs a new instance of `Points`.



#### `numberCast(other);`

Constructs a new instance of `Points`.



#### `numberCast(other);`

Constructs a new instance of `Points`.



#### `return total.toString();`

Constructs a new instance of `Points`.



#### `return total.toDouble();`

Constructs a new instance of `Points`.



#### `return UnmodifiablePoints(
      positive: positive,
      negative: negative,
      occurrences: occurrences,
      modifier: modifier,
    );`

Constructs a new instance of `Points`.



#### `UnmodifiablePoints.empty(): this.all(0);`

Constructs a new instance of `Points`.



#### `ModifiablePoints();`

Constructs a new instance of `Points`.



#### `assert(count > 0);`

Constructs a new instance of `Points`.



#### `assert(occurrence >= 0);`

Constructs a new instance of `Points`.



#### `max(stepwiseGrowth(occurrence), 1);`

Constructs a new instance of `Points`.



#### `assert(count > 0);`

Constructs a new instance of `Points`.



### Fields

#### `int get positive;`

Stores the value of `positive` for this instance of `Points`.



#### `int get negative;`

Stores the value of `negative` for this instance of `Points`.



#### `int get occurrences;`

Stores the value of `occurrences` for this instance of `Points`.



#### `int get modifier;`

Stores the value of `modifier` for this instance of `Points`.



#### `positive;`

Stores the value of `positive` for this instance of `Points`.



#### `negative;`

Stores the value of `negative` for this instance of `Points`.



#### `all;`

Stores the value of `all` for this instance of `Points`.



#### `empty;`

Stores the value of `empty` for this instance of `Points`.



#### `hashCode;`

Stores the value of `hashCode` for this instance of `Points`.



#### `return total;`

Stores the value of `total` for this instance of `Points`.



#### `override
  final int positive;`

Stores the value of `positive` for this instance of `Points`.



#### `override
  final int negative;`

Stores the value of `negative` for this instance of `Points`.



#### `override
  final int occurrences;`

Stores the value of `occurrences` for this instance of `Points`.



#### `override
  final int modifier;`

Stores the value of `modifier` for this instance of `Points`.



#### `value
  ;`

Stores the value of `value` for this instance of `Points`.



#### `_positive;`

Stores the value of `_positive` for this instance of `Points`.



#### `_negative;`

Stores the value of `_negative` for this instance of `Points`.



#### `_occurrences;`

Stores the value of `_occurrences` for this instance of `Points`.



#### `_modifier;`

Stores the value of `_modifier` for this instance of `Points`.



#### `count;`

Stores the value of `count` for this instance of `Points`.



#### `occurrence;`

Stores the value of `occurrence` for this instance of `Points`.



#### `count;`

Stores the value of `count` for this instance of `Points`.



#### `positive;`

Stores the value of `positive` for this instance of `Points`.



#### `negative;`

Stores the value of `negative` for this instance of `Points`.



#### `occurrences;`

Stores the value of `occurrences` for this instance of `Points`.



#### `modifier;`

Stores the value of `modifier` for this instance of `Points`.



#### `positive;`

Stores the value of `positive` for this instance of `Points`.



#### `negative;`

Stores the value of `negative` for this instance of `Points`.



#### `occurrences;`

Stores the value of `occurrences` for this instance of `Points`.



#### `modifier;`

Stores the value of `modifier` for this instance of `Points`.





### Methods

#### `override
  int compareTo(Points other) {`

Executes the `compareTo` operation defined in `Points`.



#### `override
  String toString() {`

Executes the `toString` operation defined in `Points`.



#### `int toInt() {`

Executes the `toInt` operation defined in `Points`.



#### `double toDouble() {`

Executes the `toDouble` operation defined in `Points`.



#### `Points toUnmodifiable() {`

Executes the `toUnmodifiable` operation defined in `Points`.



#### `void addPositive(int count, int occurrence) {`

Executes the `addPositive` operation defined in `Points`.



#### `if (occurrence != 0) {`

Executes the `if` operation defined in `Points`.



#### `void addNegative(int count) {`

Executes the `addNegative` operation defined in `Points`.



#### `void clear() {`

Executes the `clear` operation defined in `Points`.



#### `void addPoints(Points other) {`

Executes the `addPoints` operation defined in `Points`.



#### `void subtractPoints(Points other) {`

Executes the `subtractPoints` operation defined in `Points`.


