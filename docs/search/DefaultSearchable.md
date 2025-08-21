# DefaultSearchable

This class `DefaultSearchable` is part of the `search` module of the Dartora library. It defines behavior and data structures as implemented in the source code.

_Defined in: `src/search/searchable.dart`_

_Import_: `package:dartora/search/searchable.dart`


---


### Constructors

#### `ChildHolder(
      parent: this,
      onEvent: onHolderEvent,
      children: children,
    );`

Constructs a new instance of `DefaultSearchable`.



#### `if (onCall != null) onCall!(this);`

Constructs a new instance of `DefaultSearchable`.



#### `return ChildActionResult(onCall: onCall, target: this);`

Constructs a new instance of `DefaultSearchable`.



#### `super(
    target: TargetChild(holder: target.target.holder, item: target.locked()),
    type: ChildActionType.result,
  );`

Constructs a new instance of `DefaultSearchable`.



#### `holder.elementAt(_index);`

Constructs a new instance of `DefaultSearchable`.



#### `ChildAction(
      onCall: onEvent,
      target: target,
      type: type,
    );`

Constructs a new instance of `DefaultSearchable`.



#### `return _typedKeys.putIfAbsent(type, () => MultiViewList<String>(source:[]));`

Constructs a new instance of `DefaultSearchable`.



#### `_getKeys(type).add(key);`

Constructs a new instance of `DefaultSearchable`.



#### `_keys.add(key);`

Constructs a new instance of `DefaultSearchable`.



#### `_getKeys(type).remove(key);`

Constructs a new instance of `DefaultSearchable`.



#### `_keys.remove(key);`

Constructs a new instance of `DefaultSearchable`.



#### `addAll(children);`

Constructs a new instance of `DefaultSearchable`.



#### `return children.containsKey(key);`

Constructs a new instance of `DefaultSearchable`.



#### `IndexError.check(index, length);`

Constructs a new instance of `DefaultSearchable`.



#### `return _keys.indexOf(key);`

Constructs a new instance of `DefaultSearchable`.



#### `return get(key);`

Constructs a new instance of `DefaultSearchable`.



#### `Child(
      holder: this,
      item: item,
    );`

Constructs a new instance of `DefaultSearchable`.



#### `_callAction(child, ChildActionType.add);`

Constructs a new instance of `DefaultSearchable`.



#### `_addKey(child.key, child.type);`

Constructs a new instance of `DefaultSearchable`.



#### `actionResult.call();`

Constructs a new instance of `DefaultSearchable`.



#### `add(item);`

Constructs a new instance of `DefaultSearchable`.



#### `_callAction(removed, ChildActionType.remove);`

Constructs a new instance of `DefaultSearchable`.



#### `children.remove(key);`

Constructs a new instance of `DefaultSearchable`.



#### `_removeKey(key, removed.type);`

Constructs a new instance of `DefaultSearchable`.



#### `actionResult.call();`

Constructs a new instance of `DefaultSearchable`.



#### `action(get(key)!);`

Constructs a new instance of `DefaultSearchable`.



#### `combine(value, get(key)!);`

Constructs a new instance of `DefaultSearchable`.



#### `return _iter.any(test);`

Constructs a new instance of `DefaultSearchable`.



#### `return children.containsValue(element);`

Constructs a new instance of `DefaultSearchable`.



#### `return _iter.every(test);`

Constructs a new instance of `DefaultSearchable`.



#### `return _iter.expand(toElements);`

Constructs a new instance of `DefaultSearchable`.



#### `elementAt(0);`

Constructs a new instance of `DefaultSearchable`.



#### `return _iter.firstWhere(test, orElse: orElse);`

Constructs a new instance of `DefaultSearchable`.



#### `return _iter.followedBy(other);`

Constructs a new instance of `DefaultSearchable`.



#### `ChildHolderIterator(holder: this);`

Constructs a new instance of `DefaultSearchable`.



#### `elementAt(length-1);`

Constructs a new instance of `DefaultSearchable`.



#### `return _iter.lastWhere(test, orElse: orElse);`

Constructs a new instance of `DefaultSearchable`.



#### `return LargeIterable(mapped: children, keys: keys, modifier: toElement);`

Constructs a new instance of `DefaultSearchable`.



#### `IterableItems(mapped: children, keys: keys);`

Constructs a new instance of `DefaultSearchable`.



#### `return _iter.reduce(combine);`

Constructs a new instance of `DefaultSearchable`.



#### `return _iter.singleWhere(test, orElse: orElse);`

Constructs a new instance of `DefaultSearchable`.



#### `return _iter.skip(count);`

Constructs a new instance of `DefaultSearchable`.



#### `return _iter.skipWhile(test);`

Constructs a new instance of `DefaultSearchable`.



#### `return _iter.take(count);`

Constructs a new instance of `DefaultSearchable`.



#### `return _iter.takeWhile(test);`

Constructs a new instance of `DefaultSearchable`.



#### `return _iter.toList(growable: growable);`

Constructs a new instance of `DefaultSearchable`.



#### `return _iter.toSet();`

Constructs a new instance of `DefaultSearchable`.



#### `return _iter.where(test);`

Constructs a new instance of `DefaultSearchable`.



### Fields

#### `late ChildHolder<Searchable> _children;`

Stores the value of `_children` for this instance of `DefaultSearchable`.



#### `override
  final String name;`

Stores the value of `name` for this instance of `DefaultSearchable`.



#### `_children;`

Stores the value of `_children` for this instance of `DefaultSearchable`.



#### `final ChildHolder holder;`

Stores the value of `holder` for this instance of `DefaultSearchable`.



#### `final T item;`

Stores the value of `item` for this instance of `DefaultSearchable`.



#### `id;`

Stores the value of `id` for this instance of `DefaultSearchable`.



#### `type;`

Stores the value of `type` for this instance of `DefaultSearchable`.



#### `return item;`

Stores the value of `item` for this instance of `DefaultSearchable`.



#### `final EventAction onCall;`

Stores the value of `onCall` for this instance of `DefaultSearchable`.



#### `final TargetChild<T> target;`

Stores the value of `target` for this instance of `DefaultSearchable`.



#### `final ChildActionType type;`

Stores the value of `type` for this instance of `DefaultSearchable`.



#### `false;`

Stores the value of `false` for this instance of `DefaultSearchable`.



#### `false;`

Stores the value of `false` for this instance of `DefaultSearchable`.



#### `_preventAction;`

Stores the value of `_preventAction` for this instance of `DefaultSearchable`.



#### `true;`

Stores the value of `true` for this instance of `DefaultSearchable`.



#### `true;`

Stores the value of `true` for this instance of `DefaultSearchable`.



#### `return this;`

Stores the value of `this` for this instance of `DefaultSearchable`.



#### `return null;`

Stores the value of `null` for this instance of `DefaultSearchable`.



#### `final ChildHolder<T> holder;`

Stores the value of `holder` for this instance of `DefaultSearchable`.



#### `return false;`

Stores the value of `false` for this instance of `DefaultSearchable`.



#### `return true;`

Stores the value of `true` for this instance of `DefaultSearchable`.



#### `parent;`

Stores the value of `parent` for this instance of `DefaultSearchable`.



#### `EventAction onEvent;`

Stores the value of `onEvent` for this instance of `DefaultSearchable`.



#### `unmodifiable;`

Stores the value of `unmodifiable` for this instance of `DefaultSearchable`.



#### `unmodifiable;`

Stores the value of `unmodifiable` for this instance of `DefaultSearchable`.



#### `length;`

Stores the value of `length` for this instance of `DefaultSearchable`.



#### `parent;`

Stores the value of `parent` for this instance of `DefaultSearchable`.



#### `child;`

Stores the value of `child` for this instance of `DefaultSearchable`.



#### `return child;`

Stores the value of `child` for this instance of `DefaultSearchable`.



#### `return null;`

Stores the value of `null` for this instance of `DefaultSearchable`.



#### `null;`

Stores the value of `null` for this instance of `DefaultSearchable`.



#### `return removed;`

Stores the value of `removed` for this instance of `DefaultSearchable`.



#### `return null;`

Stores the value of `null` for this instance of `DefaultSearchable`.



#### `null;`

Stores the value of `null` for this instance of `DefaultSearchable`.



#### `initialValue;`

Stores the value of `initialValue` for this instance of `DefaultSearchable`.



#### `return value;`

Stores the value of `value` for this instance of `DefaultSearchable`.



#### `first;`

Stores the value of `first` for this instance of `DefaultSearchable`.





### Methods

#### `if (item._parent != null) {`

Executes the `if` operation defined in `DefaultSearchable`.



#### `void prevent() {`

Executes the `prevent` operation defined in `DefaultSearchable`.



#### `if (!_lock) {`

Executes the `if` operation defined in `DefaultSearchable`.



#### `ChildAction<T> locked() {`

Executes the `locked` operation defined in `DefaultSearchable`.



#### `call([bool getResult=false]) {`

Executes the `call` operation defined in `DefaultSearchable`.



#### `if (!_lock) {`

Executes the `if` operation defined in `DefaultSearchable`.



#### `if (getResult) {`

Executes the `if` operation defined in `DefaultSearchable`.



#### `override
  bool moveNext() {`

Executes the `moveNext` operation defined in `DefaultSearchable`.



#### `ChildActionResult<T> _callAction(Child<T> target, ChildActionType type) {`

Executes the `_callAction` operation defined in `DefaultSearchable`.



#### `MultiViewList<String> _getKeys(SearchableType type) {`

Executes the `_getKeys` operation defined in `DefaultSearchable`.



#### `void _addKey(String key, SearchableType type) {`

Executes the `_addKey` operation defined in `DefaultSearchable`.



#### `void _removeKey(String key, SearchableType type) {`

Executes the `_removeKey` operation defined in `DefaultSearchable`.



#### `UnmodifiableListView<String> getKeys(SearchableType type) {`

Executes the `getKeys` operation defined in `DefaultSearchable`.



#### `if (children != null) {`

Executes the `if` operation defined in `DefaultSearchable`.



#### `bool containsKey(String key) {`

Executes the `containsKey` operation defined in `DefaultSearchable`.



#### `String getKey(int index) {`

Executes the `getKey` operation defined in `DefaultSearchable`.



#### `int getIndex(String key) {`

Executes the `getIndex` operation defined in `DefaultSearchable`.



#### `get(String key) {`

Executes the `get` operation defined in `DefaultSearchable`.



#### `override
  Child<T> elementAt(int index) {`

Executes the `elementAt` operation defined in `DefaultSearchable`.



#### `Child<T> add(T item) {`

Executes the `add` operation defined in `DefaultSearchable`.



#### `if (!actionResult.target.item.actionPrevented) {`

Executes the `if` operation defined in `DefaultSearchable`.



#### `if (parent != null) {`

Executes the `if` operation defined in `DefaultSearchable`.



#### `void addAll(List<T> items) {`

Executes the `addAll` operation defined in `DefaultSearchable`.



#### `for (var item in items) {`

Executes the `for` operation defined in `DefaultSearchable`.



#### `remove(String key) {`

Executes the `remove` operation defined in `DefaultSearchable`.



#### `if (!actionResult.target.item.actionPrevented) {`

Executes the `if` operation defined in `DefaultSearchable`.



#### `bool removeElement(Child<T> child) {`

Executes the `removeElement` operation defined in `DefaultSearchable`.



#### `Child removeAt(int index) {`

Executes the `removeAt` operation defined in `DefaultSearchable`.



#### `override
  void forEach(void Function(Child<T> child) action) {`

Executes the `forEach` operation defined in `DefaultSearchable`.



#### `for (String key in _keys) {`

Executes the `for` operation defined in `DefaultSearchable`.



#### `FT Function(FT previousValue, Child<T> child) combine) {`

Executes the `Function` operation defined in `DefaultSearchable`.



#### `for (String key in _keys) {`

Executes the `for` operation defined in `DefaultSearchable`.



#### `override
  bool any(bool Function(Child<T> element) test) {`

Executes the `any` operation defined in `DefaultSearchable`.



#### `override
  bool contains(Object? element) {`

Executes the `contains` operation defined in `DefaultSearchable`.



#### `override
  bool every(bool Function(Child<T> element) test) {`

Executes the `every` operation defined in `DefaultSearchable`.



#### `Iterable<ET> Function(Child<T> element) toElements) {`

Executes the `Function` operation defined in `DefaultSearchable`.



#### `followedBy(Iterable<Child<T>> other) {`

Executes the `followedBy` operation defined in `DefaultSearchable`.



#### `override
  String join([String separator = ""]) {`

Executes the `join` operation defined in `DefaultSearchable`.



#### `MT Function(Child<T> e) toElement) {`

Executes the `Function` operation defined in `DefaultSearchable`.



#### `override
  Child<T> reduce(Child<T> Function(Child<T> value, Child<T> element) combine) {`

Executes the `reduce` operation defined in `DefaultSearchable`.



#### `skip(int count) {`

Executes the `skip` operation defined in `DefaultSearchable`.



#### `skipWhile(bool Function(Child<T> value) test) {`

Executes the `skipWhile` operation defined in `DefaultSearchable`.



#### `take(int count) {`

Executes the `take` operation defined in `DefaultSearchable`.



#### `takeWhile(bool Function(Child<T> value) test) {`

Executes the `takeWhile` operation defined in `DefaultSearchable`.



#### `toSet() {`

Executes the `toSet` operation defined in `DefaultSearchable`.



#### `where(bool Function(Child<T> element) test) {`

Executes the `where` operation defined in `DefaultSearchable`.


