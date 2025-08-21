# _ModCatch

This class `_ModCatch` is part of the `util` module of the Dartora library. It defines behavior and data structures as implemented in the source code.

_Defined in: `src/modification.dart`_

_Import_: `package:dartora/modification.dart`


---


### Constructors

#### `action(this);`

Constructs a new instance of `_ModCatch`.



#### `const ModLevel();`

Constructs a new instance of `_ModCatch`.



#### `return ModificationAction(listener: this, level: c.level);`

Constructs a new instance of `_ModCatch`.



#### `_catches.add(_buildCatch(_catches.length));`

Constructs a new instance of `_ModCatch`.



#### `last.step(action);`

Constructs a new instance of `_ModCatch`.



#### `onReset(this, beenModified?ModResetType.modified:ModResetType.unmodified);`

Constructs a new instance of `_ModCatch`.



### Fields

#### `final ModLevel level;`

Stores the value of `level` for this instance of `_ModCatch`.



#### `checker;`

Stores the value of `checker` for this instance of `_ModCatch`.



#### `false;`

Stores the value of `false` for this instance of `_ModCatch`.



#### `_ended;`

Stores the value of `_ended` for this instance of `_ModCatch`.



#### `_points;`

Stores the value of `_points` for this instance of `_ModCatch`.



#### `return false;`

Stores the value of `false` for this instance of `_ModCatch`.



#### `_points;`

Stores the value of `_points` for this instance of `_ModCatch`.



#### `_points;`

Stores the value of `_points` for this instance of `_ModCatch`.



#### `true;`

Stores the value of `true` for this instance of `_ModCatch`.



#### `one;`

Stores the value of `one` for this instance of `_ModCatch`.



#### `index;`

Stores the value of `index` for this instance of `_ModCatch`.



#### `onReset;`

Stores the value of `onReset` for this instance of `_ModCatch`.



#### `isNotEmpty;`

Stores the value of `isNotEmpty` for this instance of `_ModCatch`.



#### `_modCount;`

Stores the value of `_modCount` for this instance of `_ModCatch`.



#### `return false;`

Stores the value of `false` for this instance of `_ModCatch`.



#### `_points;`

Stores the value of `_points` for this instance of `_ModCatch`.





### Methods

#### `bool step(
    bool Function(ModificationAction) action,
  ) {`

Executes the `step` operation defined in `_ModCatch`.



#### `if (action(checker(this))) {`

Executes the `if` operation defined in `_ModCatch`.



#### `void end(void Function(_ModCatch) action) {`

Executes the `end` operation defined in `_ModCatch`.



#### `if (!_ended) {`

Executes the `if` operation defined in `_ModCatch`.



#### `ModLevel getModLevelAt(int index) {`

Executes the `getModLevelAt` operation defined in `_ModCatch`.



#### `_ModCatch _buildCatch(int level) {`

Executes the `_buildCatch` operation defined in `_ModCatch`.



#### `return _ModCatch(level: getModLevelAt(level), checker: (c) {`

Executes the `_ModCatch` operation defined in `_ModCatch`.



#### `void start() {`

Executes the `start` operation defined in `_ModCatch`.



#### `if (_catches.length != ModLevel.values.length) {`

Executes the `if` operation defined in `_ModCatch`.



#### `bool step(bool Function(ModificationAction) action) {`

Executes the `step` operation defined in `_ModCatch`.



#### `if (inModification) {`

Executes the `if` operation defined in `_ModCatch`.



#### `void end() {`

Executes the `end` operation defined in `_ModCatch`.



#### `if (inModification) {`

Executes the `if` operation defined in `_ModCatch`.



#### `removeLast().end((c) {`

Executes the `removeLast` operation defined in `_ModCatch`.



#### `void reset() {`

Executes the `reset` operation defined in `_ModCatch`.



#### `if (!inModification) {`

Executes the `if` operation defined in `_ModCatch`.


