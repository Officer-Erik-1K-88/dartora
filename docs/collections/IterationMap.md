# IterationMap

This class `IterationMap` is part of the `collections` module of the Dartora library. It defines behavior and data structures as implemented in the source code.

_Defined in: `src/collections/iteration.dart`_

_Import_: `package:dartora/collections/iteration.dart`


---


### Constructors

#### `action(entry.key, entry.value);`

Constructs a new instance of `IterationMap`.



#### `IterationItem(
    source: sourceEntries,
    startIndex: startIndex,
    indexTake: indexTake,
  );`

Constructs a new instance of `IterationMap`.



#### `entries.map((entry) => entry.key);`

Constructs a new instance of `IterationMap`.



#### `entries.map((entry) => entry.value);`

Constructs a new instance of `IterationMap`.



#### `return get(key);`

Constructs a new instance of `IterationMap`.



#### `get(Object? key);`

Constructs a new instance of `IterationMap`.



#### `IndexError.check(index, length);`

Constructs a new instance of `IterationMap`.



#### `return sourceEntries.elementAt(offset(index));`

Constructs a new instance of `IterationMap`.



#### `return keys.contains(key);`

Constructs a new instance of `IterationMap`.



#### `return values.contains(value);`

Constructs a new instance of `IterationMap`.



#### `set(key, value);`

Constructs a new instance of `IterationMap`.



#### `indexOfKey(key);`

Constructs a new instance of `IterationMap`.



#### `insert(index, key, value);`

Constructs a new instance of `IterationMap`.



#### `insert(length, key, value);`

Constructs a new instance of `IterationMap`.



#### `void insert(int index, K key, V element);`

Constructs a new instance of `IterationMap`.



#### `throw IndexError.withLength(index, length);`

Constructs a new instance of `IterationMap`.



#### `iterable.elementAt(i);`

Constructs a new instance of `IterationMap`.



#### `insert(index+i, entry.key, entry.value);`

Constructs a new instance of `IterationMap`.



#### `other.forEach(set);`

Constructs a new instance of `IterationMap`.



#### `set(entry.key, entry.value);`

Constructs a new instance of `IterationMap`.



#### `set(key, ifAbsent());`

Constructs a new instance of `IterationMap`.



#### `set(key, update(get(key) as V));`

Constructs a new instance of `IterationMap`.



#### `assert(ifAbsent != null);`

Constructs a new instance of `IterationMap`.



#### `set(key, ifAbsent!());`

Constructs a new instance of `IterationMap`.



#### `set(entry.key, update(entry.key, entry.value));`

Constructs a new instance of `IterationMap`.



#### `get(key as K);`

Constructs a new instance of `IterationMap`.



#### `removeAction(removeKeys: [key]);`

Constructs a new instance of `IterationMap`.



#### `getKey(indexOf(value as V));`

Constructs a new instance of `IterationMap`.



#### `removeAction(removeKeys: [remd as K]);`

Constructs a new instance of `IterationMap`.



#### `IndexError.check(index, length);`

Constructs a new instance of `IterationMap`.



#### `getEntry(index);`

Constructs a new instance of `IterationMap`.



#### `removeAction(removeAll: [index]);`

Constructs a new instance of `IterationMap`.



#### `throw StateError('No element at index $index was removed.');`

Constructs a new instance of `IterationMap`.



#### `return removeAt(length-1);`

Constructs a new instance of `IterationMap`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationMap`.



#### `removeAction(start: offset(start), end: offset(end));`

Constructs a new instance of `IterationMap`.



#### `keys.add(entry.key);`

Constructs a new instance of `IterationMap`.



#### `removeAction(removeKeys: keys);`

