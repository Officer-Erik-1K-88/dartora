# QueryEngine

`QueryEngine` turns a raw query string into a structured [`SearchQuery`](./SearchQuery.md).  It uses a list of [`PatternItem`](./PatternItem.md)s to recognise special characters, handle quoting, define required/forbidden words, tag searches and wildcards.  The default engine supports a powerful but compact query syntax similar to many search engines.

### Pattern items

Each `PatternItem` defines a `charCode` (the character it matches) and a set of flags that instruct the parser how to handle that character:

- **Collector** – starts and ends a quoted region.  Text inside a collector is treated as a single required term, and special characters (except escape) are ignored.  In the default engine, `"` (double‑quote) is a collector.
- **Splitter** – splits tokens.  In the default engine, whitespace acts as a splitter.
- **DefinesTag** – marks the next term as a tag.  In the default engine, `#` defines tags.
- **DefinesRequired** – marks the next term as required.  In the default engine, words inside quotes are implicitly required.
- **DefinesNotAllowed** – marks the next term as forbidden.  In the default engine, `-` defines negation.
- **IgnoreNextPattern / IgnoreNextChar** – used for escape sequences.  In the default engine, `\` escapes the next special token or character.
- **CharReplacement / regExpChar** – optional replacement string and regular expression character used when building search expressions (e.g. converting `*` to `.` in regex).  In the default engine, `*` is replaced by a special sentinel and later converted to `.*`.

### Default engine

The static getter `QueryEngine.defaultEngine` returns an engine with the following patterns:

| Pattern | Name | Role |
|---------|------|------|
| `"` (0x0022) | hold | Collector; marks the start and end of a quoted term.  Words inside are treated as one unit and required. |
| `\\` (0x005C) | ignore | Escape; ignores the special meaning of the next pattern or character. |
| Space (0x0020) | space | Splitter; separates tokens. |
| `-` (0x002D) | cannotHave | DefinesNotAllowed; the following term is forbidden. |
| `#` (0x0023) | tag | DefinesTag; the following term matches a tag name. |
| `*` (0x002A) | wild | Wildcard; replaced with a sentinel and later converted to `.*` in the regular expression. |

The engine maps patterns by their `charCode`, so order does not matter.  The parser loops through each character of the query string and consults the engine to decide how to handle it.

### Building a query

Call `buildQuery(String queryString)` to convert a string into a `SearchQuery`.  The engine creates a new [`QueryBuilder`](./QueryBuilder.md), iterates over the code units of `queryString` and for each character does the following:

1. Look up the `PatternItem` with matching `charCode`.  If none exists, treat the character as a literal.
2. If the pattern has `isCollector`, toggle quote mode.  While in quote mode, only escape patterns have any effect; all other characters (including whitespace and other special tokens) are appended to the current term.
3. If `ignoreNextPattern` or `ignoreNextChar`, skip processing of the next character or pattern (escape semantics).
4. If `isSplitter`, flush the current term into the appropriate bucket (optional/required/forbidden/tag) based on the parser’s state flags.
5. If `definesTag`, mark the next term as belonging to `SearchQuery.tags`.  The term before the tag (if any) remains unaffected.
6. If `definesRequired` or `definesNotAllowed`, set flags so that the next term will be placed in the `require` or `cannot` bucket instead of `optional`.
7. Otherwise, append the character (or its `charReplacement`) to the current term.

Once the loop finishes, flush any remaining term.  The builder then deduplicates repeated words, assigns point values (more points for repeated occurrences) and constructs the `SearchQuery`.

### Customisation

You can create your own `QueryEngine` by supplying a different list of `PatternItem`s.  For example, you might add a new prefix to search by category or change the escape character.  When building your own engine, ensure that each pattern has a unique `charCode` and that collector patterns have balanced `isCollector` flags.  Passing your custom engine to `Search.from(queryString, engine: myEngine)` will parse queries according to your rules.
