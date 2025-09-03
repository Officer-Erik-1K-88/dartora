import 'dart:math' show Random;

import 'iterators.dart';

abstract mixin class ListSet<E> implements Set<E>, List<E> {
  /// Whether to obey by the rule of
  /// all elements are unique.
  ///
  /// For unique elements only, this should be
  /// `false`.
  bool get allowSame;

  /// Defines if the size of this [ListSet]
  /// can be changed.
  bool get growable;

  @override
  bool get isEmpty => length == 0;

  @override
  bool get isNotEmpty => length != 0;

  @override
  Iterator<E> get iterator => IndexBaseIterator(iterable: this);

  @override
  void forEach(void Function(E element) action) {
    for (var elm in this) {
      action(elm);
    }
  }

  // getting

  @override
  E get first => elementAt(0);

  @override
  E get last => elementAt(length-1);

  @override
  E get single => length==1?first:throw StateError('Cannot get single when iterable has more or less than one element.');

  @override
  E operator [](int index) {
    return elementAt(index);
  }

  @override
  ListSet<E> get reversed;

  @override
  ListSet<E> sublist(int start, [int? end]);

  @override
  ListSet<E> getRange(int start, int end);

  // modification

  @override
  set first(E value) {
    this[0] = value;
  }

  @override
  set last(E value) {
    this[length-1] = value;
  }

  @override
  void addAll(Iterable<E> elements) {
    for (var elm in elements) {
      add(elm);
    }
  }

  @override
  void insertAll(int index, Iterable<E> iterable) {
    int i=index;
    for (var elm in iterable) {
      insert(i, elm);
      i++;
    }
  }

  @override
  void setAll(int index, Iterable<E> iterable) {
    final int currLen = length;
    int j=0;
    for (int i=index; i<currLen+iterable.length; i++) {
      var elm = iterable.elementAt(j);
      if (i>=currLen) {
        add(elm);
      } else {
        this[i] = elm;
      }
      j++;
    }
  }

  @override
  void setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0]) {
    RangeError.checkValidRange(start, end, length);
    assert(iterable.length >= (skipCount + (end - start)));
    int j=start;
    for (int i=skipCount; i<iterable.length; i++) {
      if (j==end) break;
      this[j] = iterable.elementAt(i);
      j++;
    }
  }

  @override
  void fillRange(int start, int end, [E? fillValue]) {
    setRange(start, end, List.generate(end-start, (i)=>fillValue as E));
  }

  @override
  void replaceRange(int start, int end, Iterable<E> replacements) {
    RangeError.checkValidRange(start, end, length);
    for (int i=0; i<(end-start); i++) {
      int j = start + i;
      if (i < replacements.length) {
        this[j] = replacements.elementAt(i);
      } else {
        removeAt(j);
      }
    }
  }

  @override
  bool remove(Object? value) {
    for (int i=0; i<length; i++) {
      if (elementAt(i) == value) {
        removeAt(i);
        return true;
      }
    }
    return false;
  }

  @override
  void removeAll(Iterable<Object?> elements) {
    for (var elm in elements) {
      remove(elm);
    }
  }

  @override
  E removeLast() {
    return removeAt(length-1);
  }

  @override
  void removeRange(int start, int end) {
    RangeError.checkValidRange(start, end, length);
    for (int i=start; i<end; i++) {
      removeAt(i);
    }
  }

  @override
  void removeWhere(bool Function(E element) test) {
    for (int i=0; i<length; i++) {
      if (test(elementAt(i))) {
        removeAt(i);
      }
    }
  }

  @override
  void retainAll(Iterable<Object?> elements) {
    retainWhere((elm) => elements.contains(elm));
  }

  @override
  void retainWhere(bool Function(E element) test) {
    removeWhere((elm) => !test(elm));
  }

  // indexing

  @override
  int indexOf(E element, [int start = 0]) {
    return indexWhere((elm) => elm == element);
  }

  @override
  int indexWhere(bool Function(E element) test, [int start = 0]) {
    for (int i=IndexError.check(start, length); i<length; i++) {
      if (test(elementAt(i))) return i;
    }
    return -1;
  }

  @override
  int lastIndexOf(E element, [int? start]) {
    return lastIndexWhere((elm) => elm == element);
  }

  @override
  int lastIndexWhere(bool Function(E element) test, [int? start]) {
    for (int i=IndexError.check(start ?? (length-1), length); i>=0; i++) {
      if (test(elementAt(i))) return i;
    }
    return -1;
  }

  // searching for element

  @override
  E? lookup(Object? object) {
    for (var elm in this) {
      if (object == elm) return elm;
    }
    return null;
  }

  @override
  E firstWhere(bool Function(E element) test, {E Function()? orElse}) {
    for (var elm in this) {
      if (test(elm)) return elm;
    }
    if (orElse != null) {
      return orElse();
    }
    throw StateError('didn\'t find an element that passes test, no orElse provided.');
  }

  @override
  E lastWhere(bool Function(E element) test, {E Function()? orElse}) {
    for (int i=length-1; i>=0; i--) {
      var elm = elementAt(i);
      if (test(elm)) return elm;
    }
    if (orElse != null) {
      return orElse();
    }
    throw StateError('didn\'t find an element that passes test, no orElse provided.');
  }

  @override
  E singleWhere(bool Function(E element) test, {E Function()? orElse}) {
    E? value;
    for (int i=0; i<length; i++) {
      var elm = elementAt(i);
      if (test(elm)) {
        if (value != null) throw StateError('Found more than one element passing test.');
        value = elm;
      }
    }
    if (orElse != null && value == null) {
      return orElse();
    }
    if (value == null) throw StateError('didn\'t find an element that passes test, no orElse provided.');
    return value;
  }

  // validation

  /// Used for validating that some element can
  /// be inserted into this [ListSet].
  ///
  /// This method should be called with in
  /// [operator []=], [add], and [insert].
  bool canPut(int atIndex, E value, bool insert) {
    if (insert) {
      if (!growable) {
        throw UnsupportedError('Cannot change the size of a ListSet when not growable');
      }
    }
    return allowSame || !contains(value);
  }

  @override
  bool any(bool Function(E element) test) {
    for (var elm in this) {
      if (test(elm)) return true;
    }
    return false;
  }

  @override
  bool every(bool Function(E element) test) {
    for (var elm in this) {
      if (!test(elm)) return false;
    }
    return true;
  }

  @override
  bool contains(Object? value) {
    for (var elm in this) {
      if (elm == value) return true;
    }
    return false;
  }

  @override
  bool containsAll(Iterable<Object?> other) {
    for (var obj in other) {
      if (!contains(obj)) return false;
    }
    return true;
  }

  // reduction

  @override
  E reduce(E Function(E value, E element) combine) {
    E value = first;
    for (int i=1; i<length; i++) {
      value = combine(value, elementAt(i));
    }
    return value;
  }

  @override
  String join([String separator = ""]) {
    String value = '';
    for (int i=0; i<length; i++) {
      value = '$value$separator${elementAt(i)}';
    }
    return value.replaceFirst(separator, '');
  }

  @override
  T fold<T>(T initialValue, T Function(T previousValue, E element) combine) {
    T value = initialValue;
    for (int i=0; i<length; i++) {
      value = combine(value, elementAt(i));
    }
    return value;
  }

  // mapping

  @override
  Iterable<T> map<T>(T Function(E e) toElement) => MappedIterable<E, T>(this, toElement);

  @override
  Iterable<T> expand<T>(Iterable<T> Function(E element) toElements) => ExpandIterable(this, toElements);

  @override
  ListSet<E> followedBy(Iterable<E> other);

  @override
  ListSet<E> operator +(List<E> other);

  @override
  ListSet<E> union(Set<E> other);

  @override
  ListSet<E> intersection(Set<Object?> other);

  @override
  ListSet<E> difference(Set<Object?> other);

  @override
  ListSet<E> skip(int count);

  @override
  ListSet<E> skipWhile(bool Function(E value) test) {
    int i=0;
    while (test(elementAt(i))) {
      i++;
    }
    return skip(i);
  }

  @override
  ListSet<E> take(int count);

  @override
  ListSet<E> takeWhile(bool Function(E value) test) {
    int i=0;
    while (test(elementAt(i))) {
      i++;
    }
    return take(i);
  }

  @override
  ListSet<E> where(bool Function(E element) test);

  // casting

  @override
  ListSet<T> whereType<T>();

  ListSet<R> cast<R>();

  @override
  List<E> toList({bool growable = true}) {
    return List.from(this, growable: growable);
  }

  @override
  Set<E> toSet() {
    return Set.from(this);
  }

  ListSet<E> toListSet({bool growable = true, bool copy=true}) {
    return BaseListSet(
      elements: this,
      growable: growable,
      copy: copy,
      allowSame: allowSame,
    );
  }

  @override
  Map<int, E> asMap() {
    return {for (int i=0; i<length; i++) i: elementAt(i)};
  }
}

