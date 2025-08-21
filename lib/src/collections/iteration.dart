import 'dart:collection';
import 'dart:math';

import 'iterators.dart';

// Iterables

abstract interface class IterationConstruct<E> {
  /// Defines the number of elements of the start
  /// that won't be accessible.
  int get startIndex;

  /// Used to apply [startIndex] to [index]
  /// for when calling up the source [Iterable].
  int offset(int index) {
    return index + startIndex;
  }

  /// Defines the number of elements of the end
  /// that won't be accessible.
  int get indexTake;

  /// The number of elements in the source [Iterable].
  ///
  /// Counting all elements may involve iterating through all elements and can
  /// therefore be slow.
  /// Some iterables have a more efficient way to find the number of elements.
  /// These *must* override the default implementation of `sourceLength`.
  int get sourceLength;

  /// The number of elements in this [Iteration].
  int get length => (sourceLength - startIndex) - indexTake;

  /// Whether this collection has no elements.
  bool get isEmpty => length == 0;
  
  /// Whether this collection has at least one element.
  bool get isNotEmpty => length != 0;

  // Element retrieval

  /// The first element.
  ///
  /// Throws a [StateError] if `this` is empty.
  /// Otherwise returns the first element in the iteration order,
  /// equivalent to `this.elementAt(0)`.
  E get first => isNotEmpty? elementAt(0) : throw StateError("IterationConstruct has no elements.");

  /// The last element.
  ///
  /// Throws a [StateError] if `this` is empty.
  /// Otherwise returns the last element in the iteration order,
  /// equivalent to `this.elementAt(length-1)`.
  E get last => isNotEmpty? elementAt(length-1) : throw StateError("IterationConstruct has no elements.");

  /// Checks that this iterable has only one element, and returns that element.
  ///
  /// Throws a [StateError] if `this` is empty or has more than one element.
  E get single => length==1? first : throw StateError("IterationConstruct has more or less than one element.");

  /// Returns the [index]th element.
  ///
  /// The [index] must be non-negative and less than [length].
  /// Index zero represents the first element (so `iterable.elementAt(0)` is
  /// equivalent to `iterable.first`).
  /// Index `length-1` represents the last element (so `iterable.elementAt(length-1)` is
  /// equivalent to `iterable.last`).
  ///
  /// Refer to [sourceGet] for element retrieval behavior.
  E elementAt(int index) {
    RangeError.checkNotNegative(index, "index");
    return sourceGet(offset(index));
  }

  /// The method to get the element in source list.
  ///
  /// The main use of this method is internally for [elementAt],
  /// The exact call is `sourceGet(offset(index))`.
  ///
  /// May iterate through the elements in iteration order, ignoring the
  /// first [sourceIndex] elements and then returning the next.
  /// Some iterables may have a more efficient way to find the element.
  E sourceGet(int sourceIndex);

  // Element look-up

  /// The first index of [element] in this list.
  ///
  /// Searches the list from index [start] to the end of the list.
  /// The first time an object `o` is encountered so that `o == element`,
  /// the index of `o` is returned.
  ///
  /// Returns -1 if [element] is not found.
  int indexOf(E element, [int start = 0]) {
    return indexWhere((elm) => elm == element, start);
  }

  /// The first index in the list that satisfies the provided [test].
  ///
  /// Searches the list from index [start] to the end of the list.
  /// The first time an object `o` is encountered so that `test(o)` is true,
  /// the index of `o` is returned.
  ///
  /// Returns -1 if nothing satisfies [test].
  int indexWhere(bool Function(E element) test, [int start = 0]) {
    for (int i=start; i<length; i++) {
      if (test(elementAt(i))) {
        return i;
      }
    }
    return -1;
  }

  /// The last index of [element] in this list.
  ///
  /// Searches the list backwards from index [start] to 0.
  ///
  /// The first time an object `o` is encountered so that `o == element`,
  /// the index of `o` is returned.
  ///
  /// If [start] is not provided, this method searches from the end of the
  /// list.
  ///
  /// Returns -1 if [element] is not found.
  int lastIndexOf(E element, [int? start]) {
    return lastIndexWhere((elm) => elm == element, start);
  }

  /// The last index in the list that satisfies the provided [test].
  ///
  /// Searches the list from index [start] to 0.
  /// The first time an object `o` is encountered so that `test(o)` is true,
  /// the index of `o` is returned.
  /// If [start] is omitted, it defaults to the [length] of the list.
  ///
  /// Returns -1 if nothing satisfies [test].
  int lastIndexWhere(bool Function(E element) test, [int? start]) {
    for (int i=start ?? (length-1); i>=0; i++) {
      if (test(elementAt(i))) {
        return i;
      }
    }
    return -1;
  }

  /// The first element that satisfies the given predicate [test].
  ///
  /// Iterates through elements and returns the first to satisfy [test].
  ///
  /// If no element satisfies [test], the result of invoking the [orElse]
  /// function is returned.
  /// If [orElse] is omitted, it defaults to throwing a [StateError].
  /// Stops iterating on the first matching element.
  E firstWhere(bool Function(E element) test, {E Function()? orElse}) {
    for (int i=0; i<length; i++) {
      E elm = elementAt(i);
      if (test(elm)) {
        return elm;
      }
    }
    if (orElse != null) return orElse();
    throw StateError('No elements in IterationList meet test.');
  }

  /// The last element that satisfies the given predicate [test].
  ///
  /// An iterable that can access its elements directly may check its
  /// elements in any order (for example a list starts by checking the
  /// last element and then moves towards the start of the list).
  /// The default implementation iterates elements in iteration order,
  /// checks `test(element)` for each,
  /// and finally returns that last one that matched.
  ///
  /// If no element satisfies [test], the result of invoking the [orElse]
  /// function is returned.
  /// If [orElse] is omitted, it defaults to throwing a [StateError].
  E lastWhere(bool Function(E element) test, {E Function()? orElse}) {
    for (int i=length-1; i >= 0; i++) {
      E elm = elementAt(i);
      if (test(elm)) {
        return elm;
      }
    }
    if (orElse != null) return orElse();
    throw StateError('No elements in IterationItem meet test.');
  }

  /// The single element that satisfies [test].
  ///
  /// Checks elements to see if `test(element)` returns true.
  /// If exactly one element satisfies [test], that element is returned.
  /// If more than one matching element is found, throws [StateError].
  /// If no matching element is found, returns the result of [orElse].
  /// If [orElse] is omitted, it defaults to throwing a [StateError].
  ///
  /// When no matching element is found, the result of calling [orElse] is
  /// returned instead.
  ///
  /// There must not be more than one matching element.
  E singleWhere(bool Function(E element) test, {E Function()? orElse}) {
    E? ret;
    for (int i=0; i<length; i++) {
      E elm = elementAt(i);
      if (test(elm)) {
        if (ret != null) throw StateError('Too many elements in IterationItem meet test.');
        ret = elm;
      }
    }
    if (ret != null) return ret;
    if (orElse != null) return orElse();
    throw StateError('No elements in IterationList meet test.');
  }

  // validation checks

