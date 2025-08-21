# _ModCatch

`_ModCatch` is an internal helper class used by [`ModificationListener`](ModificationListener.md) to represent a single **modification scope**.  Each call to `ModificationListener.start()` pushes a new `_ModCatch` onto the listener’s private stack.  The catch records how many modification steps occur within its scope and provides methods to record steps and to finalise the scope.

### Fields

- `level : ModLevel` – the severity level corresponding to the position of this scope in the stack (0 for outermost, 1 for nested, etc.).
- `checker : ModificationAction Function(_ModCatch)` – a function used to create a new `ModificationAction` bound to the listener and the current level.
- `_ended : bool` – whether `end()` has been called on this catch.
- `_points : int` – count of modification steps recorded via `step()`.  When the catch ends, its points are added to the listener’s total.

### Methods

- `step(bool Function(ModificationAction) action)` – if the catch has not ended, creates a `ModificationAction` via `checker(this)` and passes it to `action`.  If `action` returns `true`, increments `_points`.  Returns `true` if `_points` changed.
- `end(void Function(_ModCatch) onEnd)` – marks `_ended` as `true`, then calls `onEnd(this)` exactly once.  The listener passes a closure to accumulate the catch’s points and increment modification count.

`_ModCatch` is not exported publicly; it is purely internal.  Its existence allows the listener to track nested scopes and to combine their step counts when they end.
