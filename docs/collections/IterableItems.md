# IterableItems

This class `IterableItems` is part of the `collections` module of the Dartora library. It defines behavior and data structures as implemented in the source code.

_Defined in: `src/collections/lists.dart`_

_Import_: `package:dartora/collections/lists.dart`


---


### Constructors

#### `super(modifier: (e) => e);`

Constructs a new instance of `IterableItems`.



#### `UnmodifiableListView(_listSource);`

Constructs a new instance of `IterableItems`.



#### `_listSource.forEach(action);`

Constructs a new instance of `IterableItems`.



#### `return _listSource.elementAt(index);`

Constructs a new instance of `IterableItems`.



#### `return _listSource.indexOf(element, start);`

Constructs a new instance of `IterableItems`.



#### `return _listSource.firstWhere(test, orElse: orElse);`

Constructs a new instance of `IterableItems`.



#### `return _listSource.lastWhere(test, orElse: orElse);`

Constructs a new instance of `IterableItems`.



#### `return _listSource.singleWhere(test, orElse: orElse);`

Constructs a new instance of `IterableItems`.



#### `return _listSource.any(test);`

Constructs a new instance of `IterableItems`.



#### `return _listSource.every(test);`

Constructs a new instance of `IterableItems`.



#### `return _listSource.contains(element);`

Constructs a new instance of `IterableItems`.



#### `_listSource.add(value);`

Constructs a new instance of `IterableItems`.



#### `return _listSource.remove(value);`

Constructs a new instance of `IterableItems`.



#### `return _listSource.removeAt(index);`

Constructs a new instance of `IterableItems`.



#### `_listSource.clear();`

Constructs a new instance of `IterableItems`.



#### `return _listSource.join(separator);`

Constructs a new instance of `IterableItems`.



#### `return _listSource.reduce(combine);`

Constructs a new instance of `IterableItems`.



#### `return _listSource.fold(initialValue, combine);`

Constructs a new instance of `IterableItems`.



#### `return MultiViewList(source: _listSource.followedBy(other) as List<E>);`

Constructs a new instance of `IterableItems`.



#### `return MultiViewList(source: _listSource.skip(count) as List<E>);`

Constructs a new instance of `IterableItems`.



#### `return MultiViewList(source: _listSource.skipWhile(test) as List<E>);`

Constructs a new instance of `IterableItems`.



#### `return MultiViewList(source: _listSource.take(count) as List<E>);`

Constructs a new instance of `IterableItems`.



#### `return MultiViewList(source: _listSource.takeWhile(test) as List<E>);`

Constructs a new instance of `IterableItems`.



#### `return MultiViewList(source: _listSource.where(test) as List<E>);`

Constructs a new instance of `IterableItems`.



#### `return unmodifiable.toList(growable: growable);`

Constructs a new instance of `IterableItems`.



#### `return unmodifiable.toSet();`

Constructs a new instance of `IterableItems`.