  /// Checks whether any element of this iterable satisfies [test].
  ///
  /// Checks every element in iteration order, and returns `true` if
  /// any of them make [test] return `true`, otherwise returns false.
  /// Returns `false` if the iterable is empty.
  bool any(bool Function(E element) test) {
    for (int i=0; i<length; i++) {
      E elm = elementAt(i);
      if (test(elm)) {
        return true;
      }
    }
    return false;
  }

  /// Checks whether every element of this iterable satisfies [test].
  ///
  /// Checks every element in iteration order, and returns `false` if
  /// any of them make [test] return `false`, otherwise returns `true`.
  /// Returns `true` if the iterable is empty.
  bool every(bool Function(E element) test) {
    for (int i=0; i<length; i++) {
      E elm = elementAt(i);
      if (!test(elm)) {
        return false;
      }
    }
    return true;
  }

  // Reduction

  /// Converts each element to a [String] and concatenates the strings.
  ///
  /// Iterates through elements of this iterable,
  /// converts each one to a [String] by calling [Object.toString],
  /// and then concatenates the strings, with the
  /// [separator] string interleaved between the elements.
  String join([String separator = ""]) {
    return fold("", (s, elm) {
      if (s.isEmpty) return elm.toString();
      return "$s$separator${elm.toString()}";
    });
  }

  /// Reduces a collection to a single value by iteratively combining elements
  /// of the collection using the provided function.
  ///
  /// The iterable must have at least one element.
  /// If it has only one element, that element is returned.
  ///
  /// Otherwise this method starts with the first element from the iterator,
  /// and then combines it with the remaining elements in iteration order.
  ///
  /// Consider using [fold] if the iterable can be empty.
  E reduce(E Function(E value, E element) combine) {
    E value = first;
    for (int i=1; i<length; i++) {
      value = combine(value, elementAt(i));
    }
    return value;
  }

  /// Reduces a collection to a single value by iteratively combining each
  /// element of the collection with an existing value
  ///
  /// Uses [initialValue] as the initial value,
  /// then iterates through the elements and updates the value with
  /// each element using the [combine] function.
  T fold<T>(T initialValue, T Function(T previousValue, E element) combine) {
    T value = initialValue;
    for (int i=0; i<length; i++) {
      value = combine(value, elementAt(i));
    }
    return value;
  }

  // Mapping
  
  /// An [Iterable] of the objects in this list in reverse order.
  IterationConstruct<E> get reversed;

  /// Creates an [Iterable] that iterates over a range of elements.
  ///
  /// The returned iterable iterates over the elements of this list
  /// with positions greater than or equal to [start] and less than [end].
  ///
  /// The provided range, [start] and [end], must be valid at the time
  /// of the call.
  /// A range from [start] to [end] is valid if 0 ≤ `start` ≤ `end` ≤ [length].
  /// An empty range (with `end == start`) is valid.
  ///
  /// The returned [Iterable] behaves like `skip(start).take(end - start)`.
  /// That is, it does *not* break if this list changes size, it just
  /// ends early if it reaches the end of the list early
  /// (if `end`, or even `start`, becomes greater than [length]).
  IterationConstruct<E> getRange(int start, int end);

  /// Returns a new list containing the elements between [start] and [end].
  ///
  /// The new list is a `List<E>` containing the elements of this list at
  /// positions greater than or equal to [start] and less than [end] in the same
  /// order as they occur in this list.
  ///
  /// If [end] is omitted, it defaults to the [length] of this list.
  ///
  /// The `start` and `end` positions must satisfy the relations
  /// 0 ≤ `start` ≤ `end` ≤ [length].
  /// If `end` is equal to `start`, then the returned list is empty.
  IterationConstruct<E> sublist(int start, [int? end]);
  
  /// Creates an [Iterable] that provides all but the first [count] elements.
  ///
  /// When the returned iterable is iterated, it starts iterating over `this`,
  /// first skipping past the initial [count] elements.
  /// If `this` has fewer than `count` elements, then the resulting Iterable is
  /// empty.
  /// After that, the remaining elements are iterated in the same order as
  /// in this iterable.
  ///
  /// Some iterables may be able to find later elements without first iterating
  /// through earlier elements, for example when iterating a [List].
  /// Such iterables are allowed to ignore the initial skipped elements.
  ///
  /// The [count] must not be negative.
  IterationConstruct<E> skip(int count);
  
