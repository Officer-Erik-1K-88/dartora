# SearchItem

`SearchItem` is a simple container class used by [`Search`](./Search.md) to pair a `Searchable` item with its comparison result.  It is defined in `src/search/searcher.dart` as:

```dart
class SearchItem {
  String? titleChan;
  final Searchable item;
  final SearchQueryComparison comparison;
  SearchItem({ required this.item, required this.comparison });
}
```

### Fields

- `item : Searchable` – the original object that matched the search.
- `comparison : SearchQueryComparison` – the detailed comparison result, including positive/negative points and flags.
- `titleChan : String?` – an optional route or category used by some applications to indicate how the item’s title should be displayed.  It is not used by the search algorithm itself.

### Use

The `search()` method of `Search` returns a list of `SearchItem`s sorted by descending score.  You can inspect the `comparison.points.total` to see the aggregate score, or look at `comparison.hasRequired` and `comparison.containsNotAllowed` to diagnose why an item passed or failed validity.

`SearchItem` is primarily a data holder; it does not implement comparison or other behaviours itself.