Constructs a new instance of `IterationMap`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationMap`.



#### `removeAction(start: offset(start), end: offset(end), replacements: replacements);`

Constructs a new instance of `IterationMap`.



#### `removeWhere((key, value) => !test(key, value));`

Constructs a new instance of `IterationMap`.



#### `removeAction(start: startIndex, end: offset(length));`

Constructs a new instance of `IterationMap`.



#### `mapList.add(convert(entry.key, entry.value));`

Constructs a new instance of `IterationMap`.



#### `return Map.fromEntries(mapList);`

Constructs a new instance of `IterationMap`.



#### `return IterationItemMap(
      map: this,
      startIndex: start,
      indexTake: length - end,
    );`

Constructs a new instance of `IterationMap`.



#### `LinkedHashMap();`

Constructs a new instance of `IterationMap`.



#### `getEntry(i);`

Constructs a new instance of `IterationMap`.



#### `return IterationItemMap(
      map: newMap,
      startIndex: 0,
      indexTake: 0,
    );`

Constructs a new instance of `IterationMap`.



#### `IterationItemMap(
    map: LinkedHashMap.fromEntries((entries as Iteration<MapEntry<K, V>>).reversed)
  );`

Constructs a new instance of `IterationMap`.



#### `return IterationItemMap(
      map: this,
      startIndex: count,
      indexTake: 0,
    );`

Constructs a new instance of `IterationMap`.



#### `return IterationItemMap(
      map: this,
      startIndex: 0,
      indexTake: count,
    );`

Constructs a new instance of `IterationMap`.



#### `keys.toList()
  ;`

Constructs a new instance of `IterationMap`.



#### `_keys.map((key) => MapEntry(key, _map[key] as V));`

Constructs a new instance of `IterationMap`.



#### `if (!_keys.contains(key)) _keys.add(key);`

Constructs a new instance of `IterationMap`.



#### `_insertCheck(index, key, element);`

Constructs a new instance of `IterationMap`.



#### `_keys.indexOf(key);`

Constructs a new instance of `IterationMap`.



#### `_keys.removeAt(i);`

Constructs a new instance of `IterationMap`.



#### `_keys.add(key);`

Constructs a new instance of `IterationMap`.



#### `_keys.insert(index, key);`

Constructs a new instance of `IterationMap`.



#### `offset(length);`

Constructs a new instance of `IterationMap`.



#### `_keys.getRange(start, end);`

Constructs a new instance of `IterationMap`.



#### `_keys.removeRange(start, end);`

Constructs a new instance of `IterationMap`.



#### `_map.removeWhere((key, val) => keys.contains(key));`

Constructs a new instance of `IterationMap`.



#### `removeAll.sort();`

Constructs a new instance of `IterationMap`.



#### `_map.remove(_keys.removeAt(index-removed));`

Constructs a new instance of `IterationMap`.



#### `_map.remove(key);`

Constructs a new instance of `IterationMap`.



### Fields

#### `indexTake
  ;`

Stores the value of `indexTake` for this instance of `IterationMap`.



#### `int _startIndex;`

Stores the value of `_startIndex` for this instance of `IterationMap`.



#### `_startIndex;`

Stores the value of `_startIndex` for this instance of `IterationMap`.



#### `int _indexTake;`

Stores the value of `_indexTake` for this instance of `IterationMap`.



#### `_indexTake;`

Stores the value of `_indexTake` for this instance of `IterationMap`.



#### `get sourceEntries;`

Stores the value of `sourceEntries` for this instance of `IterationMap`.



#### `length;`

Stores the value of `length` for this instance of `IterationMap`.



#### `length;`

Stores the value of `length` for this instance of `IterationMap`.



#### `value;`

Stores the value of `value` for this instance of `IterationMap`.



#### `key;`

Stores the value of `key` for this instance of `IterationMap`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationMap`.



#### `indexTake;`

Stores the value of `indexTake` for this instance of `IterationMap`.



#### `return i;`

Stores the value of `i` for this instance of `IterationMap`.



#### `length;`

Stores the value of `length` for this instance of `IterationMap`.



#### `old;`

Stores the value of `old` for this instance of `IterationMap`.



#### `return old;`

Stores the value of `old` for this instance of `IterationMap`.



#### `remd;`

Stores the value of `remd` for this instance of `IterationMap`.



#### `return remd;`

Stores the value of `remd` for this instance of `IterationMap`.



#### `return removed;`

Stores the value of `removed` for this instance of `IterationMap`.



#### `start;`

Stores the value of `start` for this instance of `IterationMap`.



#### `itake;`

Stores the value of `itake` for this instance of `IterationMap`.



#### `value;`

Stores the value of `value` for this instance of `IterationMap`.



#### `final Map<K, V> _map;`

Stores the value of `_map` for this instance of `IterationMap`.



#### `final List<K> _keys;`

Stores the value of `_keys` for this instance of `IterationMap`.



#### `value;`

Stores the value of `value` for this instance of `IterationMap`.



#### `element;`

