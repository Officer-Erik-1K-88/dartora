# IterationItemMap

This class `IterationItemMap` is part of the `collections` module of the Dartora library. It defines behavior and data structures as implemented in the source code.

_Defined in: `src/collections/iteration.dart`_

_Import_: `package:dartora/collections/iteration.dart`


---


### Constructors

#### `keys.toList()
  ;`

Constructs a new instance of `IterationItemMap`.



#### `_keys.map((key) => MapEntry(key, _map[key] as V));`

Constructs a new instance of `IterationItemMap`.



#### `if (!_keys.contains(key)) _keys.add(key);`

Constructs a new instance of `IterationItemMap`.



#### `_insertCheck(index, key, element);`

Constructs a new instance of `IterationItemMap`.



#### `_keys.indexOf(key);`

Constructs a new instance of `IterationItemMap`.



#### `_keys.removeAt(i);`

Constructs a new instance of `IterationItemMap`.



#### `_keys.add(key);`

Constructs a new instance of `IterationItemMap`.



#### `_keys.insert(index, key);`

Constructs a new instance of `IterationItemMap`.



#### `offset(length);`

Constructs a new instance of `IterationItemMap`.



#### `_keys.getRange(start, end);`

Constructs a new instance of `IterationItemMap`.



#### `_keys.removeRange(start, end);`

Constructs a new instance of `IterationItemMap`.



#### `_map.removeWhere((key, val) => keys.contains(key));`

Constructs a new instance of `IterationItemMap`.



#### `removeAll.sort();`

Constructs a new instance of `IterationItemMap`.



#### `_map.remove(_keys.removeAt(index-removed));`

Constructs a new instance of `IterationItemMap`.



#### `_map.remove(key);`

Constructs a new instance of `IterationItemMap`.



### Fields

#### `final Map<K, V> _map;`

Stores the value of `_map` for this instance of `IterationItemMap`.



#### `final List<K> _keys;`

Stores the value of `_keys` for this instance of `IterationItemMap`.



#### `value;`

Stores the value of `value` for this instance of `IterationItemMap`.



#### `element;`

Stores the value of `element` for this instance of `IterationItemMap`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationItemMap`.



#### `start;`

Stores the value of `start` for this instance of `IterationItemMap`.



#### `start;`

Stores the value of `start` for this instance of `IterationItemMap`.



#### `removed;`

Stores the value of `removed` for this instance of `IterationItemMap`.



#### `return count;`

Stores the value of `count` for this instance of `IterationItemMap`.





### Methods

#### `override
  void set(K key, V value) {`

Executes the `set` operation defined in `IterationItemMap`.



#### `override
  void insert(int index, K key, V element) {`

Executes the `insert` operation defined in `IterationItemMap`.



#### `bool _insertCheck(int index, K key, V element) {`

Executes the `_insertCheck` operation defined in `IterationItemMap`.



#### `if (i > -1 && index > i) {`

Executes the `if` operation defined in `IterationItemMap`.



#### `if (index == _keys.length) {`

Executes the `if` operation defined in `IterationItemMap`.



#### `get(Object? key) {`

Executes the `get` operation defined in `IterationItemMap`.



#### `if (start != null || end != null || replacements != null) {`

Executes the `if` operation defined in `IterationItemMap`.



#### `if (replacements != null) {`

Executes the `if` operation defined in `IterationItemMap`.



#### `for (var replacement in replacements) {`

Executes the `for` operation defined in `IterationItemMap`.



#### `if (removeAll != null) {`

Executes the `if` operation defined in `IterationItemMap`.



#### `for (var index in removeAll) {`

Executes the `for` operation defined in `IterationItemMap`.



#### `if (removeKeys != null) {`

Executes the `if` operation defined in `IterationItemMap`.



#### `for (var key in removeKeys) {`

Executes the `for` operation defined in `IterationItemMap`.



#### `if (_keys.remove(key)) {`

Executes the `if` operation defined in `IterationItemMap`.


