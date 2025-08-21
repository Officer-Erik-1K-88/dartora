# ModificationListener

`ModificationListener` helps track nested modifications on an object and count how many *steps* occurred during those modifications.  It is useful for signalling to observers when an object’s state has changed and at what severity level.

### Overview

The listener maintains a stack of `_ModCatch` objects representing each active modification scope.  When you call `start()`, it pushes a new `_ModCatch` onto the stack with a level equal to the current stack length (so the first level is `ModLevel.zero`, the second is `ModLevel.one`, etc.).  When you call `step(action)`, the listener invokes the provided callback with a `ModificationAction` containing itself and the current level; if the callback returns `true`, the listener increments the step count for that level.  When you call `end()`, it pops the top `_ModCatch`, adds its points to the listener’s total points and increments a modification counter.  Finally, calling `reset()` triggers a user‑supplied callback with a `ModResetType` indicating whether any steps occurred.

### Fields

- `onReset : void Function(ModificationListener, ModResetType)` – user callback invoked when `reset()` is called outside of a modification scope.  It receives the listener itself and a `ModResetType` (`modified` or `unmodified`).
- `inModification : bool` – `true` when at least one modification scope is open (`start()` has been called but `end()` has not yet been called for all levels).
- `beenModified : bool` – `true` if any `step()` returned `true` since the last reset.
- `modCount : int` – number of modification scopes closed (i.e. number of times `end()` has been called).  Reset when `reset()` is called.

### Methods

- `start()` – begins a new modification scope.  Creates a `_ModCatch` at the next `ModLevel`.  If you call `start()` more times than there are `ModLevel` values, an assertion error will occur.
- `step(bool Function(ModificationAction) action)` – if in a modification scope, creates a `ModificationAction` with the listener and the current level and passes it to `action`.  If `action` returns `true`, the current `_ModCatch` increments its point count.  Returns `true` if a step was recorded.
- `end()` – closes the most recent modification scope.  The closed `_ModCatch`’s points are added to the listener’s total points, and `modCount` is incremented.  If you call `end()` without matching `start()`, nothing happens.
- `reset()` – if not in a modification scope, calls `onReset(this, beenModified ? ModResetType.modified : ModResetType.unmodified)` and resets `_points` and `modCount`.  If in a modification scope, does nothing; you must end all scopes before resetting.

### Examples

```dart
final ml = ModificationListener(onReset: (l, type) {
  print('Reset: ${type.name}, steps: ${l._points}, scopes: ${l.modCount}');
});
ml.start();
ml.step((action) {
  // do something that modifies state
  return true; // record a modification step
});
ml.end();
ml.reset(); // prints: Reset: modified, steps: 1, scopes: 1
```

`ModificationListener` does not enforce any particular semantics; it simply counts steps and scopes.  Users of the listener decide what constitutes a modification and when to call start/end/step/reset.
