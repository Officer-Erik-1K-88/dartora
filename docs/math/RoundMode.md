# RoundMode

A configurable rounding policy used by `round()` to decide whether to increment, decrement, or keep the last retained digit.

## Fields
- **`roundAt`** (`int`) — threshold digit (0–9). When the discarded digit (`rounder`) is ≥ `roundAt`, rounding logic is considered; otherwise the value is left unchanged.
- **`toEven` / `toOdd`** (`bool`) — if set, prefer a **tie-breaking** rule that rounds toward an even/odd `toRound` digit. If the parity rule triggers, the rest of the steps are skipped.
- **`toZero` / `awayFromZero`** (`bool`) — direction when rounding is needed. If both are `true`, negatives use **toZero** and positives use **awayFromZero**.
- **`reverse`** (`bool`) — flips some decisions in tie cases (see Step 3 below) to bias the outcome.
- **`allowSubtract`** (`bool`) — if `false`, prevents rounding that would *decrease* magnitude for positives or *increase* magnitude for negatives.

## Algorithm (from source)
Given the discarded digit **`rounder`** (0–9) and the last kept digit **`toRound`** (signed by the input value):

1. **Threshold:** If `rounder < roundAt` → return `toRound` (no change).
2. **Parity (optional):** If `toEven` and `toRound` is even, or `toOdd` and `toRound` is odd → return `toRound` (no change).
3. **Direction:** Apply `toZero` / `awayFromZero` depending on sign of `toRound` (negatives use `toZero`, positives use `awayFromZero` when both set). This yields a tentative delta ∈ {−1, 0, 1}.
4. **Reverse (optional):** If `reverse` is `true`, flip the delta in specific tie cases outlined in the source.
5. **No‑subtract (optional):** If `allowSubtract` is `false`, clamp a delta that would reduce magnitude (positive values with `-1` or negative values with `+1`) to `0`.
6. **Apply:** Return `toRound + delta`. The wrapper `round()` then writes the new digit back (or carries if the result is `±10`).

### Built‑in Modes
This table summarizes the default modes defined in the package:

| Mode | roundAt | toEven | toOdd | toZero | awayFromZero | reverse | allowSubtract |
|---|---:|:---:|:---:|:---:|:---:|:---:|:---:|
| `halfUp` | 5 | false | false | false | false | false | true |
| `halfEven` | 5 | true | false | false | false | false | true |
| `halfOdd` | 5 | false | true | false | false | false | true |
| `halfAwayFrom` | 5 | false | false | false | true | false | true |
| `halfToZero` | 5 | false | false | true | false | false | true |
| `awayFrom` | 0 | false | false | false | true | false | true |
| `alwaysToZero` | 10 | false | false | true | false | false | true |

## See also
- [`round()`](../math/_functions/round.md) — formats and rounds a `double` to a given number of decimals.
