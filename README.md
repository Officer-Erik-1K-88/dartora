<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

# Dartora

A, batteries‑included utility package, that was built for Dart. It provides:

- **Collections**: ordered maps, multi‑view/large lists, rich iteration utilities.
- **Search**: a lightweight query engine with tags, required/forbidden terms, wildcards, and scoring.
- **Math**: robust rounding modes, roots/logs, comparison helpers, points/scoring types, matrices, curves, radix utilities, and constants.
- **Utilities**: modification tracking helpers and structured error types.

---

## Getting started

Add **dartora** to your project:

```bash
dart pub add dartora
```

Then import what you need:

```dart
import 'package:dartora/dartora.dart';
// or narrowly:
import 'package:dartora/collections.dart';
import 'package:dartora/search.dart';
import 'package:dartora/math.dart';
import 'package:dartora/util.dart';
```

---

## Features

### Collections

We added many different types of collections in.

- **Iteration** primitives: `IterationConstruct<E>`, `Iteration<E>`, `IterationBase<E>`, `IterationMap<K, V>`.
- **Iteration** defined: `IterationItem<E>`, `IterationList<E>`, `IterationHolder<E>`, `IterationItemMap<K, V>`.
- **Iterators**: `IteratorBuild<E>`, `IndexBaseIterator<E>`, `HolderIterator<E>`.
- **Lists**: `MultiViewList<E>`, `LargeList<E>`, `IterableItems<E>`.
- **Maps**: `OrderedMap<K,V>` – insertion‑ordered map with stable key order.

#### ordered map & multi‑view list

```dart
import 'package:dartora/collections.dart';

final omap = OrderedMap<String, int>(map: {});
omap['b'] = 2;
omap['a'] = 1;
// Keeps insertion order across keys & iteration
for (final k in omap.keys) {
  print('$k → ${omap[k]}');
}
```

`MultiViewList` and `LargeList` help you present slices/views over large datasets without copying.

### Search

We added a way to build out simple search systems.

- **Model**: `Searchable`, `Tags`, `Tag<E>`.
- **Engine**: `Search`, `SearchQuery`, `QueryEngine`, `QueryBuilder`, `PatternItem`, `SearchQueryComparison`, `SearchItem`.

#### tags, required/forbidden, wildcard

```dart
import 'package:dartora/search.dart';

// Minimal Searchable using the factory
final items = [
  Searchable.build(
    id: '1', name: 'Red Apple', type: SearchableType.child,
    title: 'Apple', description: 'A sweet red fruit',
    tags: Tags([
      Tag<bool>('red', true),
      Tag<String>('category', 'fruit'),
    ]),
  ),
  Searchable.build(
    id: '2', name: 'Green Kale', type: SearchableType.child,
    title: 'Kale', description: 'Leafy and bitter',
    tags: Tags([
      Tag<bool>('green', true),
      Tag<String>('category', 'vegetable'),
    ]),
  ),
];

// Build a query from a human string
final search = Search.from('"sweet" -bitter #red app*');
final results = search.search(held: items);
for (final si in results) {
  print('${si.item.title}: ${si.comparison.points.total}');
}
```

**Default query syntax** (via `QueryEngine.defaultEngine`):

| Token | Meaning | Notes |
|------:|---------|-------|
| `"..."` | Collector; marks a **required** phrase | e.g. `"sweet fruit"` must appear |
| `-` | **Forbidden** word/phrase | e.g. `-bitter` |
| `#` | Tag search | e.g. `#red` or `#category` |
| `*` | Wildcard | e.g. `app*` → `apple`, `application`, ... |
| `\` | Escape next special token | e.g. `\#literal` |
| space | Splits terms | terms are scored individually |

The engine produces a `SearchQuery` with **optional**, **required**, **cannot** and **tag** groups, and computes a `SearchQueryComparison` with a `Points` score. Use `Search.validityCheck`/`itemCheck` to filter invalid hits.

### Math

We added several new mathematical computations in.

- **Basic**: `round(...)` + `RoundMode`, `root`, `log` helpers, `comparison` utilities.
- **Advanced**: `Points` (scoring), `Matrix`, `curves`, `BaseRadix`, `Points` collection helpers.
- **Constants**: common numeric constants.

#### deterministic rounding

```dart
import 'package:dartora/math.dart';

final a = round(2.34567, decimals: 2);                // 2.35 (default: halfUp)
final b = round(2.5, mode: RoundMode.halfEven);       // 2.0 → banker's rounding
final c = round(-3.5, mode: RoundMode.halfAwayFrom);  // -4.0 → away from zero
```

**Available modes** (see `RoundMode`): `halfUp`, `halfEven`, `halfOdd`, `halfAwayFrom`, `halfToZero`, `awayFrom`, `alwaysToZero`.

### Util

This part of the package is really simple, it has the utilities that
were built because of this package.

- **Modification tracking**: `ModificationListener`, `ModLevel`, `ModificationAction`.
- **Errors**: `BaseException`, `TypeException`, `KeyException` with helpful messages.

---

## Usage

### Custom search syntax

For search, you can customize the parser by supplying your own `QueryEngine(patternItems: [...])`.

```dart
final engine = QueryEngine(patternItems: const [
  PatternItem.ignore,     // \
  PatternItem.hold,       // "..."
  PatternItem.space,      // space
  PatternItem.cannotHave, // -
  PatternItem.tag,        // #
  PatternItem.wild,       // *
]);
final query = SearchQuery.from('ice -hot #dessert', engine: engine);
```

### Custom rounding mode

`RoundMode` is fully configurable: you can construct custom modes (even/odd/zero/away, thresholds, reversal, etc.).

```dart
const bankerTowardZero = RoundMode(
  roundAt: 5,
  reverse: false,
  toEven: true,
  toOdd: false,
  toZero: true,
  awayFromZero: false,
  allowSubtract: false,
);
final v = round(12.55, decimals: 1, mode: bankerTowardZero);
```

---

## Additional information

### Contributing

- Open issues/PRs with reproducible cases.
- Keep public APIs documented; prefer small, composable utilities.
- Tests are appreciated for edge cases.

### License

Licensed under the **Apache License, Version 2.0**.