  /// Creates an `Iterable` that skips leading elements while [test] is satisfied.
  ///
  /// The filtering happens lazily. Every new [Iterator] of the returned
  /// iterable iterates over all elements of `this`.
  ///
  /// The returned iterable provides elements by iterating this iterable,
  /// but skipping over all initial elements where `test(element)` returns
  /// true. If all elements satisfy `test` the resulting iterable is empty,
  /// otherwise it iterates the remaining elements in their original order,
  /// starting with the first element for which `test(element)` returns `false`.
  IterationConstruct<E> skipWhile(bool Function(E value) test) {
    int count = length;
    for (int i=0; i<length; i++) {
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
  IterationConstruct<E> take(int count);
  
  /// Creates a lazy iterable of the leading elements satisfying [test].
  ///
  /// The filtering happens lazily. Every new iterator of the returned
  /// iterable starts iterating over the elements of `this`.
  ///
  /// The elements can be computed by stepping through [iterator] until an
  /// element is found where `test(element)` is false. At that point,
  /// the returned iterable stops (its `moveNext()` returns false).
  IterationConstruct<E> takeWhile(bool Function(E value) test) {
    int count = length;
    for (int i=0; i<length; i++) {
      if (!test(elementAt(i))) {
        count = i;
        break;
      }
    }
    return take(length - count);
  }

  // Setting to other type

  /// Creates a [List] containing the elements of this [Iterable].
  ///
  /// The elements are in iteration order.
  /// The list is fixed-length if [growable] is false.
  List<E> toList({bool growable = true}) => List.generate(length, elementAt, growable: growable);
  
  /// Creates a [Set] containing the same elements as this iterable.
  ///
  /// The set may contain fewer elements than the iterable,
  /// if the iterable contains an element more than once,
  /// or it contains one or more elements that are equal.
  /// The order of the elements in the set is not guaranteed to be the same
  /// as for the iterable.
  Set<E> toSet() => toList().toSet();

  /// An unmodifiable [Map] view of this list.
  ///
  /// The map uses the indices of this list as keys and the corresponding objects
  /// as values. The `Map.keys` [Iterable] iterates the indices of this list
  /// in numerical order.
  Map<int, E> asMap() {
    LinkedHashMap<int, E> ret = LinkedHashMap();
    for (int i=0; i < length; i++) {
      ret[i] = elementAt(i);
    }
    return ret;
  }
}

abstract mixin class Iteration<E> implements IterationConstruct<E>, Iterable<E> {
  @override
  int offset(int index) {
    return index + startIndex;
  }

  /// A new `Iterator` that allows iterating the elements of
  /// the source [Iterable].
  ///
  /// Iteration classes should specify the
  /// iteration order of their elements.
  /// However, they may leave it unspecified for [Set] like behavior.
  ///
  /// Each time `sourceIterator` is read, it returns a new iterator,
  /// which can be used to iterate through all the elements again.
  /// The iterators of the same iterable can be stepped through independently,
  /// but should return the same elements in the same order,
  /// as long as the underlying collection isn't changed.
  ///
  /// Modifying the collection may cause new iterators to produce
  /// different elements, and may change the order of existing elements.
  ///
  /// Modifying the underlying collection after creating the new iterator
  /// may cause an error the next time [Iterator.moveNext] is called
  /// on that iterator.
  /// Any *modifiable* iterable class should specify which operations will
  /// break iteration.
  Iterator<E> get sourceIterator;
  
  @override
  int get sourceLength {
    int count = 0;
    Iterator<Object?> it = sourceIterator;
    while (it.moveNext()) {
      count++;
    }
    return count;
  }

  @override
  int get length => (sourceLength - startIndex) - indexTake;

  @override
  bool get isEmpty => length == 0;

  @override
  bool get isNotEmpty => length != 0;

  // Iteration over self

  /// A new `Iterator` that allows iterating the elements of this `Iterable`.
  ///
  /// Each time `iterator` is read, it returns a new iterator,
  /// which can be used to iterate through all the elements again.
  /// The iterators of the same iterable can be stepped through independently,
  /// but should return the same elements in the same order,
  /// as long as the underlying collection isn't changed.
  ///
  /// Modifying the collection may cause new iterators to produce
  /// different elements, and may change the order of existing elements.
  ///
  /// Modifying the underlying collection after creating the new iterator
  /// may cause an error the next time [Iterator.moveNext] is called
  /// on that iterator.
  @override
  Iterator<E> get iterator => IndexBaseIterator(iterable: this);

  /// Invokes [action] on each element of this iterable in iteration order.
  ///
  /// Example:
  /// ```dart
  /// final numbers = <int>[1, 2, 6, 7];
  /// numbers.forEach(print);
  /// // 1
  /// // 2
  /// // 6
  /// // 7
  /// ```
  @override
  void forEach(void Function(E element) action) {
    for (int i=0; i<length; i++) {
      action(elementAt(i));
    }
  }

  // Element retrieval

  @override
  E get first => isNotEmpty? elementAt(0) : throw StateError("IterationBuild has no elements.");

  @override
  E get last => isNotEmpty? elementAt(length-1) : throw StateError("IterationBuild has no elements.");

  @override
  E get single => length==1? first : throw StateError("IterationBuild has more or less than one element.");

  /// The object at the given [index] in the list.
  ///
  /// The [index] must be a valid index of this list,
  /// which means that `index` must be non-negative and less than [length].
  E operator [](int index) {
    return elementAt(index);
  }
  
  @override
  E elementAt(int index) {
    RangeError.checkNotNegative(index, "index");
    return sourceGet(offset(index));
  }

  @override
  E sourceGet(int sourceIndex) {
    var iterator = this.iterator;
    var skipCount = sourceIndex;
    while (iterator.moveNext()) {
      if (skipCount == 0) return iterator.current;
      skipCount--;
    }
    throw IndexError.withLength(
      sourceIndex,
      sourceIndex - skipCount,
      indexable: this,
      name: "index",
    );
  }

  // Element look-up
  
  @override
  int indexOf(E element, [int start = 0]) {
    return indexWhere((elm) => elm == element, start);
  }
  
  @override
  int indexWhere(bool Function(E element) test, [int start = 0]) {
    for (int i=start; i<length; i++) {
      if (test(elementAt(i))) {
        return i;
      }
    }
    return -1;
  }
  
  @override
  int lastIndexOf(E element, [int? start]) {
    return lastIndexWhere((elm) => elm == element, start);
  }

  
  @override
  int lastIndexWhere(bool Function(E element) test, [int? start]) {
    for (int i=start ?? (length-1); i>=0; i++) {
      if (test(elementAt(i))) {
        return i;
      }
    }
    return -1;
  }

  @override
  E firstWhere(bool Function(E element) test, {E Function()? orElse}) {
    for (int i=0; i<length; i++) {
      E elm = elementAt(i);
      if (test(elm)) {
        return elm;
      }
    }
    if (orElse != null) return orElse();
    throw StateError('No elements in IterationList meet test.');
  }

  @override
  E lastWhere(bool Function(E element) test, {E Function()? orElse}) {
    for (int i=length-1; i >= 0; i++) {
      E elm = elementAt(i);
      if (test(elm)) {
        return elm;
      }
    }
    if (orElse != null) return orElse();
    throw StateError('No elements in IterationItem meet test.');
  }

  @override
  E singleWhere(bool Function(E element) test, {E Function()? orElse}) {
    E? ret;
    for (int i=0; i<length; i++) {
      E elm = elementAt(i);
      if (test(elm)) {
        if (ret != null) throw StateError('Too many elements in IterationItem meet test.');
        ret = elm;
      }
    }
    if (ret != null) return ret;
    if (orElse != null) return orElse();
    throw StateError('No elements in IterationList meet test.');
  }

  // validation checks

  @override
  bool any(bool Function(E element) test) {
    for (int i=0; i<length; i++) {
      E elm = elementAt(i);
      if (test(elm)) {
        return true;
      }
    }
    return false;
  }

  @override
  bool every(bool Function(E element) test) {
    for (int i=0; i<length; i++) {
      E elm = elementAt(i);
      if (!test(elm)) {
        return false;
      }
    }
    return true;
  }

  @override
  bool contains(Object? element) {
    if (element is E) {
      return any((e) => element == e);
    }
    return false;
  }

  // Reduction

  @override
  String join([String separator = ""]) {
    return fold("", (s, elm) {
      if (s.isEmpty) return elm.toString();
      return "$s$separator${elm.toString()}";
    });
  }

  @override
  E reduce(E Function(E value, E element) combine) {
    E value = first;
    for (int i=1; i<length; i++) {
      value = combine(value, elementAt(i));
    }
    return value;
  }

  @override
  T fold<T>(T initialValue, T Function(T previousValue, E element) combine) {
    T value = initialValue;
    for (int i=0; i<length; i++) {
      value = combine(value, elementAt(i));
    }
    return value;
  }

  // Mapping

  @override
  Iteration<T> map<T>(T Function(E e) toElement) {
    return IterationItem(
      source: toList().map<T>(toElement),
    );
  }

  @override
  Iteration<E> followedBy(Iterable<E> other) {
    return IterationItem(
      source: toList().followedBy(other),
    );
  }
  
  @override
  Iteration<T> expand<T>(Iterable<T> Function(E element) toElements) {
    return IterationItem(
      source: toList().expand<T>(toElements),
    );
  }
  
  @override
  Iteration<E> get reversed {
    return IterationItem(
      source: toList().reversed,
    );
  }

  @override
  Iteration<E> getRange(int start, int end) {
    assert(start >= 0 && end >= start && length >= end);
    return IterationItem(
      source: this,
      startIndex: start,
      indexTake: length - end,
    );
  }
  
  @override
  Iteration<E> sublist(int start, [int? end]) {
    assert(start >= 0 && length >= start && (end == null || (end >= start && length >= end)));
    end ??= length;

    List<E> newI = [];
    for (int i=start; i < end; i++) {
      newI.add(elementAt(i));
    }
    return IterationItem(
      source: newI,
    );
  }
  
  @override
  Iteration<E> skip(int count) {
    return IterationItem(
      source: this,
      startIndex: count,
    );
  }
  
  @override
  Iteration<E> skipWhile(bool Function(E value) test) {
    int count = length;
    for (int i=0; i<length; i++) {
      if (!test(elementAt(i))) {
        count = i;
        break;
      }
    }
    return skip(count);
  }
  
  @override
  Iteration<E> take(int count) {
    return IterationItem(
      source: this,
      indexTake: count,
    );
  }
  
  @override
  Iteration<E> takeWhile(bool Function(E value) test) {
    int count = length;
    for (int i=0; i<length; i++) {
      if (!test(elementAt(i))) {
        count = i;
        break;
      }
    }
    return take(length - count);
  }
  
  @override
  Iteration<E> where(bool Function(E element) test) {
    List<E> newI = [];
    for (int i=0; i < length; i++) {
      E elm = elementAt(i);
      if (test(elm)) {
        newI.add(elm);
      }
    }
    return IterationItem(
      source: newI,
    );
  }

  // Setting to other type
  
  @override
  Iteration<T> whereType<T>() {
    return IterationItem(
      source: toList().whereType<T>(),
    );
  }

  @override
  Iteration<R> cast<R>() {
    return IterationItem(
      source: toList().cast<R>(),
    );
  }

  @override
  List<E> toList({bool growable = true}) {
    return List.of(this, growable: growable);
  }
  
  @override
  Set<E> toSet() {
    return Set.of(this);
  }

  @override
  Map<int, E> asMap() {
    LinkedHashMap<int, E> ret = LinkedHashMap();
    for (int i=0; i < length; i++) {
      ret[i] = elementAt(i);
    }
    return ret;
  }
}

class IterationItem<E> extends Iteration<E> {
  IterationItem({
    required this.source,
    this.startIndex = 0,
    this.indexTake = 0,
  });

  final Iterable<E> source;
  
  @override
  final int startIndex;
  @override
  final int indexTake;
  
  @override
  Iterator<E> get sourceIterator => source.iterator;

  @override
  int get sourceLength => source.length;

  @override
  E sourceGet(int sourceIndex) {
    return source.elementAt(sourceIndex);
  }
}

class ImmutableIterationHolder<E> extends Iteration<E> {
  final Iterable<Iteration<E>> items;

  ImmutableIterationHolder({
    required this.items,
    this.startIndex = 0,
    this.indexTake = 0,
  }):
    sourceLength = items.fold(0, (i, item) => i + item.length)
  ;

  @override
  final int startIndex;
  @override
  final int indexTake;
  
  @override
  Iterator<E> get sourceIterator => HolderIterator<E>(holder: items);

  @override
  final int sourceLength;

  // Element retrieval

  @override
  E sourceGet(int sourceIndex) {
    int actualIndex = sourceIndex;
    for (var item in items) {
      if (actualIndex >= item.length || item.isEmpty) {
        actualIndex -= item.length;
        continue;
      }
      return item.elementAt(actualIndex);
    }
    throw IndexError.withLength(sourceIndex, length);
  }
}

// Lists

abstract class IterationBase<E> extends Iteration<E> implements List<E> {
  IterationBase({
    int startIndex = 0,
    int indexTake = 0,
  }):
    _startIndex = startIndex,
    _indexTake = indexTake
  ;

  int _startIndex;
  @override
  int get startIndex => _startIndex;

  int _indexTake;
  @override
  int get indexTake => _indexTake;

  /// The total length of the source list.
  ///
  /// If zero is passed, then the source list should be cleared.
  ///
  /// You should never need to directly set the [sourceLength],
  /// instead use [length] when needing to set this field.
  set sourceLength(int newLength);

  /// This is used to define change to [sourceLength].
  ///
  /// The provided [amount] is how many items are added to [source].
  /// If [amount] is negative then it is the amount of items removed from [source].
  ///
  /// This method is only needed when some action changes the size of the source,
  /// but doesn't actually update the return of [sourceLength].
  void sourceLengthBeenModified(int amount);
  
  @override
  set length(int newLength) {
    if (newLength != 0) {
      _indexTake += (length - newLength).abs();
      if (newLength > sourceLength) {
        sourceLength = newLength;
      }
    } else {
      clear();
    }
  }

  // Modification

  @override
  void shuffle([Random? random]) {
    random ??= Random();
    sort((a, b) {
      return (random!.nextDouble() * 2).round() - 1;
    });
  }

  @override
  void sort([int Function(E a, E b)? compare]) {
    // use default comparator if not provided.
    compare ??= (E a, E b) {
      if (a is Comparable && b is Comparable) {
        return (a as Comparable).compareTo(b);
      }
      throw ArgumentError(
          'Elements must be Comparable if no compare function is provided.');
    };

    /// Recursive helper function for dual-pivot quicksort.
    void dualPivotQuickSort(int left, int right) {
      // Base case: If the range is empty or invalid, stop.
      if (left >= right) return;

      // Optimization: For small segments, insertion sort is faster.
      const int threshold = 27;
      if (right - left < threshold) {
        for (int i = left + 1; i <= right; i++) {
          var temp = this[i];
          int j = i - 1;
          // Shift larger items to the right until the right spot is found.
          while (j >= left && compare!(this[j], temp) > 0) {
            this[j + 1] = this[j];
            j--;
          }
          this[j + 1] = temp;
        }
        return;
      }

      // Pick two pivot positions: roughly one-third and two-thirds in.
      int third = (right - left) ~/ 3;
      int m1 = left + third;
      int m2 = right - third;

      // Ensure pivot1 <= pivot2 by swapping if necessary.
      if (compare!(this[m1], this[m2]) > 0) {
        var tmp = this[m1];
        this[m1] = this[m2];
        this[m2] = tmp;
      }

      var pivot1 = this[m1];
      var pivot2 = this[m2];

      // Move the pivots to the edges so we can partition between them.
      var tmp1 = this[left];
      this[left] = pivot1;
      this[m1] = tmp1;

      var tmp2 = this[right];
      this[right] = pivot2;
      this[m2] = tmp2;

      // Partitioning pointers.
      int less = left + 1;    // Boundary for elements < pivot1
      int great = right - 1;  // Boundary for elements > pivot2

      // Partition the list into three sections:
      //    [ < pivot1 | between | > pivot2 ]
      for (int k = less; k <= great; k++) {
        if (compare(this[k], pivot1) < 0) {
          // Move element to the "less" side if smaller than pivot1.
          var tmp = this[k];
          this[k] = this[less];
          this[less] = tmp;
          less++;
        } else if (compare(this[k], pivot2) > 0) {
          // Move element to "great" side if larger than pivot2.
          while (k < great && compare(this[great], pivot2) > 0) {
            great--; // Move great pointer leftwards.
          }
          var tmp = this[k];
          this[k] = this[great];
          this[great] = tmp;
          great--;

          // After swapping, check if new element is < pivot1.
          if (compare(this[k], pivot1) < 0) {
            tmp = this[k];
            this[k] = this[less];
            this[less] = tmp;
            less++;
          }
        }
      }

      // Move pivots back to their final sorted positions.
      less--;
      great++;
      var tmp = this[left];
      this[left] = this[less];
      this[less] = tmp;

      tmp = this[right];
      this[right] = this[great];
      this[great] = tmp;

      // Recursively sort the three partitions:
      //    - Left side of pivot1
      dualPivotQuickSort(left, less - 1);
      //    - Between pivot1 and pivot2
      dualPivotQuickSort(less + 1, great - 1);
      //    - Right side of pivot2
      dualPivotQuickSort(great + 1, right);
    }

    // Start sorting the entire list.
    if (length > 1) {
      dualPivotQuickSort(0, length - 1);
    }
  }

  @override
  void add(E element) {
    insert(length, element);
  }

  @override
  void addAll(Iterable<E> iterable) {
    insertAll(length, iterable);
  }

  @override
  void insert(int index, E element) {
    insertAll(index, [element]);
  }

  @override
  void insertAll(int index, Iterable<E> iterable) {
    if (index < 0 || index > length) {
      throw IndexError.withLength(index, length);
    }
    sourceInsertAll(offset(index), iterable);
    sourceLengthBeenModified(iterable.length);
  }

  /// Used by [insertAll]. This method should insert all
  /// objects of [iterable] at position [index] in the source list.
  ///
  /// [index] is already offset with [offset].
  ///
  /// This method shouldn't need to be used outside of the containing class.
  void sourceInsertAll(int index, Iterable<E> iterable);

  @override
  void operator []=(int index, E value) {
    set(index, value);
  }

  @override
  set first(E value) {
    set(0, value);
  }

  @override
  set last(E value) {
    set(length-1, value);
  }

  /// Sets the value at the given [index] in the list to [element].
  ///
  /// The [index] must be a valid index of this list,
  /// which means that `index` must be non-negative and less than [length].
  void set(int index, E element);

  @override
  void setAll(int index, Iterable<E> iterable) {
    assert(iterable.length < (length - index));
    for (int i=0; i<iterable.length; i++) {
      set(index+i, iterable.elementAt(i));
    }
  }

  @override
  void setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0]) {
    assert(
      start >= 0 &&
      end >= start &&
      length >= end &&
      (iterable.length-skipCount) == (end - start)
    );
    int j = skipCount;
    for (int i=start; i < end; i++) {
      set(i, iterable.elementAt(j));
      j++;
    }
  }