#### `i<length; i++) {
      action(elementAt(i));
    }
  }

  // Element retrieval

  @override
  E get first => elementAt(startIndex);`

Constructs a new instance of `IterableItems`.



#### `elementAt(length-1);`

Constructs a new instance of `IterableItems`.



#### `if (keyLength == 0) throw StateError('The LargeList has no keys.');`

Constructs a new instance of `IterableItems`.



#### `offset(index);`

Constructs a new instance of `IterableItems`.



#### `throw IndexError.withLength(index - startIndex, keyLength);`

Constructs a new instance of `IterableItems`.



#### `_keys.indexOf(key, startIndex);`

Constructs a new instance of `IterableItems`.



#### `if (m == null) throw KeyException(key: key);`

Constructs a new instance of `IterableItems`.



#### `return modifier(m);`

Constructs a new instance of `IterableItems`.



#### `offset(index);`

Constructs a new instance of `IterableItems`.



#### `_extras.elementAt(index-_keys.length);`

Constructs a new instance of `IterableItems`.



#### `if (m == null) throw BaseException("Value at `$index` doesn't exist.");`

Constructs a new instance of `IterableItems`.



#### `return modifier(m);`

Constructs a new instance of `IterableItems`.



#### `return elementAt(index);`

Constructs a new instance of `IterableItems`.



#### `elementAt(i);`

Constructs a new instance of `IterableItems`.



#### `if (orElse != null) return orElse();`

Constructs a new instance of `IterableItems`.



#### `throw StateError("There was no elements matching test.");`

Constructs a new instance of `IterableItems`.



#### `elementAt(i);`

Constructs a new instance of `IterableItems`.



#### `if (orElse != null) return orElse();`

Constructs a new instance of `IterableItems`.



#### `throw StateError("There was no elements matching test.");`

Constructs a new instance of `IterableItems`.



#### `elementAt(i);`

Constructs a new instance of `IterableItems`.



#### `if (orElse != null) return orElse();`

Constructs a new instance of `IterableItems`.



#### `throw StateError("There was no elements matching test.");`

Constructs a new instance of `IterableItems`.



#### `combine(value, elementAt(i));`

Constructs a new instance of `IterableItems`.



#### `combine(value, elementAt(i));`

Constructs a new instance of `IterableItems`.



#### `return toElement(modifier(e));`

Constructs a new instance of `IterableItems`.



#### `return copy([
      IterationList(iterable: other),
    ]);`

Constructs a new instance of `IterableItems`.



#### `return LargeList(mapped: _mapped, keys: _keys, extras: _extras, modifier: modifier, startIndex: offset(count), indexCount: length-count);`

Constructs a new instance of `IterableItems`.



#### `if (adding) iter.add(e);`

Constructs a new instance of `IterableItems`.



#### `return LargeList(mapped: _mapped, keys: _keys, extras: _extras, modifier: modifier, startIndex: startIndex, indexCount: count);`

Constructs a new instance of `IterableItems`.



#### `throw UnimplementedError();`

Constructs a new instance of `IterableItems`.



#### `throw UnimplementedError();`

Constructs a new instance of `IterableItems`.



#### `return List.from(this, growable: growable);`

Constructs a new instance of `IterableItems`.



#### `return Set.from(this);`

Constructs a new instance of `IterableItems`.



#### `IterationHolder(items: extraItems);`

Constructs a new instance of `IterableItems`.



#### `return LargeList(
      mapped: _mapped,
      keys: List.from(_keys),
      extras: extras,
      modifier: modifier,
      startIndex: startIndex,
      indexCount: _indexCount,
    );`

Constructs a new instance of `IterableItems`.



### Fields

#### `final Iterable<E> source;`

Stores the value of `source` for this instance of `IterableItems`.



#### `final List<E> _listSource;`

Stores the value of `_listSource` for this instance of `IterableItems`.



#### `late final UnmodifiableListView<E> unmodifiable;`

Stores the value of `unmodifiable` for this instance of `IterableItems`.



#### `length;`

Stores the value of `length` for this instance of `IterableItems`.



#### `isEmpty;`

Stores the value of `isEmpty` for this instance of `IterableItems`.



#### `isNotEmpty;`

Stores the value of `isNotEmpty` for this instance of `IterableItems`.



#### `iterator;`

Stores the value of `iterator` for this instance of `IterableItems`.



#### `first;`

Stores the value of `first` for this instance of `IterableItems`.



#### `last;`

Stores the value of `last` for this instance of `IterableItems`.



#### `single;`

Stores the value of `single` for this instance of `IterableItems`.



#### `value;`

Stores the value of `value` for this instance of `IterableItems`.



#### `final Map<String, VT> _mapped;`

Stores the value of `_mapped` for this instance of `IterableItems`.



#### `final List<String> _keys;`

Stores the value of `_keys` for this instance of `IterableItems`.



#### `final IterationHolder _extras;`

Stores the value of `_extras` for this instance of `IterableItems`.



#### `modifier;`

Stores the value of `modifier` for this instance of `IterableItems`.



#### `final int startIndex;`

Stores the value of `startIndex` for this instance of `IterableItems`.



#### `_indexCount;`

Stores the value of `_indexCount` for this instance of `IterableItems`.



#### `indexCount
  ;`

Stores the value of `indexCount` for this instance of `IterableItems`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterableItems`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterableItems`.



#### `kl;`

Stores the value of `kl` for this instance of `IterableItems`.



#### `first;`

Stores the value of `first` for this instance of `IterableItems`.



#### `m;`

Stores the value of `m` for this instance of `IterableItems`.



#### `dynamic m;`

Stores the value of `m` for this instance of `IterableItems`.



#### `return m as E;`

Stores the value of `E` for this instance of `IterableItems`.



#### `length;`

Stores the value of `length` for this instance of `IterableItems`.



#### `return elm;`

Stores the value of `elm` for this instance of `IterableItems`.



#### `return elm;`

Stores the value of `elm` for this instance of `IterableItems`.



#### `ret;`

Stores the value of `ret` for this instance of `IterableItems`.



#### `length;`

Stores the value of `length` for this instance of `IterableItems`.



#### `elm;`

Stores the value of `elm` for this instance of `IterableItems`.



#### `break;`

Stores the value of `break` for this instance of `IterableItems`.



#### `length;`

Stores the value of `length` for this instance of `IterableItems`.



#### `return true;`

Stores the value of `true` for this instance of `IterableItems`.



#### `return false;`

Stores the value of `false` for this instance of `IterableItems`.



#### `length;`

Stores the value of `length` for this instance of `IterableItems`.



#### `return false;`

Stores the value of `false` for this instance of `IterableItems`.



#### `return true;`

Stores the value of `true` for this instance of `IterableItems`.



#### `length;`

Stores the value of `length` for this instance of `IterableItems`.



#### `return true;`

Stores the value of `true` for this instance of `IterableItems`.



#### `return false;`

Stores the value of `false` for this instance of `IterableItems`.



#### `first;`

Stores the value of `first` for this instance of `IterableItems`.



#### `length;`

Stores the value of `length` for this instance of `IterableItems`.



#### `return value;`

Stores the value of `value` for this instance of `IterableItems`.



#### `initialValue;`

Stores the value of `initialValue` for this instance of `IterableItems`.



#### `length;`

Stores the value of `length` for this instance of `IterableItems`.



#### `return value;`

Stores the value of `value` for this instance of `IterableItems`.



#### `false;`

Stores the value of `false` for this instance of `IterableItems`.



#### `true;`

Stores the value of `true` for this instance of `IterableItems`.



#### `return iter;`

Stores the value of `iter` for this instance of `IterableItems`.



#### `length;`

Stores the value of `length` for this instance of `IterableItems`.



#### `as R;`

Stores the value of `R` for this instance of `IterableItems`.





### Methods

#### `from(source)
  {`

Executes the `from` operation defined in `IterableItems`.



#### `override
  void forEach(void Function(E element) action) {`

Executes the `forEach` operation defined in `IterableItems`.



#### `override
  E elementAt(int index) {`

Executes the `elementAt` operation defined in `IterableItems`.



#### `up

  int indexOf(E element, [int start = 0]) {`

Executes the `indexOf` operation defined in `IterableItems`.



#### `override
  bool any(bool Function(E element) test) {`

Executes the `any` operation defined in `IterableItems`.



#### `override
  bool every(bool Function(E element) test) {`

Executes the `every` operation defined in `IterableItems`.



#### `override
  bool contains(Object? element) {`

Executes the `contains` operation defined in `IterableItems`.



#### `Modification

  void set(int index, E value) {`

Executes the `set` operation defined in `IterableItems`.



#### `void add(E value) {`

Executes the `add` operation defined in `IterableItems`.



#### `bool remove(Object? value) {`

Executes the `remove` operation defined in `IterableItems`.



#### `E removeAt(int index) {`

Executes the `removeAt` operation defined in `IterableItems`.



#### `void clear() {`

Executes the `clear` operation defined in `IterableItems`.



#### `override
  String join([String separator = ""]) {`

Executes the `join` operation defined in `IterableItems`.



#### `override
  E reduce(E Function(E value, E element) combine) {`

Executes the `reduce` operation defined in `IterableItems`.



#### `T Function(T previousValue, E element) combine) {`

Executes the `Function` operation defined in `IterableItems`.



#### `T Function(E e) toElement) {`

Executes the `Function` operation defined in `IterableItems`.



#### `override
  Iterable<E> followedBy(Iterable<E> other) {`

Executes the `followedBy` operation defined in `IterableItems`.



#### `Iterable<T> Function(E element) toElements) {`

Executes the `Function` operation defined in `IterableItems`.



#### `override
  Iterable<E> skip(int count) {`

Executes the `skip` operation defined in `IterableItems`.



#### `override
  Iterable<E> skipWhile(bool Function(E value) test) {`

Executes the `skipWhile` operation defined in `IterableItems`.



#### `override
  Iterable<E> take(int count) {`

Executes the `take` operation defined in `IterableItems`.



#### `override
  Iterable<E> takeWhile(bool Function(E value) test) {`

Executes the `takeWhile` operation defined in `IterableItems`.



#### `override
  Iterable<E> where(bool Function(E element) test) {`

Executes the `where` operation defined in `IterableItems`.



#### `override
  Set<E> toSet() {`

Executes the `toSet` operation defined in `IterableItems`.



#### `int offset(int index) {`

Executes the `offset` operation defined in `IterableItems`.



#### `override
  void forEach(void Function(E element) action) {`

Executes the `forEach` operation defined in `IterableItems`.



#### `String getKey(int index) {`

Executes the `getKey` operation defined in `IterableItems`.



#### `if (index >= startIndex && index < offset(keyLength)) {`

Executes the `if` operation defined in `IterableItems`.



#### `E getItem(String key) {`

Executes the `getItem` operation defined in `IterableItems`.



#### `if (index != -1 && index < offset(length)) {`

Executes the `if` operation defined in `IterableItems`.



#### `override
  E elementAt(int index) {`

Executes the `elementAt` operation defined in `IterableItems`.



#### `if (index >= startIndex && index < offset(length)) {`

Executes the `if` operation defined in `IterableItems`.



#### `if (index < _keys.length) {`

Executes the `if` operation defined in `IterableItems`.



#### `if (m is VT) {`

Executes the `if` operation defined in `IterableItems`.



#### `if (test(elm)) {`

Executes the `if` operation defined in `IterableItems`.



#### `override
  bool any(bool Function(E element) test) {`

Executes the `any` operation defined in `IterableItems`.



#### `override
  bool every(bool Function(E element) test) {`

Executes the `every` operation defined in `IterableItems`.



#### `override
  bool contains(Object? element) {`

Executes the `contains` operation defined in `IterableItems`.



#### `if (element == elementAt(i)) {`

Executes the `if` operation defined in `IterableItems`.



#### `override
  String join([String separator = ""]) {`

Executes the `join` operation defined in `IterableItems`.



#### `return fold("", (s, elm) {`

Executes the `fold` operation defined in `IterableItems`.



#### `override
  E reduce(E Function(E value, E element) combine) {`

Executes the `reduce` operation defined in `IterableItems`.



#### `T Function(T previousValue, E element) combine) {`

Executes the `Function` operation defined in `IterableItems`.



#### `T Function(E e) toElement) {`

Executes the `Function` operation defined in `IterableItems`.



#### `return LargeList(mapped: _mapped, keys: _keys, extras: _extras, modifier: (e) {`

Executes the `LargeList` operation defined in `IterableItems`.



#### `override
  Iterable<E> followedBy(Iterable<E> other) {`

Executes the `followedBy` operation defined in `IterableItems`.



#### `Iterable<T> Function(E element) toElements) {`

Executes the `Function` operation defined in `IterableItems`.



#### `i<length; i++) {
      listed.addAll(toElements(elementAt(i)));
    }
    return listed;
  }

  @override
  Iterable<E> skip(int count) {`

Executes the `skip` operation defined in `IterableItems`.



#### `override
  Iterable<E> skipWhile(bool Function(E value) test) {`

Executes the `skipWhile` operation defined in `IterableItems`.



#### `forEach((e) {`

Executes the `forEach` operation defined in `IterableItems`.



#### `if (!adding) {`

Executes the `if` operation defined in `IterableItems`.



#### `if (!test(e)) {`

Executes the `if` operation defined in `IterableItems`.



#### `override
  Iterable<E> take(int count) {`

Executes the `take` operation defined in `IterableItems`.



#### `override
  Iterable<E> takeWhile(bool Function(E value) test) {`

Executes the `takeWhile` operation defined in `IterableItems`.



#### `i<length; i++) {
      E e = elementAt(i);
      if (test(e)) {
        iter.add(e);
      } else {
        break;
      }
    }
    return iter;
  }

  @override
  Iterable<E> where(bool Function(E element) test) {`

Executes the `where` operation defined in `IterableItems`.



#### `return LargeList(
      mapped: _mapped,
      keys: _keys,
      extras: _extras,
      modifier: (e) {`

Executes the `LargeList` operation defined in `IterableItems`.



#### `override
  Set<E> toSet() {`

Executes the `toSet` operation defined in `IterableItems`.



#### `LargeList<VT, E> copy(List<IterationList>? additionalItems) {`

Executes the `copy` operation defined in `IterableItems`.


