# IterationConstruct

_No summary provided in source._

_Defined in: `src/collections/iteration.dart`_

_Import_: `package:dartora/collections/iteration.dart`

---

### Constructors

#### `this.elementAt(0)`.
  E get first =\> isNotEmpty? elementAt(0) : throw StateError("IterationConstruct has no elements.");`



#### `this.elementAt(length-1)`.
  E get last =\> isNotEmpty? elementAt(length-1) : throw StateError("IterationConstruct has no elements.");`



#### `throw StateError("IterationConstruct has more or less than one element.");`



#### `RangeError.checkNotNegative(index, "index");`



#### `return sourceGet(offset(index));`



#### `sourceGet(offset(index))`.
  ///
  /// May iterate through the elements in iteration order, ignoring the
  /// first [sourceIndex] elements and then returning the next.
  /// Some iterables may have a more efficient way to find the element.
  E sourceGet(int sourceIndex);`



#### `return indexWhere((elm) =\> elm == element, start);`



#### `return lastIndexWhere((elm) =\> elm == element, start);`



#### `for (int i=start ?? (length-1);`



#### `elementAt(i);`



#### `if (orElse != null) return orElse();`



#### `throw StateError('No elements in IterationList meet test.');`



#### `elementAt(i);`



#### `if (orElse != null) return orElse();`



#### `throw StateError('No elements in IterationItem meet test.');`



#### `elementAt(i);`



#### `if (ret != null) throw StateError('Too many elements in IterationItem meet test.');`



#### `if (orElse != null) return orElse();`



#### `throw StateError('No elements in IterationList meet test.');`



#### `elementAt(i);`



#### `elementAt(i);`



#### `if (s.isEmpty) return elm.toString();`



#### `combine(value, elementAt(i));`



#### `An empty range (with `end == start`) is valid.
  ///
  /// The returned [Iterable] behaves like `skip(start).take(end - start)`.
  /// That is, it does *not* break if this list changes size, it just
  /// ends early if it reaches the end of the list early
  /// (if `end`, or even `start`, becomes greater than [length]).
  IterationConstruct\<E\> getRange(int start, int end);`



#### `IterationConstruct\<E\> sublist(int start, [int? end]);`



#### `IterationConstruct\<E\> skip(int count);`



#### `i\<length; i++) {
      if (!test(elementAt(i))) {
        count = i;
        break;
      }
    }
    return skip(count);
  }
  
  /// Creates a lazy iterable of the [count] first elements of this iterable.
  ///
  /// The returned `Iterable` may contain fewer than `count` elements, if `this`
  /// contains fewer than `count` elements.
  ///
  /// The elements can be computed by stepping through [iterator] until [count]
  /// elements have been seen.
  ///
  /// The [count] must not be negative.
  IterationConstruct\<E\> take(int count);`



#### `return take(length - count);`



#### `List.generate(length, elementAt, growable: growable);`



#### `Set\<E\> toSet() =\> toList().toSet();`



#### `LinkedHashMap();`



#### `elementAt(i);`



### Fields

#### `int get startIndex;`



#### `startIndex;`



#### `int get indexTake;`



#### `int get sourceLength;`



#### `indexTake;`



#### `start;`



#### `length;`



#### `return i;`



#### `return i;`



#### `length;`



#### `return elm;`



#### `return elm;`



#### `ret;`



#### `length;`



#### `elm;`



#### `return ret;`



#### `length;`



#### `return true;`



#### `return false;`



#### `length;`



#### `return false;`



#### `return true;`



#### `first;`



#### `length;`



#### `return value;`



#### `initialValue;`



#### `i\<length; i++) {
      value = combine(value, elementAt(i));
    }
    return value;
  }

  // Mapping
  
  /// An [Iterable] of the objects in this list in reverse order.
  IterationConstruct\<E\> get reversed;`



#### `length;`



#### `length;`



#### `length;`



#### `i;`



#### `break;`



#### `length;`



#### `return ret;`





### Methods

#### `int offset(int index) {`



#### `Index zero represents the first element (so `iterable.elementAt(0)` is
  /// equivalent to `iterable.first`).
  /// Index `length-1` represents the last element (so `iterable.elementAt(length-1)` is
  /// equivalent to `iterable.last`).
  ///
  /// Refer to [sourceGet] for element retrieval behavior.
  E elementAt(int index) {`



#### `int indexOf(E element, [int start = 0]) {`



#### `test(o)` is true,
  /// the index of `o` is returned.
  ///
  /// Returns -1 if nothing satisfies [test].
  int indexWhere(bool Function(E element) test, [int start = 0]) {`



#### `if (test(elementAt(i))) {`



#### `int lastIndexOf(E element, [int? start]) {`



#### `test(o)` is true,
  /// the index of `o` is returned.
  /// If [start] is omitted, it defaults to the [length] of the list.
  ///
  /// Returns -1 if nothing satisfies [test].
  int lastIndexWhere(bool Function(E element) test, [int? start]) {`



#### `if (test(elementAt(i))) {`



#### `if (test(elm)) {`



#### `if (test(elm)) {`



#### `if (test(elm)) {`



#### `bool any(bool Function(E element) test) {`



#### `if (test(elm)) {`



#### `bool every(bool Function(E element) test) {`



#### `if (!test(elm)) {`



#### `String join([String separator = ""]) {`



#### `return fold("", (s, elm) {`



#### `E reduce(E Function(E value, E element) combine) {`



#### `T Function(T previousValue, E element) combine) {`



#### `test(element)` returns
  /// true. If all elements satisfy `test` the resulting iterable is empty,
  /// otherwise it iterates the remaining elements in their original order,
  /// starting with the first element for which `test(element)` returns `false`.
  IterationConstruct\<E\> skipWhile(bool Function(E value) test) {`



#### `test(element)` is false. At that point,
  /// the returned iterable stops (its `moveNext()` returns false).
  IterationConstruct\<E\> takeWhile(bool Function(E value) test) {`



#### `if (!test(elementAt(i))) {`



#### `Map\<int, E\> asMap() {`


