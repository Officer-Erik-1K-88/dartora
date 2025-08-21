# QueryEngine

Parses user query strings into a [`SearchQuery`](./SearchQuery.md) using a configurable set of token patterns (`PatternItem`s).

## Defaults
The built‑in `defaultEngine` recognizes the following patterns:

| Token | char | Role | Notes |
|---|:--:|---|---|
| `ignore` | `\` | ignoreNextPattern | Backslash escape (ignore next pattern). |
| `hold` | `"` | isCollector & definesRequired | Double quotes; treat inside as one unit and mark **required**. |
| `space` | ` ` | isSplitter | Whitespace splitter between tokens. |
| `cannotHave` | `-` | definesNotAllowed | Dash; mark next token as **forbidden**. |
| `tag` | `#` | definesTag | Hash; tag search. |
| `wild` | `*` | wildcard | Asterisk; replaced with regex `.` and a sentinel to avoid collisions. |

Order of `PatternItem`s does not matter; the engine maps by `charCode`.

## Building
- **`buildQuery(String)`** drives a [`QueryBuilder`](./QueryBuilder.md) over the string's code units.
- Tokens control whether words are **optional**, **required**, or **forbidden**, and whether they are interpreted as **tags**.

## Scoring
Delegates to `SearchQuery.getPoints()`, which:
- counts **occurrences** per positive word using a regex built from the engine (supports wildcards),
- adds **positive points** for each positive word present,
- adds **negative points** once if a forbidden word matches,
- computes a **modifier** using a stepwise growth function (log₂‑based), increasing weight for repeated hits,
- returns a [`Points`](../math/Points.md) object whose `total = positive*modifier - negative`.
