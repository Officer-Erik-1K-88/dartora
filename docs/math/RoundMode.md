# RoundMode

_No summary provided in source._

_Defined in: `src/math/basic/rounding.dart`_

_Import_: `package:dartora/math/basic/rounding.dart`

---

### Constructors

#### `assert(toEven? !toOdd : true),
    assert(roundAt \>= 0 && roundAt \<= 10)
  ;`



#### `assert(rounder \>= 0 && rounder \<= 9);`



#### `round(rounder, toRound);`



#### `return roundCheck(rounder, toRound, true);`



#### `return roundCheck(rounder, toRound, true, true);`



#### `RoundMode(
    roundAt: 5,
    reverse: false,
    toEven: false,
    toOdd: false,
    toZero: false,
    awayFromZero: false,
    allowSubtract: false,
  );`



#### `RoundMode(
    roundAt: 5,
    reverse: false,
    toEven: true,
    toOdd: false,
    toZero: false,
    awayFromZero: false,
    allowSubtract: false,
  );`



#### `RoundMode(
    roundAt: 5,
    reverse: false,
    toEven: false,
    toOdd: true,
    toZero: false,
    awayFromZero: false,
    allowSubtract: false,
  );`



#### `RoundMode(
    roundAt: 5,
    reverse: false,
    toEven: false,
    toOdd: false,
    toZero: false,
    awayFromZero: true,
    allowSubtract: false,
  );`



#### `RoundMode(
    roundAt: 5,
    reverse: false,
    toEven: false,
    toOdd: false,
    toZero: true,
    awayFromZero: false,
    allowSubtract: false,
  );`



#### `RoundMode(
    roundAt: 1,
    reverse: false,
    toEven: false,
    toOdd: false,
    toZero: false,
    awayFromZero: true,
    allowSubtract: false,
  );`



#### `RoundMode(
    roundAt: 10,
    reverse: false,
    toEven: false,
    toOdd: false,
    toZero: true,
    awayFromZero: false,
    allowSubtract: false,
  );`



### Fields

#### `final int roundAt;`



#### `final bool reverse;`



#### `final bool toEven;`



#### `final bool toOdd;`



#### `final bool toZero;`



#### `final bool awayFromZero;`



#### `final bool allowSubtract;`



#### `isEven;`



#### `ret;`



#### `ret;`



#### `return toRound;`



#### `result;`



#### `result;`



#### `result;`





### Methods

#### `int round(int rounder, [int toRound=0]) {`



#### `if (rounder \>= roundAt) {`



#### `if ((even && toEven) || (toOdd && !even)) {`



#### `if (lessThanZero && toZero) {`



#### `else if (lessThanZero && awayFromZero) {`



#### `else if (awayFromZero) {`



#### `else if (toZero) {`



#### `if (reverse) {`



#### `if (lessThanZero) {`



#### `if (!allowSubtract) {`



#### `if (lessThanZero) {`



#### `else if (ret \< 0) {`



#### `if (ret != 0) {`



#### `bool roundCheck(int rounder, [int toRound=0, bool compare=false, bool greater=false]) {`



#### `if (compare) {`



#### `bool roundsUp(int rounder, toRound) {`



#### `bool roundsDown(int rounder, int toRound) {`


