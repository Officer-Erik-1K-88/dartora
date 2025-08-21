# DefaultSearchable

_No summary provided in source._

_Defined in: `src/search/searchable.dart`_

_Import_: `package:dartora/search/searchable.dart`


---


### Constructors

#### `ChildHolder(
      parent: this,
      onEvent: onHolderEvent,
      children: children,
    );`



#### `if (onCall != null) onCall!(this);`



#### `return ChildActionResult(onCall: onCall, target: this);`



#### `super(
    target: TargetChild(holder: target.target.holder, item: target.locked()),
    type: ChildActionType.result,
  );`



#### `holder.elementAt(_index);`



#### `ChildAction(
      onCall: onEvent,
      target: target,
      type: type,
    );`



#### `return _typedKeys.putIfAbsent(type, () => MultiViewList<String>(source:[]));`



#### `_getKeys(type).add(key);`



#### `_keys.add(key);`



#### `_getKeys(type).remove(key);`



#### `_keys.remove(key);`



#### `addAll(children);`



#### `return children.containsKey(key);`



#### `IndexError.check(index, length);`



#### `return _keys.indexOf(key);`



#### `return get(key);`



#### `Child(
      holder: this,
      item: item,
    );`



#### `_callAction(child, ChildActionType.add);`



#### `_addKey(child.key, child.type);`



#### `actionResult.call();`



#### `add(item);`



#### `_callAction(removed, ChildActionType.remove);`



#### `children.remove(key);`



#### `_removeKey(key, removed.type);`



#### `actionResult.call();`



#### `action(get(key)!);`



#### `combine(value, get(key)!);`



#### `return _iter.any(test);`



#### `return children.containsValue(element);`



#### `return _iter.every(test);`



#### `return _iter.expand(toElements);`



#### `elementAt(0);`



#### `return _iter.firstWhere(test, orElse: orElse);`



#### `return _iter.followedBy(other);`



#### `ChildHolderIterator(holder: this);`



#### `elementAt(length-1);`



#### `return _iter.lastWhere(test, orElse: orElse);`



#### `return LargeIterable(mapped: children, keys: keys, modifier: toElement);`



#### `IterableItems(mapped: children, keys: keys);`



#### `return _iter.reduce(combine);`



#### `return _iter.singleWhere(test, orElse: orElse);`



#### `return _iter.skip(count);`



#### `return _iter.skipWhile(test);`



#### `return _iter.take(count);`



#### `return _iter.takeWhile(test);`



#### `return _iter.toList(growable: growable);`



#### `return _iter.toSet();`



#### `return _iter.where(test);`



### Fields

#### `late ChildHolder<Searchable> _children;`



#### `override
  final String name;`



#### `_children;`



#### `final ChildHolder holder;`



#### `final T item;`



#### `id;`



#### `type;`



#### `return item;`



#### `final EventAction onCall;`



#### `final TargetChild<T> target;`



#### `final ChildActionType type;`



#### `false;`



#### `false;`



#### `_preventAction;`



#### `true;`



#### `true;`



#### `return this;`



#### `return null;`



#### `final ChildHolder<T> holder;`



#### `return false;`



#### `return true;`



#### `parent;`



#### `EventAction onEvent;`



#### `unmodifiable;`



#### `unmodifiable;`



#### `length;`



#### `parent;`



#### `child;`



#### `return child;`



#### `return null;`



#### `null;`



#### `return removed;`



#### `return null;`



#### `null;`



#### `initialValue;`



#### `return value;`



#### `first;`





### Methods

#### `if (item._parent != null) {`



#### `void prevent() {`



#### `if (!_lock) {`



#### `ChildAction<T> locked() {`



#### `call([bool getResult=false]) {`



#### `if (!_lock) {`



#### `if (getResult) {`



#### `override
  bool moveNext() {`



#### `ChildActionResult<T> _callAction(Child<T> target, ChildActionType type) {`



#### `MultiViewList<String> _getKeys(SearchableType type) {`



#### `void _addKey(String key, SearchableType type) {`



#### `void _removeKey(String key, SearchableType type) {`



#### `UnmodifiableListView<String> getKeys(SearchableType type) {`



#### `if (children != null) {`



#### `bool containsKey(String key) {`



#### `String getKey(int index) {`



#### `int getIndex(String key) {`



#### `get(String key) {`



#### `override
  Child<T> elementAt(int index) {`



#### `Child<T> add(T item) {`



#### `if (!actionResult.target.item.actionPrevented) {`



#### `if (parent != null) {`



#### `void addAll(List<T> items) {`



#### `for (var item in items) {`



#### `remove(String key) {`



#### `if (!actionResult.target.item.actionPrevented) {`



#### `bool removeElement(Child<T> child) {`



#### `Child removeAt(int index) {`



#### `override
  void forEach(void Function(Child<T> child) action) {`



#### `for (String key in _keys) {`



#### `FT Function(FT previousValue, Child<T> child) combine) {`



#### `for (String key in _keys) {`



#### `override
  bool any(bool Function(Child<T> element) test) {`



#### `override
  bool contains(Object? element) {`



#### `override
  bool every(bool Function(Child<T> element) test) {`



#### `Iterable<ET> Function(Child<T> element) toElements) {`



#### `followedBy(Iterable<Child<T>> other) {`



#### `override
  String join([String separator = ""]) {`



#### `MT Function(Child<T> e) toElement) {`



#### `override
  Child<T> reduce(Child<T> Function(Child<T> value, Child<T> element) combine) {`



#### `skip(int count) {`



#### `skipWhile(bool Function(Child<T> value) test) {`



#### `take(int count) {`



#### `takeWhile(bool Function(Child<T> value) test) {`



#### `toSet() {`



#### `where(bool Function(Child<T> element) test) {`


