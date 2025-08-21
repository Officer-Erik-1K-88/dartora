## Iteration

`Iteration` is the foundation of Dartora’s collection framework.  It defines a **windowed view** into an underlying sequence and supports most of the operations of Dart’s built‑in `Iterable` and `List` classes without copying data.  The concept is split into two parts:

* **`IterationConstruct<E>`** – an abstract interface that specifies the API for read‑only iteration with windowing.  It exposes properties such as `startIndex`, `indexTake` and `length`, methods to retrieve elements, search for values, test predicates and perform reductions, and operations to create new views (skip, take, sublist, etc.).
* **`Iteration<E>`** – a mixin that implements `IterationConstruct<E>` on top of the standard Dart `Iterable<E>` interface.  It provides default implementations of `iterator` (using `IndexBaseIterator`), element retrieval, searching, reduction and slicing, all of which respect the window offsets.

### Windowing

Every `Iteration` has two offsets that determine which portion of the source collection is visible:

* **`startIndex`** – number of elements at the beginning of the source to skip.  Elements before `startIndex` are hidden.
* **`indexTake`** – number of elements at the end of the source to hide.  Elements after `sourceLength − indexTake` are hidden.

The visible length of the iteration is `length = (sourceLength − startIndex) − indexTake`.  Concrete implementations must provide the `sourceLength` getter and the `sourceGet(int sourceIndex)` method to retrieve the raw element from the source.

### Core properties

| Property | Meaning |
|---------|---------|
| `sourceLength` | Length of the underlying sequence.  Implementations may override this for efficiency. |
| `startIndex` | Number of hidden elements at the beginning of the source. |
| `indexTake` | Number of hidden elements at the end of the source. |
| `length` | Visible number of elements, computed from `sourceLength`, `startIndex` and `indexTake`. |
| `isEmpty` / `isNotEmpty` | Whether there are zero or at least one visible element. |

### Element retrieval

* **`first`**, **`last`** and **`single`** behave like their `Iterable` counterparts but apply the window offsets.  They throw `StateError` if the view is empty (or if `single` finds more than one element).
* **`elementAt(int index)`** – retrieves the element at position `index` within the visible window.  It performs a range check (`0 ≤ index < length`) and then calls `sourceGet(offset(index))`.  The helper `offset(i)` computes `i + startIndex`.
* **`sourceGet(int sourceIndex)`** – abstract method that returns the raw element at `sourceIndex` in the underlying sequence.  Concrete types implement this differently: for example, `IterationList` returns `_listSource.elementAt(sourceIndex)`, and `LargeIterable` computes whether the index falls in the keys or extras.

### Searching and predicates

`Iteration` implements several search methods analogous to those on `List`:

* **`indexOf(element,[start])`** – returns the first visible index where `elementAt(i) == element`, or `−1` if not found.
* **`indexWhere(test,[start])`** – returns the first visible index where `test(elementAt(i))` is true, or `−1` if none.
* **`lastIndexOf(element,[start])`**, **`lastIndexWhere(test,[start])`** – search backwards from `start` (default `length − 1`) for the last occurrence.
* **`firstWhere(test,{orElse})`**, **`lastWhere(test,{orElse})`**, **`singleWhere(test,{orElse})`** – return the first/last/single element satisfying the predicate or call `orElse`/throw if no match or multiple matches.
* **`any(test)`**, **`every(test)`**, **`contains(element)`** – test predicates over all visible elements.

### Reduction and string conversion

* **`join([separator])`** – converts each element to a string and concatenates them with an optional separator.
* **`reduce(combine)`** – reduces the elements using a binary function without an initial value (throws if empty).
* **`fold(initial, combine)`** – reduces the elements with an initial value and can return a different type.

### Mapping and slicing

`Iteration` supports creating new views rather than copying data:

* **`reversed`** – returns a view with elements in reverse order.  Concrete types may override for efficiency.
* **`getRange(start,end)`** – returns a view over the interval `[start, end)` within the visible window.  Equivalent to `skip(start).take(end − start)`.
* **`sublist(start,[end])`** – materialises the specified range into a new list.  Returns an `IterationConstruct<E>` wrapping that list.
* **`skip(count)`** / **`skipWhile(test)`** – returns a view that omits the first `count` elements or elements until the predicate returns false.
* **`take(count)`** / **`takeWhile(test)`** – returns a view of the first `count` elements or until the predicate returns false.

### Type conversion

* **`map<T>(toElement)`**, **`followedBy(other)`**, **`expand<T>(toElements)`** – return new `Iteration` views (or an `IterationItem` for `expand`) that apply a transformation or concatenation without copying the original elements.
* **`where(test)`**, **`whereType<T>()`**, **`cast<R>()`** – filter or cast the visible elements and return a view or new list.
* **`toList({growable})`**, **`toSet()`**, **`asMap()`** – materialise the visible elements into a list, set or map keyed by index.

### Concrete implementations

The abstract API is realised by several concrete classes:

* **`IterationList<E>`** – backed by a mutable `List<E>`; provides random access and supports all list operations via `IterationBase`.
* **`LargeIterable<VT,E>`** – reads from a map of values keyed by strings and optional extras, applying a transformation function on the fly.
* **`LargeList<E>`**, **`IterationHolder<E>`**, **`ImmutableIterationHolder<E>`** – represent larger or composed sequences.
* **`IterationMap<K,V>`** – adapts a map into an indexed view; see its documentation for details.

The `Iteration` mixin provides default implementations for most methods, but subclasses may override them for efficiency.  For example, `IterationList` overrides `sourceGet` to index directly into its underlying list, and `LargeIterable` overrides `map` to compose transformation functions instead of materialising intermediate sequences.
