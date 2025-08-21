# MultiViewList

_No summary provided in source._

_Defined in: `src/collections/lists.dart`_

_Import_: `package:dartora/collections/lists.dart`

---

### Constructors

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



#### `return MultiViewList(source: _listSource.followedBy(other) as List\<E\>);`



#### `return MultiViewList(source: _listSource.skip(count) as List\<E\>);`



#### `return MultiViewList(source: _listSource.skipWhile(test) as List\<E\>);`



#### `return MultiViewList(source: _listSource.take(count) as List\<E\>);`



#### `return MultiViewList(source: _listSource.takeWhile(test) as List\<E\>);`



#### `return MultiViewList(source: _listSource.where(test) as List\<E\>);`



#### `return unmodifiable.toList(growable: growable);`



#### `return unmodifiable.toSet();`



### Fields

#### `final Iterable\<E\> source;`



#### `final List\<E\> _listSource;`



#### `late final UnmodifiableListView\<E\> unmodifiable;`



#### `length;`



#### `isEmpty;`



#### `isNotEmpty;`



#### `iterator;`



#### `first;`



#### `last;`



#### `single;`



#### `value;`





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
  Iterable\<E\> followedBy(Iterable\<E\> other) {`



#### `Iterable\<T\> Function(E element) toElements) {`



#### `override
  Iterable\<E\> skip(int count) {`



#### `override
  Iterable\<E\> skipWhile(bool Function(E value) test) {`



#### `override
  Iterable\<E\> take(int count) {`



#### `override
  Iterable\<E\> takeWhile(bool Function(E value) test) {`



#### `override
  Iterable\<E\> where(bool Function(E element) test) {`



#### `override
  Set\<E\> toSet() {`