class BaseListSet<E> extends ListSet<E> {
  final List<E> _elements;

  @override
  final bool growable;

  @override
  final bool allowSame;

  BaseListSet({
    Iterable<E>? elements,
    this.growable=true,
    bool copy=false,
    this.allowSame = false,
    bool sameValidation=true,
  }):
    _elements = (copy || elements is! List)?
      List.from(elements ?? [], growable: true)
      : (elements as List<E>?) ?? List.empty(growable: true)
  {
    if (sameValidation && !allowSame) {
      List<int> toRemove=[];
      Set<E> temp = {};
      for (int i=0; i<_elements.length; i++) {
        if (!temp.add(_elements[i])) toRemove.add(i);
      }
      toRemove.forEach(_elements.removeAt);
      toRemove.clear();
      temp.clear();
    }
  }

  @override
  int get length => _elements.length;

  @override
  set length(int newLength) {
    if (!growable) {
      throw UnsupportedError('Cannot change the size of a ListSet when not growable');
    }
    _elements.length = newLength;
  }

  @override
  E elementAt(int index) {
    return _elements.elementAt(index);
  }

  @override
  ListSet<E> getRange(int start, int end) {
    return makeCopy(_elements.getRange(start, end));
  }

  @override
  ListSet<E> sublist(int start, [int? end]) {
    return makeCopy(_elements.sublist(start, end));
  }

