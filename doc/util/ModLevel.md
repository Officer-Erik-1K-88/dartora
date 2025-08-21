# ModLevel

`ModLevel` is an enumeration representing the **nesting depth** of a modification.  It is used by [`ModificationListener`](ModificationListener.md) and [`ModificationAction`](ModificationAction.md) to categorise the severity or scope of a change.

### Values

By default, `ModLevel` defines two values:

| Value | Level | Meaning |
|-------|-------|---------|
| `zero` | 0 | Outermost modification scope.  Use this to mark high‑level changes such as structural edits or content replacements. |
| `one` | 1 | Nested modification scope within a larger operation.  Use this to mark secondary changes such as metadata updates during an existing edit. |

The enum has a constant constructor and a getter `level` which simply returns the index of the value.  Additional levels can be added to the enum to support deeper nesting if required.
