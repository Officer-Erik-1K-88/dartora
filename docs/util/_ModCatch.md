# _ModCatch

_No summary provided in source._

_Defined in: `src/modification.dart`_

_Import_: `package:dartora/modification.dart`


---


### Constructors

#### `action(this);`



#### `const ModLevel();`



#### `return ModificationAction(listener: this, level: c.level);`



#### `_catches.add(_buildCatch(_catches.length));`



#### `last.step(action);`



#### `onReset(this, beenModified?ModResetType.modified:ModResetType.unmodified);`



### Fields

#### `final ModLevel level;`



#### `checker;`



#### `false;`



#### `_ended;`



#### `_points;`



#### `return false;`



#### `_points;`



#### `_points;`



#### `true;`



#### `one;`



#### `index;`



#### `onReset;`



#### `isNotEmpty;`



#### `_modCount;`



#### `return false;`



#### `_points;`





### Methods

#### `bool step(
    bool Function(ModificationAction) action,
  ) {`



#### `if (action(checker(this))) {`



#### `void end(void Function(_ModCatch) action) {`



#### `if (!_ended) {`



#### `ModLevel getModLevelAt(int index) {`



#### `_ModCatch _buildCatch(int level) {`



#### `return _ModCatch(level: getModLevelAt(level), checker: (c) {`



#### `void start() {`



#### `if (_catches.length != ModLevel.values.length) {`



#### `bool step(bool Function(ModificationAction) action) {`



#### `if (inModification) {`



#### `void end() {`



#### `if (inModification) {`



#### `removeLast().end((c) {`



#### `void reset() {`



#### `if (!inModification) {`