  @override
  ListSet<E> get reversed => makeCopy(_elements.reversed);

  @override
  void operator []=(int index, E value) {
    IndexError.check(index, length);
    if (canPut(index, value, false)) {
      _elements[index] = value;
    }
  }

  @override
  bool add(E value) {
    if (canPut(length, value, true)) {
      _elements.add(value);
      return true;
    }
    return false;
  }

  @override
  void insert(int index, E element) {
    if (canPut(index, element, true)) {
      _elements.insert(index, element);
    }
  }

  @override
  void shuffle([Random? random]) {
    _elements.shuffle(random);
  }

  @override
  void sort([int Function(E a, E b)? compare]) {
    _elements.sort(compare);
  }

  @override
  E removeAt(int index) {
    if (!growable) {
      throw UnsupportedError('Cannot change the size of a ListSet when not growable');
    }
    return _elements.removeAt(index);
  }

  @override
  void clear() {
    if (!growable) {
      throw UnsupportedError('Cannot change the size of a ListSet when not growable');
    }
    _elements.clear();
  }

  /// Used to make a copy of this [BaseListSet]
  /// with [elements] as the copy's elements.
  ///
  /// The copy produced will not have the same
  /// settings as this [BaseListSet].
  ///
  /// [sv] refers to whether to preform same validations.
  BaseListSet<T> makeCopy<T>(Iterable<T> elements, [bool sv=false]) {
    return BaseListSet(
      elements: elements,
      allowSame: allowSame,
      sameValidation: sv,
    );
  }

  @override
  ListSet<T> expand<T>(Iterable<T> Function(E element) toElements) {
    return makeCopy(_elements.expand<T>(toElements), true);
  }

  @override
  ListSet<E> followedBy(Iterable<E> other) {
    return makeCopy(_elements.followedBy(other), true);
  }

  @override
  ListSet<E> operator +(List<E> other) {
    return makeCopy(_elements + other, true);
  }

  @override
  ListSet<E> difference(Set<Object?> other) {
    return makeCopy(
      fold<List<E>>([], (lis, value) {
        if (!other.contains(value)) lis.add(value);
        return lis;
      }),
    );
  }

  @override
  ListSet<E> intersection(Set<Object?> other) {
    return makeCopy(
      fold<List<E>>([], (lis, value) {
        if (other.contains(value)) lis.add(value);
        return lis;
      }),
    );
  }

  @override
  ListSet<E> union(Set<E> other) {
    // TODO: implement union
    throw UnimplementedError();
  }

  @override
  ListSet<E> skip(int count) {
    return makeCopy(_elements.skip(count));
  }

  @override
  ListSet<E> take(int count) {
    return makeCopy(_elements.take(count),);
  }

  @override
  ListSet<E> where(bool Function(E element) test) {
    return makeCopy(_elements.where(test));
  }

  @override
  ListSet<T> whereType<T>() {
    return makeCopy(_elements.whereType<T>());
  }

  @override
  ListSet<R> cast<R>() {
    return makeCopy(_elements.cast<R>());
  }
}