# ModResetType

`ModResetType` is an enumeration used by [`ModificationListener`](ModificationListener.md) to indicate whether any modifications occurred since the last reset.  When you call `ModificationListener.reset()`, it passes itself and a `ModResetType` to the `onReset` callback so you can decide how to respond.

### Values

| Value | Meaning |
|-------|---------|
| `modified` | At least one modification step occurred since the last reset (i.e. `ModificationListener.beenModified` was `true`). |
| `unmodified` | No modification steps were recorded since the last reset. |

When implementing an `onReset` callback, you can use the `ModResetType` to trigger actions such as updating UI, saving state or ignoring the reset if nothing changed.