  @override
  void fillRange(int start, int end, [E? fillValue]) {
    assert(start >= 0 && end >= start && length >= end);
    assert(fillValue != null || null is E);
    for (int i=start; i < end; i++) {
      set(i, fillValue as E);
    }
  }

  /// This is the method called for any removal requests.
  ///
  /// [value] is used for single element removal.
  ///
  /// [start] and [end] are used for removing a range of elements.
  /// If [start] and/or [end] are provided, they will already be
  /// offset by [offset].
  ///
  /// [replacements] is used to replace elements that were removed from a range.
  /// The use of [replacements] should be similar to [replaceRange].
  ///
  /// [removeAll] is used for mass removal of many elements based on index location.
  /// This argument mainly exists for allowing efficient removal in cases where
  /// more than one element, that isn't next to each other,
  /// to be removed without having to call the remove action multiple times.
  ///
  /// The value returned must be the number of elements removed.
  ///
  /// This method shouldn't need to be used outside of the containing class.
  int removeAction({
    Object? value,
    int? start,
    int? end,
    Iterable<E>? replacements,
    List<int>? removeAll,
  });

  @override
  bool remove(Object? value) {
    int remd = removeAction(value:value);
    if (remd != 0) {
      sourceLengthBeenModified(-remd);
      return true;
    }
    return false;
  }

