# ModificationAction

`ModificationAction` is a lightweight data class produced by [`ModificationListener`](ModificationListener.md) when a modification step is recorded.  It simply holds a reference to the listener and the modification level at which the step occurred.

### Fields

- `listener : ModificationListener` – the listener that generated this action.
- `level : ModLevel` – the severity/level of the modification.  Levels are represented by the enum [`ModLevel`](ModLevel.md), with `zero` being the outermost modification and `one` being a nested modification (if any).  Additional levels can be added by extending the enum.

### Use

The `ModificationAction` is passed into user callbacks in `ModificationListener.step(action)`.  The callback can inspect the `level` to decide what to do for modifications at different nesting depths.  For example, you might treat level‑0 modifications as content edits and level‑1 modifications as metadata updates.

`ModificationAction` does not implement any behaviour; it is purely informational.
