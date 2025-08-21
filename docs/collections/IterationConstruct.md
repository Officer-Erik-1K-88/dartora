# IterationConstruct<E>

Abstract interface defining iteration over a subrange of a source iterable.

## Core concepts
- **startIndex** and **indexTake** define a window into the source iterable.
- `offset(index)` translates an index within the view to a position in the source.
- `elementAt(index)` retrieves elements, delegating to `sourceGet(offset(index))`.

## Query operations
Implements many familiar `Iterable` methods (e.g., `indexOf`, `firstWhere`, `lastWhere`, `reduce`, `fold`) to operate within the window.

## Slicing
Defines methods like `getRange`, `sublist`, `skip`, `skipWhile`, `take`, and `takeWhile` to build new `IterationConstruct` views without copying.