  @override
  E removeAt(int index) {
    IndexError.check(index, length);
    E removed = elementAt(index);
    int remd = removeAction(removeAll: [index]);
    if (remd != 0) {
      sourceLengthBeenModified(-remd);
      return removed;
    }
    throw StateError('No element at index $index was removed.');
  }

  @override
  E removeLast() {
    return removeAt(length-1);
  }

  @override
  void removeRange(int start, int end) {
    assert(start >= 0 && end >= start && length >= end);
    int remd = removeAction(start: offset(start), end: offset(end));
    if (remd != 0) {
      sourceLengthBeenModified(-remd);
    }
  }

  @override
  void removeWhere(bool Function(E element) test) {
    List<int> indexes = [];
    for (int i=0; i < length; i++) {
      E elm = elementAt(i);
      if (test(elm)) {
        indexes.add(offset(i));
      }
    }
    int remd = removeAction(removeAll: indexes);
    if (remd != 0) {
      sourceLengthBeenModified(-remd);
    }
  }

  @override
  void replaceRange(int start, int end, Iterable<E> replacements) {
    assert(start >= 0 && end >= start && length >= end);
    int remd = removeAction(start: offset(start), end: offset(end), replacements: replacements);
    if (remd != 0) {
      sourceLengthBeenModified(-remd);
    }
  }

  @override
  void retainWhere(bool Function(E element) test) {
    removeWhere((elm) => !test(elm));
  }

  @override
  void clear() {
    sourceLength = 0;
    _startIndex = 0;
    _indexTake = 0;
  }

  // Mapping

  @override
  Iteration<T> map<T>(T Function(E e) toElement) {
    return IterationList(
      iterable: toList().map(toElement),
    );
  }

  @override
  Iteration<E> followedBy(Iterable<E> other) {
    List<E> newI = toList();
    newI.addAll(other);
    return IterationList(
      iterable: newI,
    );
  }
  
  @override
  Iteration<T> expand<T>(Iterable<T> Function(E element) toElements) {
    Iterable<T> newI = toList().expand<T>(toElements);
    return IterationList(
      iterable: newI,
    );
  }

  @override
  IterationBase<E> operator +(List<E> other) {
    Iterable<E> newI = toList() + other;
    return IterationList(
      iterable: newI,
    );
  }

  @override
  Iteration<E> get reversed {
    Iterable<E> newI = toList().reversed;
    return IterationList(
      iterable: newI,
    );
  }

  @override
  IterationBase<E> sublist(int start, [int? end]) {
    assert(start >= 0 && length >= start && (end == null || (end >= start && length >= end)));
    end ??= length;
    List<E> newI = [];
    for (int i=start; i<end; i++) {
      newI.add(elementAt(i));
    }
    return IterationList(
      iterable: newI,
    );
  }
  
  @override
  Iteration<E> skip(int count) {
    return IterationList(
      iterable: this,
      startIndex: count,
    );
  }
  
  @override
  Iteration<E> take(int count) {
    return IterationList(
      iterable: this,
      indexTake: count,
    );
  }

  // Setting to other type
  
  @override
  IterationBase<T> whereType<T>() {
    return IterationList(
      iterable: toList().whereType<T>(),
    );
  }

  @override
  IterationBase<R> cast<R>() {
    return IterationList(
      iterable: toList().cast<R>(),
    );
  }
}

class IterationList<E> extends IterationBase<E> {
  IterationList({
    required Iterable<E> iterable,
    super.startIndex,
    super.indexTake,
  }):
    source = iterable,
    _listSource = iterable is List<E>?iterable:List.from(iterable)
  ;

  final List<E> _listSource;
  final Iterable<E> source;
  
  @override
  Iterator<E> get sourceIterator => _listSource.iterator;

