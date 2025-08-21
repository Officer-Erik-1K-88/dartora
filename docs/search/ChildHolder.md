# ChildHolder

A holder for [Searchable]s.

_Defined in: `src/search/searchable.dart`_

_Import_: `package:dartora/search/searchable.dart`


---


### Constructors

#### `ChildAction(
      onCall: onEvent,
      target: target,
      type: type,
    );`

Constructs a new instance of `ChildHolder`.



#### `return _typedKeys.putIfAbsent(type, () => MultiViewList<String>(source:[]));`

Constructs a new instance of `ChildHolder`.



#### `_getKeys(type).add(key);`

Constructs a new instance of `ChildHolder`.



#### `_keys.add(key);`

Constructs a new instance of `ChildHolder`.



#### `_getKeys(type).remove(key);`

Constructs a new instance of `ChildHolder`.



#### `_keys.remove(key);`

Constructs a new instance of `ChildHolder`.



#### `addAll(children);`

Constructs a new instance of `ChildHolder`.



#### `return children.containsKey(key);`

Constructs a new instance of `ChildHolder`.



#### `IndexError.check(index, length);`

Constructs a new instance of `ChildHolder`.



#### `return _keys.indexOf(key);`

Constructs a new instance of `ChildHolder`.



#### `return get(key);`

Constructs a new instance of `ChildHolder`.



#### `Child(
      holder: this,
      item: item,
    );`

Constructs a new instance of `ChildHolder`.



#### `_callAction(child, ChildActionType.add);`

Constructs a new instance of `ChildHolder`.



#### `_addKey(child.key, child.type);`

Constructs a new instance of `ChildHolder`.



#### `actionResult.call();`

Constructs a new instance of `ChildHolder`.



#### `add(item);`

Constructs a new instance of `ChildHolder`.



#### `_callAction(removed, ChildActionType.remove);`

Constructs a new instance of `ChildHolder`.



#### `children.remove(key);`

Constructs a new instance of `ChildHolder`.



#### `_removeKey(key, removed.type);`

Constructs a new instance of `ChildHolder`.



#### `actionResult.call();`

Constructs a new instance of `ChildHolder`.



#### `action(get(key)!);`

Constructs a new instance of `ChildHolder`.



#### `combine(value, get(key)!);`

Constructs a new instance of `ChildHolder`.



#### `return _iter.any(test);`

Constructs a new instance of `ChildHolder`.



#### `return children.containsValue(element);`

Constructs a new instance of `ChildHolder`.



#### `return _iter.every(test);`

Constructs a new instance of `ChildHolder`.



#### `return _iter.expand(toElements);`

Constructs a new instance of `ChildHolder`.



#### `elementAt(0);`

Constructs a new instance of `ChildHolder`.



#### `return _iter.firstWhere(test, orElse: orElse);`

Constructs a new instance of `ChildHolder`.



#### `return _iter.followedBy(other);`

Constructs a new instance of `ChildHolder`.



#### `ChildHolderIterator(holder: this);`

Constructs a new instance of `ChildHolder`.



#### `elementAt(length-1);`

Constructs a new instance of `ChildHolder`.



#### `return _iter.lastWhere(test, orElse: orElse);`

Constructs a new instance of `ChildHolder`.



#### `return LargeIterable(mapped: children, keys: keys, modifier: toElement);`

Constructs a new instance of `ChildHolder`.



#### `IterableItems(mapped: children, keys: keys);`

Constructs a new instance of `ChildHolder`.



#### `return _iter.reduce(combine);`

Constructs a new instance of `ChildHolder`.



#### `return _iter.singleWhere(test, orElse: orElse);`

Constructs a new instance of `ChildHolder`.



#### `return _iter.skip(count);`

Constructs a new instance of `ChildHolder`.



#### `return _iter.skipWhile(test);`

Constructs a new instance of `ChildHolder`.



#### `return _iter.take(count);`

Constructs a new instance of `ChildHolder`.



#### `return _iter.takeWhile(test);`

Constructs a new instance of `ChildHolder`.



#### `return _iter.toList(growable: growable);`

Constructs a new instance of `ChildHolder`.



#### `return _iter.toSet();`

Constructs a new instance of `ChildHolder`.



#### `return _iter.where(test);`

Constructs a new instance of `ChildHolder`.



### Fields

#### `parent;`

Stores the value of `parent` for this instance of `ChildHolder`.



#### `EventAction onEvent;`

Stores the value of `onEvent` for this instance of `ChildHolder`.



#### `unmodifiable;`

Stores the value of `unmodifiable` for this instance of `ChildHolder`.



#### `unmodifiable;`

Stores the value of `unmodifiable` for this instance of `ChildHolder`.



#### `length;`

Stores the value of `length` for this instance of `ChildHolder`.



#### `parent;`

Stores the value of `parent` for this instance of `ChildHolder`.



#### `child;`

Stores the value of `child` for this instance of `ChildHolder`.



#### `return child;`

Stores the value of `child` for this instance of `ChildHolder`.



#### `return null;`

Stores the value of `null` for this instance of `ChildHolder`.



#### `null;`

Stores the value of `null` for this instance of `ChildHolder`.



#### `return removed;`

Stores the value of `removed` for this instance of `ChildHolder`.



#### `return null;`

Stores the value of `null` for this instance of `ChildHolder`.



#### `null;`

Stores the value of `null` for this instance of `ChildHolder`.



#### `initialValue;`

Stores the value of `initialValue` for this instance of `ChildHolder`.



#### `return value;`

Stores the value of `value` for this instance of `ChildHolder`.



#### `first;`

Stores the value of `first` for this instance of `ChildHolder`.





### Methods

#### `ChildActionResult<T> _callAction(Child<T> target, ChildActionType type) {`

Executes the `_callAction` operation defined in `ChildHolder`.



#### `MultiViewList<String> _getKeys(SearchableType type) {`

Executes the `_getKeys` operation defined in `ChildHolder`.



#### `void _addKey(String key, SearchableType type) {`

Executes the `_addKey` operation defined in `ChildHolder`.



#### `void _removeKey(String key, SearchableType type) {`

Executes the `_removeKey` operation defined in `ChildHolder`.



#### `UnmodifiableListView<String> getKeys(SearchableType type) {`

Executes the `getKeys` operation defined in `ChildHolder`.



#### `if (children != null) {`

Executes the `if` operation defined in `ChildHolder`.



#### `bool containsKey(String key) {`

Executes the `containsKey` operation defined in `ChildHolder`.



#### `String getKey(int index) {`

Executes the `getKey` operation defined in `ChildHolder`.



#### `int getIndex(String key) {`

Executes the `getIndex` operation defined in `ChildHolder`.



#### `get(String key) {`

Executes the `get` operation defined in `ChildHolder`.



#### `override
  Child<T> elementAt(int index) {`

Executes the `elementAt` operation defined in `ChildHolder`.



#### `Child<T> add(T item) {`

Executes the `add` operation defined in `ChildHolder`.



#### `if (!actionResult.target.item.actionPrevented) {`

Executes the `if` operation defined in `ChildHolder`.



#### `if (parent != null) {`

Executes the `if` operation defined in `ChildHolder`.



#### `void addAll(List<T> items) {`

Executes the `addAll` operation defined in `ChildHolder`.



#### `for (var item in items) {`

Executes the `for` operation defined in `ChildHolder`.



#### `remove(String key) {`

Executes the `remove` operation defined in `ChildHolder`.



#### `if (!actionResult.target.item.actionPrevented) {`

Executes the `if` operation defined in `ChildHolder`.



#### `bool removeElement(Child<T> child) {`

Executes the `removeElement` operation defined in `ChildHolder`.



#### `Child removeAt(int index) {`

Executes the `removeAt` operation defined in `ChildHolder`.



#### `override
  void forEach(void Function(Child<T> child) action) {`

Executes the `forEach` operation defined in `ChildHolder`.



#### `for (String key in _keys) {`

Executes the `for` operation defined in `ChildHolder`.



#### `FT Function(FT previousValue, Child<T> child) combine) {`

Executes the `Function` operation defined in `ChildHolder`.



#### `for (String key in _keys) {`

Executes the `for` operation defined in `ChildHolder`.



#### `override
  bool any(bool Function(Child<T> element) test) {`

Executes the `any` operation defined in `ChildHolder`.



#### `override
  bool contains(Object? element) {`

Executes the `contains` operation defined in `ChildHolder`.



#### `override
  bool every(bool Function(Child<T> element) test) {`

Executes the `every` operation defined in `ChildHolder`.



#### `Iterable<ET> Function(Child<T> element) toElements) {`

Executes the `Function` operation defined in `ChildHolder`.



#### `followedBy(Iterable<Child<T>> other) {`

Executes the `followedBy` operation defined in `ChildHolder`.



#### `override
  String join([String separator = ""]) {`

Executes the `join` operation defined in `ChildHolder`.



#### `MT Function(Child<T> e) toElement) {`

Executes the `Function` operation defined in `ChildHolder`.



#### `override
  Child<T> reduce(Child<T> Function(Child<T> value, Child<T> element) combine) {`

Executes the `reduce` operation defined in `ChildHolder`.



#### `skip(int count) {`

Executes the `skip` operation defined in `ChildHolder`.



#### `skipWhile(bool Function(Child<T> value) test) {`

Executes the `skipWhile` operation defined in `ChildHolder`.



#### `take(int count) {`

Executes the `take` operation defined in `ChildHolder`.



#### `takeWhile(bool Function(Child<T> value) test) {`

Executes the `takeWhile` operation defined in `ChildHolder`.



#### `toSet() {`

Executes the `toSet` operation defined in `ChildHolder`.



#### `where(bool Function(Child<T> element) test) {`

Executes the `where` operation defined in `ChildHolder`.


