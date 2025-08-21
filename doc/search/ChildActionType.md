# ChildActionType

`ChildActionType` is an enumeration used by `ChildHolder` to describe what kind of event occurred when managing children.  The values indicate whether a child was added, removed, or if the action is reporting its result.

### Values

| Value | Meaning |
|-------|---------|
| `add` | Signifies that a child is about to be added.  The event callback can call `prevent()` on the `ChildAction` to veto the addition. |
| `remove` | Signifies that a child is about to be removed.  The callback can veto by calling `prevent()`. |
| `result` | Indicates that the original `add` or `remove` action has completed (or been prevented).  A `ChildActionResult` is passed to the callback so the caller can update state or run follow‑up actions. |

`ChildActionType` is used together with `ChildAction<T>` and `ChildActionResult<T>` to provide fine‑grained control over modifications to a `ChildHolder`.