  @override
  int get sourceLength => _listSource.length;
  @override
  set sourceLength(int newLength) {
    if (newLength == 0) {
      _listSource.clear();
    } else {
      _listSource.length = newLength;
    }
  }

  @override
  void sourceLengthBeenModified(int amount) {}

  @override
  E sourceGet(int sourceIndex) {
    return _listSource.elementAt(sourceIndex);
  }

  // Modification

  @override
  void shuffle([Random? random]) {
    _listSource.shuffle(random);
  }

  @override
  void set(int index, E element) {
    _listSource[offset(IndexError.check(index, length))] = element;
  }

  @override
  void sourceInsertAll(int index, Iterable<E> iterable) {
    if (iterable.length == 1) {
      _listSource.insert(offset(index), iterable.single);
    } else {
      _listSource.insertAll(offset(index), iterable);
    }
  }

  @override
  int removeAction({
    Object? value,
    int? start,
    int? end,
    Iterable<E>? replacements,
    List<int>? removeAll,
  }) {
    int count = 0;
    if (_listSource.remove(value)) {
      count += 1;
    }
    if (start != null || end != null || replacements != null) {
      start ??= startIndex;
      end ??= offset(length);
      if (replacements != null) {
        _listSource.replaceRange(start, end, replacements);
        count -= replacements.length;
      } else {
        _listSource.removeRange(start, end);
      }
      count += end - start;
    }
    if (removeAll != null) {
      int removed = 0;
      removeAll.sort();
      for (var index in removeAll) {
        _listSource.removeAt(index-removed);
        removed ++;
      }
      count += removed;
    }
    return count;
  }

  // Element look-up

  @override
  int indexOf(E element, [int start = 0]) {
    int index = _listSource.indexOf(element, offset(start));
    if (index >= offset(length)) return -1;
    return index - startIndex;
  }

  @override
  int indexWhere(bool Function(E element) test, [int start = 0]) {
    int index = _listSource.indexWhere(test, offset(start));
    if (index >= offset(length)) return -1;
    return index - startIndex;
  }

  @override
  int lastIndexOf(E element, [int? start]) {
    int index = _listSource.lastIndexOf(element, offset(start ?? length));
    if (index < startIndex) return -1;
    return index - startIndex;
  }

  @override
  int lastIndexWhere(bool Function(E element) test, [int? start]) {
    int index = _listSource.lastIndexWhere(test, offset(start ?? length));
    if (index < startIndex) return -1;
    return index - startIndex;
  }

  // Mapping

  @override
  Iteration<T> map<T>(T Function(E e) toElement) {
    return IterationList(
      iterable: _listSource.map(toElement),
      startIndex: startIndex,
      indexTake: indexTake,
    );
  }

  @override
  IterationBase<E> getRange(int start, int end) {
    assert(start >= 0 && end >= start && length >= end);
    Iterable<E> newI = _listSource.getRange(offset(start), offset(end));
    return IterationList(
      iterable: newI,
    );
  }

  @override
  IterationBase<E> sublist(int start, [int? end]) {
    assert(start >= 0 && length >= start && (end == null || (end >= start && length >= end)));

    Iterable<E> newI = _listSource.sublist(offset(start), offset(end ?? length));
    return IterationList(
      iterable: newI,
    );
  }
  
  @override
  Iteration<E> skip(int count) {
    return IterationList(
      iterable: _listSource,
      startIndex: startIndex+count,
      indexTake: indexTake,
    );
  }

  @override
  Iteration<E> take(int count) {
    return IterationList(
      iterable: _listSource,
      startIndex: startIndex,
      indexTake: indexTake+count,
    );
  }

  // Setting to other type
  
  @override
  IterationBase<T> whereType<T>() {
    return IterationList(
      iterable: _listSource.whereType<T>(),
      startIndex: startIndex,
      indexTake: indexTake,
    );
  }

  @override
  IterationBase<R> cast<R>() {
    return IterationList(
      iterable: _listSource.cast<R>(),
      startIndex: startIndex,
      indexTake: indexTake,
    );
  }
}

class IterationHolder<E> extends IterationBase<E> {
  final List<IterationBase<E>> items;

  IterationHolder({
    required this.items,
    super.startIndex,
    super.indexTake,
  }): _sourceLength = items.fold(0, (i, item) => i + item.length);

  @override
  Iterator<E> get sourceIterator => HolderIterator(holder: items);

  int _sourceLength = 0;
  @override
  int get sourceLength => _sourceLength;
  @override
  set sourceLength(int newLength) {
    if (newLength == 0) {
      items.clear();
    } else if (newLength > _sourceLength) {
      if (null is E) {
        items.add(IterationList(iterable: List.filled(newLength-_sourceLength, null as E)));
      } else {
        throw StateError("Cannot have a sourceLength bigger than current when E isn't nullable.");
      }
    } else if (newLength < _sourceLength && newLength >= 0) {
      int count = _sourceLength-newLength;
      int remove=0;
      for (int i=items.length-1; i >= 0; i--) {
        var item = items[i];
        while (count != 0) {
          if (item.isEmpty) {
            remove++;
            break;
          }
          item.removeLast();
          count--;
        }
        if (count == 0) break;
      }
      if (remove != 0) {
        while (remove != 0) {
          items.removeLast();
          remove--;
        }
      }
    }
    _sourceLength = items.fold(0, (i, item) => i + item.length);
  }

  @override
  void sourceLengthBeenModified(int amount) {
    _sourceLength += amount;
  }

  // Element retrieval

  @override
  E sourceGet(int sourceIndex) {
    int actualIndex = sourceIndex;
    for (var item in items) {
      if (actualIndex >= item.length || item.isEmpty) {
        actualIndex -= item.length;
        continue;
      }
      return item.elementAt(actualIndex);
    }
    throw IndexError.withLength(sourceIndex, length);
  }
  
