# IterableItems

_No summary provided in source._

_Defined in: `src/collections/lists.dart`_

_Import_: `package:dartora/collections/lists.dart`


---


### Constructors

#### `super(modifier: (e) => e);`



#### `UnmodifiableListView(_listSource);`



#### `_listSource.forEach(action);`



#### `return _listSource.elementAt(index);`



#### `return _listSource.indexOf(element, start);`



#### `return _listSource.firstWhere(test, orElse: orElse);`



#### `return _listSource.lastWhere(test, orElse: orElse);`



#### `return _listSource.singleWhere(test, orElse: orElse);`



#### `return _listSource.any(test);`



#### `return _listSource.every(test);`



#### `return _listSource.contains(element);`



#### `_listSource.add(value);`



#### `return _listSource.remove(value);`



#### `return _listSource.removeAt(index);`



#### `_listSource.clear();`



#### `return _listSource.join(separator);`



#### `return _listSource.reduce(combine);`



#### `return _listSource.fold(initialValue, combine);`



#### `return MultiViewList(source: _listSource.followedBy(other) as List<E>);`



#### `return MultiViewList(source: _listSource.skip(count) as List<E>);`



#### `return MultiViewList(source: _listSource.skipWhile(test) as List<E>);`



#### `return MultiViewList(source: _listSource.take(count) as List<E>);`



#### `return MultiViewList(source: _listSource.takeWhile(test) as List<E>);`



#### `return MultiViewList(source: _listSource.where(test) as List<E>);`



#### `return unmodifiable.toList(growable: growable);`



#### `return unmodifiable.toSet();`



