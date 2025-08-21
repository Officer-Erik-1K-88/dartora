# QueryBuilder

`QueryBuilder` is a state machine used internally by `QueryEngine` to assemble the words and tags of a `SearchQuery` while scanning the raw query string.  It maintains multiple buffers and flags to determine how the next characters should be interpreted.

### State fields

| Field | Purpose |
|-------|---------|
| `current : StringBuffer` | Accumulates characters for the current term.  When a splitter or end of input is reached, the buffer is flushed into the appropriate list. |
| `optional : List<PointedWord>` | Stores optional words along with their points. |
| `require : List<PointedWord>` | Stores required words. |
| `cannot : List<PointedWord>` | Stores forbidden words. |
| `tags : Map<String, List<PointedWord>>` | Stores tag words keyed by tag name. |
| `ignoreSpecial : bool` | When `true`, treat special patterns as literals.  Set by `ignoreNextPattern` (escape). |
| `ignoreChar : bool` | When `true`, skip the current character entirely.  Set by `ignoreNextChar` (escape). |
| `add : QueryType` | Indicates whether the next word should be optional, required or forbidden. |
| `holding : bool` | Indicates quote mode; special characters are ignored while holding except escapes and wildcard replacements. |
| `holdingAsTag : bool` | Indicates that the current quoted block should be treated as a tag name rather than text. |
| `tagName : String?` | Temporary storage for the name of a tag being parsed. |

### Core methods

#### `void onChar(QueryEngine engine, int charCode)`

Called for each code unit in the query string.  It performs the following steps:

1. If `ignoreChar` is `true`, clear the flag and return (skip the character).
2. Look up the `PatternItem` for `charCode` in the engine.
3. If `ignoreSpecial` is `true`, treat the pattern as a literal and append its character to `current`; clear the flag.
4. If in quote mode (`holding`), only `ignoreNextPattern` and `ignoreNextChar` patterns are handled.  Wildcards (`*`) are appended as special sentinel characters; other patterns are treated as literals.  When encountering another collector pattern (e.g. closing quote), flush the current term and exit quote mode.
5. Otherwise, if the pattern is a collector, enter quote mode; if it is a splitter, flush `current` to the appropriate bucket; if `definesTag`, set `holdingAsTag` and flush `current`; if `definesRequired` or `definesNotAllowed`, set `add` accordingly; if `ignoreNextPattern` or `ignoreNextChar`, set `ignoreSpecial` or `ignoreChar`; if it has a `charReplacement` and `regExpChar`, append the replacement; otherwise, treat as a literal.

#### `void append(QueryEngine engine)`

Flushes the current buffer into the correct bucket based on the state flags:

- If `current` is empty, return.
- Determine the `QueryType` from `add` and `holdingAsTag` flags.
- Deduplicate within the bucket: if the same word already exists, increment its points (reflecting repeated occurrence) rather than adding a new entry.
- Reset flags (`holdingAsTag`, `add`, `tagName`) and clear `current`.

#### `SearchQuery build(QueryEngine engine, List<int> codeUnits)`

Iterates through all characters with `onChar()` and then calls `append()` to flush any remaining term.  Finally, constructs and returns a `SearchQuery` with the populated lists and tag map.

### Notes

`QueryBuilder` is not intended for external use.  Instead, use `QueryEngine.buildQuery()` or `SearchQuery.from()` to parse queries.  Understanding its internals can help you modify the query syntax by creating custom `PatternItem`s and adjusting state transitions.
