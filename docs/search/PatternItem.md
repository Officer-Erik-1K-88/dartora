# PatternItem

Describes how a single character token should affect query parsing. Key fields:

- **`charCode`** — the character to match in the input (e.g., `0x0022` for `"`).
- **`isCollector`** — starts/stops a *collector* region (e.g., quotes) that keeps spaces and marks the term as **required**.
- **`ignoreNextPattern`** / **`ignoreNextChar`** — escape semantics (`\`).
- **`isSplitter`** — splits tokens (space).
- **`definesTag`** — marks the next collected term as a **tag** (leading `#`).
- **`definesRequired`** / **`definesNotAllowed`** — marks as **required** / **forbidden**.

Mutual‑exclusion `assert`s in the constructor ensure that a token has exactly one role among splitter/tag/required/notAllowed.