#### `i<length; i++) {
      action(elementAt(i));
    }
  }

  // Element retrieval

  @override
  E get first => elementAt(startIndex);`



#### `elementAt(length-1);`



#### `if (keyLength == 0) throw StateError('The LargeList has no keys.');`



#### `offset(index);`



#### `throw IndexError.withLength(index - startIndex, keyLength);`



#### `_keys.indexOf(key, startIndex);`



#### `if (m == null) throw KeyException(key: key);`



#### `return modifier(m);`



#### `offset(index);`



#### `_extras.elementAt(index-_keys.length);`



#### `if (m == null) throw BaseException("Value at `$index` doesn't exist.");`



#### `return modifier(m);`



#### `return elementAt(index);`



#### `elementAt(i);`



#### `if (orElse != null) return orElse();`



#### `throw StateError("There was no elements matching test.");`



#### `elementAt(i);`



#### `if (orElse != null) return orElse();`



#### `throw StateError("There was no elements matching test.");`



#### `elementAt(i);`



#### `if (orElse != null) return orElse();`



#### `throw StateError("There was no elements matching test.");`



#### `combine(value, elementAt(i));`



#### `combine(value, elementAt(i));`



#### `return toElement(modifier(e));`



#### `return copy([
      IterationList(iterable: other),
    ]);`



#### `return LargeList(mapped: _mapped, keys: _keys, extras: _extras, modifier: modifier, startIndex: offset(count), indexCount: length-count);`



#### `if (adding) iter.add(e);`



#### `return LargeList(mapped: _mapped, keys: _keys, extras: _extras, modifier: modifier, startIndex: startIndex, indexCount: count);`



#### `throw UnimplementedError();`



#### `throw UnimplementedError();`



#### `return List.from(this, growable: growable);`



#### `return Set.from(this);`



#### `IterationHolder(items: extraItems);`



#### `return LargeList(
      mapped: _mapped,
      keys: List.from(_keys),
      extras: extras,
      modifier: modifier,
      startIndex: startIndex,
      indexCount: _indexCount,
    );`



### Fields

#### `final Iterable<E> source;`



#### `final List<E> _listSource;`



#### `late final UnmodifiableListView<E> unmodifiable;`



#### `length;`



#### `isEmpty;`



#### `isNotEmpty;`



#### `iterator;`



#### `first;`



#### `last;`



#### `single;`



#### `value;`



#### `final Map<String, VT> _mapped;`



#### `final List<String> _keys;`



#### `final IterationHolder _extras;`



#### `modifier;`



#### `final int startIndex;`



#### `_indexCount;`



#### `indexCount
  ;`



#### `startIndex;`



#### `startIndex;`



#### `kl;`



#### `first;`



#### `m;`



#### `dynamic m;`



#### `return m as E;`



#### `length;`



#### `return elm;`



#### `return elm;`



#### `ret;`



#### `length;`



#### `elm;`



#### `break;`



#### `length;`



#### `return true;`



#### `return false;`



#### `length;`



#### `return false;`



#### `return true;`



#### `length;`



#### `return true;`



#### `return false;`



#### `first;`



#### `length;`



#### `return value;`



#### `initialValue;`



#### `length;`



#### `return value;`



#### `false;`



#### `true;`



#### `return iter;`



#### `length;`



#### `as R;`





### Methods

#### `from(source)
  {`



#### `override
  void forEach(void Function(E element) action) {`



#### `override
  E elementAt(int index) {`



#### `up

  int indexOf(E element, [int start = 0]) {`



#### `override
  bool any(bool Function(E element) test) {`



#### `override
  bool every(bool Function(E element) test) {`



#### `override
  bool contains(Object? element) {`



#### `Modification

  void set(int index, E value) {`



#### `void add(E value) {`



#### `bool remove(Object? value) {`



#### `E removeAt(int index) {`



#### `void clear() {`



#### `override
  String join([String separator = ""]) {`



#### `override
  E reduce(E Function(E value, E element) combine) {`



#### `T Function(T previousValue, E element) combine) {`



#### `T Function(E e) toElement) {`



#### `override
  Iterable<E> followedBy(Iterable<E> other) {`



#### `Iterable<T> Function(E element) toElements) {`



#### `override
  Iterable<E> skip(int count) {`



#### `override
  Iterable<E> skipWhile(bool Function(E value) test) {`



#### `override
  Iterable<E> take(int count) {`



#### `override
  Iterable<E> takeWhile(bool Function(E value) test) {`



#### `override
  Iterable<E> where(bool Function(E element) test) {`



#### `override
  Set<E> toSet() {`



#### `int offset(int index) {`



#### `override
  void forEach(void Function(E element) action) {`



#### `String getKey(int index) {`



#### `if (index >= startIndex && index < offset(keyLength)) {`



#### `E getItem(String key) {`



#### `if (index != -1 && index < offset(length)) {`



#### `override
  E elementAt(int index) {`



#### `if (index >= startIndex && index < offset(length)) {`



#### `if (index < _keys.length) {`



#### `if (m is VT) {`



#### `if (test(elm)) {`



#### `override
  bool any(bool Function(E element) test) {`



#### `override
  bool every(bool Function(E element) test) {`



#### `override
  bool contains(Object? element) {`



#### `if (element == elementAt(i)) {`



#### `override
  String join([String separator = ""]) {`



#### `return fold("", (s, elm) {`



#### `override
  E reduce(E Function(E value, E element) combine) {`



#### `T Function(T previousValue, E element) combine) {`



#### `T Function(E e) toElement) {`



#### `return LargeList(mapped: _mapped, keys: _keys, extras: _extras, modifier: (e) {`



#### `override
  Iterable<E> followedBy(Iterable<E> other) {`



#### `Iterable<T> Function(E element) toElements) {`



#### `i<length; i++) {
      listed.addAll(toElements(elementAt(i)));
    }
    return listed;
  }

  @override
  Iterable<E> skip(int count) {`



#### `override
  Iterable<E> skipWhile(bool Function(E value) test) {`



#### `forEach((e) {`



#### `if (!adding) {`



#### `if (!test(e)) {`



#### `override
  Iterable<E> take(int count) {`



#### `override
  Iterable<E> takeWhile(bool Function(E value) test) {`



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



#### `return LargeList(
      mapped: _mapped,
      keys: _keys,
      extras: _extras,
      modifier: (e) {`



#### `override
  Set<E> toSet() {`



#### `LargeList<VT, E> copy(List<IterationList>? additionalItems) {`


