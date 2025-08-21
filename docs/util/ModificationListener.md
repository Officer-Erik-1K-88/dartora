# ModificationListener

_No summary provided in source._

_Defined in: `src/modification.dart`_

_Import_: `package:dartora/modification.dart`

---

### Constructors

#### `return ModificationAction(listener: this, level: c.level);`



#### `_catches.add(_buildCatch(_catches.length));`



#### `last.step(action);`



#### `onReset(this, beenModified?ModResetType.modified:ModResetType.unmodified);`



### Fields

#### `onReset;`



#### `isNotEmpty;`



#### `_modCount;`



#### `return false;`



#### `_points;`





### Methods

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


