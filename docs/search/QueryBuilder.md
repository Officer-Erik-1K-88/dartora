# QueryBuilder

State machine used by [`QueryEngine`](./QueryEngine.md) to accumulate words into a `SearchQuery`:

- **Flags:** `ignoreSpecial`, `ignoreChar`, `add` (controls target list: optional/required vs forbidden), `holding` (inside quotes), `holdingAsTag`.
- **Buffers:** `current` (current token), `optional`, `require`, `cannot`, `tags` (maps tag name → words).
- **Core methods:**
  - `onChar(engine, charCode)` — interprets the next char according to the matching `PatternItem` and updates state.
  - `append(engine)` — flushes `current` into the right bucket with computed points.
  - `build(engine, queryCodeUnits)` — runs the loop and returns a populated [`SearchQuery`](./SearchQuery.md).