  @override
  int removeAction({
    Object? value,
    int? start,
    int? end,
    Iterable<E>? replacements,
    List<int>? removeAll,
  }) {
    int count = 0;

    // --- Single element removal ---
    if (value is E) {
      for (var lis in items) {
        if (lis.remove(value)) {
          count += 1;
          break;
        }
      }
    }

    // --- Range removal / replacement ---
    if (start != null || end != null || replacements != null) {
      // Default range values
      start ??= startIndex;
      end ??= offset(length);

      // Trackers
      int actualStart = start;
      int actualEnd = end;
      int? repPos;
      bool internalReplace = false;
      int? removeRangeStart;
      int? removeRangeEnd;

      for (int i=0; i<items.length; i++) {
        var item = items[i];
        int itemLen = item.length;

        // If start is still beyond this sublist, skip it
        if (actualStart >= itemLen || item.isEmpty) {
          actualStart -= itemLen;
          actualEnd -= itemLen;
          if (repPos == null) {
            continue;
          }
        }

        repPos ??= i; // Remember where replacements start

        // If the removal range extends beyond this sublist
        if (actualEnd >= itemLen) {
          // Entire sublist is to be removed
          if (actualStart == 0) removeRangeStart ??= i;
          // Partial removal from actualStart to end of sublist
          if (removeRangeStart == null) {
            repPos = i+1;
            item.removeRange(actualStart, itemLen);
            actualStart = 0;
          }
          // Update the remaining range for the next sublist
          actualEnd -= itemLen;
          continue;
        }

        // Final sublist where range ends
        removeRangeEnd ??= i+ (actualEnd == 0?1:0);
        if (actualEnd != 0) {
          if (repPos == i) internalReplace = true;
          if (replacements != null && internalReplace) {
            item.replaceRange(actualStart, actualEnd, replacements);
          } else {
            item.removeRange(actualStart, actualEnd);
          }
        }
        break;
      }

      // Remove any sublists fully covered by the range
      if (removeRangeStart != null) {
        removeRangeEnd ??= items.length;
        items.removeRange(removeRangeStart, removeRangeEnd);
      }

      // Apply replacements if provided
      if (replacements != null) {
        if (repPos == null) throw StateError('Cannot replace items in bad range.');

        if (!internalReplace) {
          // Replacements inserted as independent list
          items.insert(repPos, IterationList(
            iterable: replacements
          ));
        }
        count -= replacements.length;
      }
      count += end - start;
    }
    if (removeAll != null) {
      int removed = 0;
      for (var item in items) {
        for (int i=0; i<removeAll.length; i++) {
          if (removeAll[i] >= item.length || item.isEmpty) {
            removeAll[i] = removeAll[i] - item.length;
            continue;
          }
          if (item.remove(removeAll[i])) {
            removed ++;
            removeAll[i] = -1;
          }
        }
        removeAll.removeWhere((index) => index <=-1);
      }
      count += removed;
    }
    return count;
  }

  @override
  void sourceInsertAll(int index, Iterable<E> iterable) {
    int actualIndex = index;
    for (var item in items) {
      if (actualIndex >= item.length || item.isEmpty) {
        actualIndex -= item.length;
        continue;
      }
      item.insertAll(actualIndex, iterable);
      break;
    }
  }
  
  @override
  void set(int index, E element) {
    int actualIndex = index;
    for (var item in items) {
      if (actualIndex >= item.length || item.isEmpty) {
        actualIndex -= item.length;
        continue;
      }
      item.set(actualIndex, element);
      break;
    }
  }
}

// Maps

abstract class IterationMap<K, V> extends IterationConstruct<V> implements Map<K, V> {
  IterationMap({
    int startIndex=0,
    int indexTake=0,
  }):
    _startIndex = startIndex,
    _indexTake = indexTake
  ;

  int _startIndex;
  @override
  int get startIndex => _startIndex;

  int _indexTake;
  @override
  int get indexTake => _indexTake;

  Iterable<MapEntry<K, V>> get sourceEntries;
  
  @override
  int get sourceLength => sourceEntries.length;

  @override
  int get length => entries.length;

  @override
  bool get isEmpty => length == 0;

  @override
  bool get isNotEmpty => length != 0;

  // Iteration over self
  
  @override
  void forEach(void Function(K key, V value) action) {
    for (var entry in entries) {
      action(entry.key, entry.value);
    }
  }

  // Element retrieval

  @override
  Iterable<MapEntry<K, V>> get entries => IterationItem(
    source: sourceEntries,
    startIndex: startIndex,
    indexTake: indexTake,
  );

  @override
  Iterable<K> get keys => entries.map((entry) => entry.key);

  @override
  Iterable<V> get values => entries.map((entry) => entry.value);

  @override
  V? operator [](Object? key) {
    return get(key);
  }

  /// The value for the given [key], or `null` if [key] is not in the map.
  ///
  /// Some maps allow `null` as a value.
  /// For those maps, a lookup using this operator cannot distinguish between a
  /// key not being in the map, and the key being there with a `null` value.
  /// Methods like [containsKey] or [putIfAbsent] can be used if the distinction
  /// is important.
  V? get(Object? key);

  /// gets the entry at the given [index].
  MapEntry<K, V> getEntry(int index) {
    IndexError.check(index, length);
    return sourceEntries.elementAt(offset(index));
  }

  @override
  V sourceGet(int sourceIndex) {
    return sourceEntries.elementAt(sourceIndex).value;
  }

  /// Gets the key at the given [index].
  K getKey(int index) {
    return getEntry(index).key;
  }

  // Element look-up

  /// The first index of [key] in this map.
  ///
  /// Searches the map from index [start] to the end of the map.
  /// The first time an object `o` is encountered so that `o == key`,
  /// the index of `o` is returned.
  ///
  /// Returns -1 if [element] is not found.
  int indexOfKey(K key, [int start=0]) {
    for (int i=startIndex; i<sourceLength-indexTake; i++) {
      if (key == sourceEntries.elementAt(i).key) return i;
    }
    return -1;
  }

  // validation checks

  @override
  bool containsKey(Object? key) {
    return keys.contains(key);
  }

  @override
  bool containsValue(Object? value) {
    return values.contains(value);
  }

  // Modification

  @override
  void operator []=(K key, V value) {
    set(key, value);
  }

  /// Sets [value] to [key].
  ///
  /// If [key] doesn't exist,
  /// then it is placed at
  /// the end of the map.
  void set(K key, V value) {
    int index = indexOfKey(key);
    if (index != -1) {
      insert(index, key, value);
    } else {
      insert(length, key, value);
    }
  }

  /// Sets [value] to [key] and ensures that
  /// [key] has the index position of [index].
  ///
  /// This shouldn't replace the value at [index]
  /// it should shift values to the right at [index]
  /// and, given [key] already exists, shift
  /// values at the old index of [key] back to the
  /// left.
  void insert(int index, K key, V element);

  /// Inserts all objects of [iterable] at position [index] in this list.
  ///
  /// Uses [insert] on each entry of [iterable].
  void insertAll(int index, Iterable<MapEntry<K, V>> iterable) {
    if (index < 0 || index > length) {
      throw IndexError.withLength(index, length);
    }
    for (int i=0; i<iterable.length; i++) {
      var entry = iterable.elementAt(i);
      insert(index+i, entry.key, entry.value);
    }
  }

  @override
  void addAll(Map<K, V> other) {
    other.forEach(set);
  }

  @override
  void addEntries(Iterable<MapEntry<K, V>> newEntries) {
    for (var entry in newEntries) {
      set(entry.key, entry.value);
    }
  }

  @override
  V putIfAbsent(K key, V Function() ifAbsent) {
    if (!containsKey(key)) {
      set(key, ifAbsent());
    }
    return get(key)!;
  }

  @override
  V update(K key, V Function(V value) update, {V Function()? ifAbsent}) {
    if (containsKey(key)) {
      set(key, update(get(key) as V));
    } else {
      assert(ifAbsent != null);
      set(key, ifAbsent!());
    }
    return get(key)!;
  }

  @override
  void updateAll(V Function(K key, V value) update) {
    for (var entry in entries) {
      set(entry.key, update(entry.key, entry.value));
    }
  }