Stores the value of `element` for this instance of `IterationMap`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationMap`.



#### `start;`

Stores the value of `start` for this instance of `IterationMap`.



#### `start;`

Stores the value of `start` for this instance of `IterationMap`.



#### `removed;`

Stores the value of `removed` for this instance of `IterationMap`.



#### `return count;`

Stores the value of `count` for this instance of `IterationMap`.





### Methods

#### `override
  void forEach(void Function(K key, V value) action) {`

Executes the `forEach` operation defined in `IterationMap`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationMap`.



#### `MapEntry<K, V> getEntry(int index) {`

Executes the `getEntry` operation defined in `IterationMap`.



#### `override
  V sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `IterationMap`.



#### `K getKey(int index) {`

Executes the `getKey` operation defined in `IterationMap`.



#### `int indexOfKey(K key, [int start=0]) {`

Executes the `indexOfKey` operation defined in `IterationMap`.



#### `override
  bool containsKey(Object? key) {`

Executes the `containsKey` operation defined in `IterationMap`.



#### `override
  bool containsValue(Object? value) {`

Executes the `containsValue` operation defined in `IterationMap`.



#### `void set(K key, V value) {`

Executes the `set` operation defined in `IterationMap`.



#### `if (index != -1) {`

Executes the `if` operation defined in `IterationMap`.



#### `void insertAll(int index, Iterable<MapEntry<K, V>> iterable) {`

Executes the `insertAll` operation defined in `IterationMap`.



#### `if (index < 0 || index > length) {`

Executes the `if` operation defined in `IterationMap`.



#### `override
  void addAll(Map<K, V> other) {`

Executes the `addAll` operation defined in `IterationMap`.



#### `override
  void addEntries(Iterable<MapEntry<K, V>> newEntries) {`

Executes the `addEntries` operation defined in `IterationMap`.



#### `for (var entry in newEntries) {`

Executes the `for` operation defined in `IterationMap`.



#### `override
  V putIfAbsent(K key, V Function() ifAbsent) {`

Executes the `putIfAbsent` operation defined in `IterationMap`.



#### `if (!containsKey(key)) {`

Executes the `if` operation defined in `IterationMap`.



#### `if (containsKey(key)) {`

Executes the `if` operation defined in `IterationMap`.



#### `override
  void updateAll(V Function(K key, V value) update) {`

Executes the `updateAll` operation defined in `IterationMap`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationMap`.



#### `remove(Object? key) {`

Executes the `remove` operation defined in `IterationMap`.



#### `if (containsKey(key)) {`

Executes the `if` operation defined in `IterationMap`.



#### `removeValue(Object? value) {`

Executes the `removeValue` operation defined in `IterationMap`.



#### `if (containsValue(value)) {`

Executes the `if` operation defined in `IterationMap`.



#### `MapEntry<K, V> removeAt(int index) {`

Executes the `removeAt` operation defined in `IterationMap`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `IterationMap`.



#### `MapEntry<K, V> removeLast() {`

Executes the `removeLast` operation defined in `IterationMap`.



#### `An empty range (with `end == start`) is valid.
  void removeRange(int start, int end) {`

Executes the `range` operation defined in `IterationMap`.



#### `override
  void removeWhere(bool Function(K key, V value) test) {`

Executes the `removeWhere` operation defined in `IterationMap`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationMap`.



#### `if (test(entry.key, entry.value)) {`

Executes the `if` operation defined in `IterationMap`.



#### `An empty range (with `end == start`) is valid.
  void replaceRange(int start, int end, Iterable<MapEntry<K, V>> replacements) {`

Executes the `range` operation defined in `IterationMap`.



#### `void retainWhere(bool Function(K key, V value) test) {`

Executes the `retainWhere` operation defined in `IterationMap`.



#### `override
  void clear() {`

Executes the `clear` operation defined in `IterationMap`.



#### `MapEntry<K2, V2> Function(K key, V value) convert) {`

Executes the `Function` operation defined in `IterationMap`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationMap`.



#### `override
  IterationMap<K, V> getRange(int start, int end) {`

Executes the `getRange` operation defined in `IterationMap`.



#### `override
  IterationMap<K, V> sublist(int start, [int? end]) {`

Executes the `sublist` operation defined in `IterationMap`.



#### `override
  IterationMap<K, V> skip(int count) {`

Executes the `skip` operation defined in `IterationMap`.



#### `override
  IterationMap<K, V> take(int count) {`

Executes the `take` operation defined in `IterationMap`.



#### `override
  void set(K key, V value) {`

Executes the `set` operation defined in `IterationMap`.



#### `override
  void insert(int index, K key, V element) {`

Executes the `insert` operation defined in `IterationMap`.



#### `bool _insertCheck(int index, K key, V element) {`

Executes the `_insertCheck` operation defined in `IterationMap`.



#### `if (i > -1 && index > i) {`

Executes the `if` operation defined in `IterationMap`.



#### `if (index == _keys.length) {`

Executes the `if` operation defined in `IterationMap`.



#### `get(Object? key) {`

Executes the `get` operation defined in `IterationMap`.



#### `if (start != null || end != null || replacements != null) {`

Executes the `if` operation defined in `IterationMap`.



#### `if (replacements != null) {`

Executes the `if` operation defined in `IterationMap`.



#### `for (var replacement in replacements) {`

Executes the `for` operation defined in `IterationMap`.



#### `if (removeAll != null) {`

Executes the `if` operation defined in `IterationMap`.



#### `for (var index in removeAll) {`

Executes the `for` operation defined in `IterationMap`.



#### `if (removeKeys != null) {`

Executes the `if` operation defined in `IterationMap`.



#### `for (var key in removeKeys) {`

Executes the `for` operation defined in `IterationMap`.



#### `if (_keys.remove(key)) {`

Executes the `if` operation defined in `IterationMap`.


