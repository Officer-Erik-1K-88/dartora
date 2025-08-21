# PatternItem

`PatternItem` is used by the [`QueryEngine`](./QueryEngine.md) to define how specific characters in a raw query string should be interpreted.  Each `PatternItem` binds a **character code** (`charCode`) to a set of flags that instruct the parser to start/stop a collector, split tokens, define required/forbidden words, define tags, or act as an escape sequence.

### Constructor

```dart
const PatternItem({
  required String name,
  required int charCode,
  String? charReplacement,
  String? regExpChar,
  bool isCollector = false,
  bool ignoreNextPattern = false,
  bool ignoreNextChar = false,
  bool isSplitter = false,
  bool definesTag = false,
  bool definesRequired = false,
  bool definesNotAllowed = false,
})
```

* `name` – human‑readable identifier used mainly for debugging and documentation.
* `charCode` – Unicode code unit of the pattern (e.g. `0x0022` for `"`).
* `charReplacement` – optional replacement string for the literal character when inserting into a word (used for wildcards).
* `regExpChar` – optional replacement used when building a regex from the word (e.g. converting a wildcard sentinel to `.*`).
* `isCollector` – if `true`, the character toggles quote mode.  When in quote mode, most other patterns are ignored.
* `ignoreNextPattern` – escape semantics; the next `PatternItem` is ignored.
* `ignoreNextChar` – escape semantics; the next character code is ignored.
* `isSplitter` – splits tokens (like whitespace).  Flushing the current buffer creates a `PointedWord`.
* `definesTag` – indicates the next word belongs to the `tags` map of the `SearchQuery` rather than the main text.
* `definesRequired` / `definesNotAllowed` – mark the next word as required or forbidden.

The constructor contains `assert`s to ensure that a pattern does not claim conflicting roles (e.g. a collector cannot also be a splitter).  It also derives two additional read‑only fields:

- `isSpecial` – `true` if any of the flags is set; used by the builder to decide whether to treat the character literally.
- `expBound` – `true` if both `charReplacement` and `regExpChar` are provided; used by the regex builder.

### Call operator

`String call({void Function(PatternItem)? action, required bool Function(PatternItem) check})` evaluates a custom predicate (`check`) against the pattern and optionally executes an action.  If the predicate returns `true`, the method returns `charReplacement` if available, otherwise the literal character.  This is used by the query builder to append characters while evaluating pattern roles.

### Equality

Two `PatternItem`s are considered equal if they share the same `charCode` and `name`.  This allows patterns to be looked up in the engine by code unit.

### Default patterns

The default `QueryEngine` defines patterns for `"` (collector), `\` (escape), space (splitter), `-` (forbidden), `#` (tag) and `*` (wildcard).  See the engine documentation for details on how these combine to parse a query.