  /// This is the method called for any removal requests.
  ///
  /// [start] and [end] are used for removing a range of elements.
  /// If [start] and/or [end] are provided, they will already be
  /// offset by [offset].
  ///
  /// [replacements] is used to replace elements that were removed from a range.
  /// The use of [replacements] should be similar to [replaceRange].
  ///
  /// [removeAll] is used for mass removal of many elements based on index location.
  /// This argument mainly exists for allowing efficient removal in cases where
  /// more than one element, that isn't next to each other,
  /// to be removed without having to call the remove action multiple times.
  ///
  /// Returns the count of removed entries.
  ///
  /// This method shouldn't need to be used outside of the containing class.
  int removeAction({
    int? start,
    int? end,
    Iterable<MapEntry<K, V>>? replacements,
    List<int>? removeAll,
    List<K>? removeKeys,
  });

  @override
  V? remove(Object? key) {
    V? old;
    if (containsKey(key)) {
      old = get(key as K);
      removeAction(removeKeys: [key]);
    }
    return old;
  }

  /// Removes the first occurrence of [value] from this map.
  ///
  /// Returns the key of the removed value.
  K? removeValue(Object? value) {
    K? remd;
    if (containsValue(value)) {
      remd = getKey(indexOf(value as V));
      removeAction(removeKeys: [remd as K]);
    }
    return remd;
  }

  /// Removes the entry at position [index] from this map.
  ///
  /// This method reduces the length of `this` by one and moves all later objects
  /// down by one position.
  ///
  /// Returns the removed entry.
  ///
  /// The [index] must be in the range `0 ≤ index < length`.
  MapEntry<K, V> removeAt(int index) {
    IndexError.check(index, length);
    MapEntry<K, V> removed = getEntry(index);
    int remd = removeAction(removeAll: [index]);
    if (remd != 0) {
      return removed;
    }
    throw StateError('No element at index $index was removed.');
  }

  /// Removes the entry at the end of the map.
  MapEntry<K, V> removeLast() {
    return removeAt(length-1);
  }

  /// Removes a range of elements from the list.
  ///
  /// Removes the elements with positions greater than or equal to [start]
  /// and less than [end], from the list.
  /// This reduces the list's length by `end - start`.
  ///
  /// The provided range, given by [start] and [end], must be valid.
  /// A range from [start] to [end] is valid if 0 ≤ `start` ≤ `end` ≤ [length].
  /// An empty range (with `end == start`) is valid.
  void removeRange(int start, int end) {
    assert(start >= 0 && end >= start && length >= end);
    removeAction(start: offset(start), end: offset(end));
  }

  @override
  void removeWhere(bool Function(K key, V value) test) {
    List<K> keys = [];
    for (var entry in entries) {
      if (test(entry.key, entry.value)) {
        keys.add(entry.key);
      }
    }
    removeAction(removeKeys: keys);
  }

  /// Replaces a range of elements with the elements of [replacements].
  ///
  /// Removes the objects in the range from [start] to [end],
  /// then inserts the elements of [replacements] at [start].
  ///
  /// The provided range, given by [start] and [end], must be valid.
  /// A range from [start] to [end] is valid if 0 ≤ `start` ≤ `end` ≤ [length].
  /// An empty range (with `end == start`) is valid.
  void replaceRange(int start, int end, Iterable<MapEntry<K, V>> replacements) {
    assert(start >= 0 && end >= start && length >= end);
    removeAction(start: offset(start), end: offset(end), replacements: replacements);
  }

  void retainWhere(bool Function(K key, V value) test) {
    removeWhere((key, value) => !test(key, value));
  }

  @override
  void clear() {
    removeAction(start: startIndex, end: offset(length));
    _startIndex = 0;
    _indexTake = 0;
  }

  // Reduction

  // Mapping

  @override
  Map<K2, V2> map<K2, V2>(MapEntry<K2, V2> Function(K key, V value) convert) {
    List<MapEntry<K2, V2>> mapList = [];
    for (var entry in entries) {
      mapList.add(convert(entry.key, entry.value));
    }
    return Map.fromEntries(mapList);
  }

  @override
  IterationMap<K, V> getRange(int start, int end) {
    return IterationItemMap(
      map: this,
      startIndex: start,
      indexTake: length - end,
    );
  }

  @override
  IterationMap<K, V> sublist(int start, [int? end]) {
    int itake = end != null?length - end : 0;
    LinkedHashMap<K, V> newMap = LinkedHashMap();
    for (int i=start; i<length-itake; i++) {
      var entry = getEntry(i);
      newMap[entry.key] = entry.value;
    }
    return IterationItemMap(
      map: newMap,
      startIndex: 0,
      indexTake: 0,
    );
  }
  
  @override
  IterationMap<K, V> get reversed => IterationItemMap(
    map: LinkedHashMap.fromEntries((entries as Iteration<MapEntry<K, V>>).reversed)
  );

  @override
  IterationMap<K, V> skip(int count) {
    return IterationItemMap(
      map: this,
      startIndex: count,
      indexTake: 0,
    );
  }

  @override
  IterationMap<K, V> take(int count) {
    return IterationItemMap(
      map: this,
      startIndex: 0,
      indexTake: count,
    );
  }

  // Setting to other type

  @override
  Map<RK, RV> cast<RK, RV>() {
    return this as Map<RK, RV>;
  }
}

class IterationItemMap<K, V> extends IterationMap<K, V> {
  IterationItemMap({
    required Map<K, V> map,
    super.startIndex,
    super.indexTake,
  }):
    _map=map,
    _keys=map.keys.toList()
  ;

  final Map<K, V> _map;
  final List<K> _keys;

  @override
  Iterable<MapEntry<K, V>> get sourceEntries => _keys.map((key) => MapEntry(key, _map[key] as V));
  
  @override
  void set(K key, V value) {
    _map[key] = value;
    if (!_keys.contains(key)) _keys.add(key);
  }

  @override
  void insert(int index, K key, V element) {
    _insertCheck(index, key, element);
  }

  /// For checking if [key] existed or not
  /// before having [element] set to it.
  bool _insertCheck(int index, K key, V element) {
    _map[key] = element;
    int i = _keys.indexOf(key);
    if (i > -1 && index > i) {
      index -= 1;
      _keys.removeAt(i);
    }
    if (index == _keys.length) {
      _keys.add(key);
    } else {
      _keys.insert(index, key);
    }
    return i == -1;
  }

  @override
  V? get(Object? key) {
    return _map[key];
  }

  @override
  int removeAction({
    int? start,
    int? end,
    Iterable<MapEntry<K, V>>? replacements,
    List<int>? removeAll,
    List<K>? removeKeys,
  }) {
    int count = 0;
    if (start != null || end != null || replacements != null) {
      start ??= startIndex;
      end ??= offset(length);
      var keys = _keys.getRange(start, end);
      _keys.removeRange(start, end);
      _map.removeWhere((key, val) => keys.contains(key));
      if (replacements != null) {
        int index = start;
        for (var replacement in replacements) {
          if (_insertCheck(index, replacement.key, replacement.value)) count -= 1;
          index ++;
        }
      }
      count += end - start;
    }
    if (removeAll != null) {
      int removed = 0;
      removeAll.sort();
      for (var index in removeAll) {
        _map.remove(_keys.removeAt(index-removed));
        removed ++;
      }
      count += removed;
    }
    if (removeKeys != null) {
      for (var key in removeKeys) {
        if (_keys.remove(key)) {
          _map.remove(key);
          count ++;
        }
      }
    }
    return count;
  }
}