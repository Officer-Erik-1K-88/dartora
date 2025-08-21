# RoundMode

`RoundMode` encapsulates **rounding rules** used by the [`round()`](../basic/rounding.md) function.  It defines how to interpret the digit that is discarded (the “rounder”) and how to resolve ties when rounding to a fixed number of decimal places or to the left of the decimal point.

### Fields

| Field | Type | Meaning |
|------|------|---------|
| `roundAt` | `int` | Threshold for the discarded digit.  If the rounder digit is less than this value, no rounding occurs; if it is equal or greater, rounding is considered. |
| `toEven` | `bool` | When `true`, if the last kept digit is even, ties (rounder exactly at threshold) do not round up. |
| `toOdd` | `bool` | When `true`, if the last kept digit is odd, ties do not round up. |
| `toZero` | `bool` | If rounding, round towards zero.  Ignored if `awayFromZero` is also set (the decision depends on the sign of the number). |
| `awayFromZero` | `bool` | If rounding, round away from zero. |
| `reverse` | `bool` | Swap some decisions in tie cases; can be used to implement less common rounding schemes. |
| `allowSubtract` | `bool` | If `false`, prevents rounding that would decrease the magnitude (e.g. rounding 9 down to 8 when positive). |

### Behaviour

When `round()` examines a digit, it calls `RoundMode.round(int rounder, int toRound)` to decide whether to increment, decrement, or leave the digit unchanged.  The method follows these steps:

1. **Threshold:** if `rounder < roundAt`, return `toRound` unchanged.
2. **Parity tie‑break:** if `toEven` and `toRound` is even, or if `toOdd` and `toRound` is odd, return `toRound` unchanged.  This covers banker's rounding and its variants.
3. **Direction:** set a tentative delta to `+1` if `awayFromZero` is set (or `toZero` is not set and the value is positive); set delta to `-1` if `toZero` is set (or `awayFromZero` is not set and the value is negative).  If neither `toZero` nor `awayFromZero` is set, default to rounding away from zero.
4. **Reverse:** if `reverse` is `true`, flip the delta in tie cases.  This can be used to implement rounding toward the nearest odd digit, for example.
5. **No‑subtract:** if `allowSubtract` is `false` and the delta would reduce the magnitude (i.e. positive value with `delta = -1` or negative value with `delta = +1`), set delta to `0` (no change).
6. Return `toRound + delta`.

### Predefined modes

`RoundMode` defines several static constants that implement common rounding rules:

| Name | Description |
|------|-------------|
| `halfUp` | Standard half‑up rounding: threshold at 5, round away from zero. |
| `halfEven` | Banker's rounding: threshold at 5, round to even on ties. |
| `halfOdd` | Round to odd on ties. |
| `halfAwayFrom` | Round away from zero on ties. |
| `halfToZero` | Round towards zero on ties. |
| `awayFrom` | Always round away from zero (no threshold). |
| `alwaysToZero` | Always round towards zero (no threshold). |

You can construct a custom `RoundMode` by passing values to the constructor.  For example, to round only on discarded digit ≥ 7 and always round down on ties:

```dart
const custom = RoundMode(roundAt: 7, toZero: true, allowSubtract: false);
```

Pass your custom mode to `round()` when needed.

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
