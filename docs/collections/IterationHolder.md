# IterationHolder

This class `IterationHolder` is part of the `collections` module of the Dartora library. It defines behavior and data structures as implemented in the source code.

_Defined in: `src/collections/iteration.dart`_

_Import_: `package:dartora/collections/iteration.dart`


---


### Constructors

#### `items.fold(0, (i, item) => i + item.length);`

Constructs a new instance of `IterationHolder`.



#### `HolderIterator(holder: items);`

Constructs a new instance of `IterationHolder`.



#### `items.clear();`

Constructs a new instance of `IterationHolder`.



#### `items.add(IterationList(iterable: List.filled(newLength-_sourceLength, null as E)));`

Constructs a new instance of `IterationHolder`.



#### `throw StateError("Cannot have a sourceLength bigger than current when E isn't nullable.");`

Constructs a new instance of `IterationHolder`.



#### `item.removeLast();`

Constructs a new instance of `IterationHolder`.



#### `items.removeLast();`

Constructs a new instance of `IterationHolder`.



#### `items.fold(0, (i, item) => i + item.length);`

Constructs a new instance of `IterationHolder`.



#### `return item.elementAt(actualIndex);`

Constructs a new instance of `IterationHolder`.



#### `throw IndexError.withLength(sourceIndex, length);`

Constructs a new instance of `IterationHolder`.



#### `offset(length);`

Constructs a new instance of `IterationHolder`.



#### `item.removeRange(actualStart, itemLen);`

Constructs a new instance of `IterationHolder`.



#### `item.replaceRange(actualStart, actualEnd, replacements);`

Constructs a new instance of `IterationHolder`.



#### `item.removeRange(actualStart, actualEnd);`

Constructs a new instance of `IterationHolder`.



#### `items.removeRange(removeRangeStart, removeRangeEnd);`

Constructs a new instance of `IterationHolder`.



#### `if (repPos == null) throw StateError('Cannot replace items in bad range.');`

Constructs a new instance of `IterationHolder`.



#### `Replacements inserted as independent list
          items.insert(repPos, IterationList(
            iterable: replacements
          ));`

Constructs a new instance of `IterationHolder`.



#### `removeAll.removeWhere((index) => index <=-1);`

Constructs a new instance of `IterationHolder`.



#### `item.insertAll(actualIndex, iterable);`

Constructs a new instance of `IterationHolder`.



#### `item.set(actualIndex, element);`

Constructs a new instance of `IterationHolder`.



#### `action(entry.key, entry.value);`

Constructs a new instance of `IterationHolder`.



#### `IterationItem(
    source: sourceEntries,
    startIndex: startIndex,
    indexTake: indexTake,
  );`

Constructs a new instance of `IterationHolder`.



#### `entries.map((entry) => entry.key);`

Constructs a new instance of `IterationHolder`.



#### `entries.map((entry) => entry.value);`

Constructs a new instance of `IterationHolder`.



#### `return get(key);`

Constructs a new instance of `IterationHolder`.



#### `get(Object? key);`

Constructs a new instance of `IterationHolder`.



#### `IndexError.check(index, length);`

Constructs a new instance of `IterationHolder`.



#### `return sourceEntries.elementAt(offset(index));`

Constructs a new instance of `IterationHolder`.



#### `return keys.contains(key);`

Constructs a new instance of `IterationHolder`.



#### `return values.contains(value);`

Constructs a new instance of `IterationHolder`.



#### `set(key, value);`

Constructs a new instance of `IterationHolder`.



#### `indexOfKey(key);`

Constructs a new instance of `IterationHolder`.



#### `insert(index, key, value);`

Constructs a new instance of `IterationHolder`.



#### `insert(length, key, value);`

Constructs a new instance of `IterationHolder`.



#### `void insert(int index, K key, V element);`

Constructs a new instance of `IterationHolder`.



#### `throw IndexError.withLength(index, length);`

Constructs a new instance of `IterationHolder`.



#### `iterable.elementAt(i);`

Constructs a new instance of `IterationHolder`.



#### `insert(index+i, entry.key, entry.value);`

Constructs a new instance of `IterationHolder`.



#### `other.forEach(set);`

Constructs a new instance of `IterationHolder`.



#### `set(entry.key, entry.value);`

Constructs a new instance of `IterationHolder`.



#### `set(key, ifAbsent());`

Constructs a new instance of `IterationHolder`.



#### `set(key, update(get(key) as V));`

Constructs a new instance of `IterationHolder`.



#### `assert(ifAbsent != null);`

Constructs a new instance of `IterationHolder`.



#### `set(key, ifAbsent!());`

Constructs a new instance of `IterationHolder`.



#### `set(entry.key, update(entry.key, entry.value));`

Constructs a new instance of `IterationHolder`.



#### `get(key as K);`

Constructs a new instance of `IterationHolder`.



#### `removeAction(removeKeys: [key]);`

Constructs a new instance of `IterationHolder`.



#### `getKey(indexOf(value as V));`

Constructs a new instance of `IterationHolder`.



#### `removeAction(removeKeys: [remd as K]);`

Constructs a new instance of `IterationHolder`.



#### `IndexError.check(index, length);`

Constructs a new instance of `IterationHolder`.



#### `getEntry(index);`

Constructs a new instance of `IterationHolder`.



#### `removeAction(removeAll: [index]);`

Constructs a new instance of `IterationHolder`.



#### `throw StateError('No element at index $index was removed.');`

Constructs a new instance of `IterationHolder`.



#### `return removeAt(length-1);`

Constructs a new instance of `IterationHolder`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationHolder`.



#### `removeAction(start: offset(start), end: offset(end));`

Constructs a new instance of `IterationHolder`.



#### `keys.add(entry.key);`

Constructs a new instance of `IterationHolder`.



#### `removeAction(removeKeys: keys);`

Constructs a new instance of `IterationHolder`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationHolder`.



#### `removeAction(start: offset(start), end: offset(end), replacements: replacements);`

Constructs a new instance of `IterationHolder`.



#### `removeWhere((key, value) => !test(key, value));`

Constructs a new instance of `IterationHolder`.



#### `removeAction(start: startIndex, end: offset(length));`

Constructs a new instance of `IterationHolder`.



#### `mapList.add(convert(entry.key, entry.value));`

Constructs a new instance of `IterationHolder`.



#### `return Map.fromEntries(mapList);`

Constructs a new instance of `IterationHolder`.



#### `return IterationItemMap(
      map: this,
      startIndex: start,
      indexTake: length - end,
    );`

Constructs a new instance of `IterationHolder`.



#### `LinkedHashMap();`

Constructs a new instance of `IterationHolder`.



#### `getEntry(i);`

Constructs a new instance of `IterationHolder`.



#### `return IterationItemMap(
      map: newMap,
      startIndex: 0,
      indexTake: 0,
    );`

Constructs a new instance of `IterationHolder`.



#### `IterationItemMap(
    map: LinkedHashMap.fromEntries((entries as Iteration<MapEntry<K, V>>).reversed)
  );`

Constructs a new instance of `IterationHolder`.



#### `return IterationItemMap(
      map: this,
      startIndex: count,
      indexTake: 0,
    );`

Constructs a new instance of `IterationHolder`.



#### `return IterationItemMap(
      map: this,
      startIndex: 0,
      indexTake: count,
    );`

Constructs a new instance of `IterationHolder`.



#### `keys.toList()
  ;`

Constructs a new instance of `IterationHolder`.



#### `_keys.map((key) => MapEntry(key, _map[key] as V));`

Constructs a new instance of `IterationHolder`.



#### `if (!_keys.contains(key)) _keys.add(key);`

Constructs a new instance of `IterationHolder`.



#### `_insertCheck(index, key, element);`

Constructs a new instance of `IterationHolder`.



#### `_keys.indexOf(key);`

Constructs a new instance of `IterationHolder`.



#### `_keys.removeAt(i);`

Constructs a new instance of `IterationHolder`.



#### `_keys.add(key);`

Constructs a new instance of `IterationHolder`.



#### `_keys.insert(index, key);`

Constructs a new instance of `IterationHolder`.



#### `offset(length);`

Constructs a new instance of `IterationHolder`.



#### `_keys.getRange(start, end);`

Constructs a new instance of `IterationHolder`.



#### `_keys.removeRange(start, end);`

Constructs a new instance of `IterationHolder`.



#### `_map.removeWhere((key, val) => keys.contains(key));`

Constructs a new instance of `IterationHolder`.



#### `removeAll.sort();`

Constructs a new instance of `IterationHolder`.



#### `_map.remove(_keys.removeAt(index-removed));`

Constructs a new instance of `IterationHolder`.



#### `_map.remove(key);`

Constructs a new instance of `IterationHolder`.



### Fields

#### `items;`

Stores the value of `items` for this instance of `IterationHolder`.



#### `_sourceLength;`

Stores the value of `_sourceLength` for this instance of `IterationHolder`.



#### `newLength;`

Stores the value of `newLength` for this instance of `IterationHolder`.



#### `break;`

Stores the value of `break` for this instance of `IterationHolder`.



#### `break;`

Stores the value of `break` for this instance of `IterationHolder`.



#### `amount;`

Stores the value of `amount` for this instance of `IterationHolder`.



#### `sourceIndex;`

Stores the value of `sourceIndex` for this instance of `IterationHolder`.



#### `length;`

Stores the value of `length` for this instance of `IterationHolder`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationHolder`.



#### `break;`

Stores the value of `break` for this instance of `IterationHolder`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationHolder`.



#### `start;`

Stores the value of `start` for this instance of `IterationHolder`.



#### `end;`

Stores the value of `end` for this instance of `IterationHolder`.



#### `repPos;`

Stores the value of `repPos` for this instance of `IterationHolder`.



#### `false;`

Stores the value of `false` for this instance of `IterationHolder`.



#### `removeRangeStart;`

Stores the value of `removeRangeStart` for this instance of `IterationHolder`.



#### `removeRangeEnd;`

Stores the value of `removeRangeEnd` for this instance of `IterationHolder`.



#### `length;`

Stores the value of `length` for this instance of `IterationHolder`.



#### `length;`

Stores the value of `length` for this instance of `IterationHolder`.



#### `itemLen;`

Stores the value of `itemLen` for this instance of `IterationHolder`.



#### `itemLen;`

Stores the value of `itemLen` for this instance of `IterationHolder`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationHolder`.



#### `i;`

Stores the value of `i` for this instance of `IterationHolder`.



#### `i;`

Stores the value of `i` for this instance of `IterationHolder`.



#### `itemLen;`

Stores the value of `itemLen` for this instance of `IterationHolder`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationHolder`.



#### `true;`

Stores the value of `true` for this instance of `IterationHolder`.



#### `break;`

Stores the value of `break` for this instance of `IterationHolder`.



#### `length;`

Stores the value of `length` for this instance of `IterationHolder`.



#### `length;`

Stores the value of `length` for this instance of `IterationHolder`.



#### `start;`

Stores the value of `start` for this instance of `IterationHolder`.



#### `length;`

Stores the value of `length` for this instance of `IterationHolder`.



#### `length;`

Stores the value of `length` for this instance of `IterationHolder`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationHolder`.



#### `removed;`

Stores the value of `removed` for this instance of `IterationHolder`.



#### `return count;`

Stores the value of `count` for this instance of `IterationHolder`.



#### `index;`

Stores the value of `index` for this instance of `IterationHolder`.



#### `length;`

Stores the value of `length` for this instance of `IterationHolder`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationHolder`.



#### `break;`

Stores the value of `break` for this instance of `IterationHolder`.



#### `index;`

Stores the value of `index` for this instance of `IterationHolder`.



#### `length;`

Stores the value of `length` for this instance of `IterationHolder`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationHolder`.



#### `break;`

Stores the value of `break` for this instance of `IterationHolder`.



#### `indexTake
  ;`

Stores the value of `indexTake` for this instance of `IterationHolder`.



#### `int _startIndex;`

Stores the value of `_startIndex` for this instance of `IterationHolder`.



#### `_startIndex;`

Stores the value of `_startIndex` for this instance of `IterationHolder`.



#### `int _indexTake;`

Stores the value of `_indexTake` for this instance of `IterationHolder`.



#### `_indexTake;`

Stores the value of `_indexTake` for this instance of `IterationHolder`.



#### `get sourceEntries;`

Stores the value of `sourceEntries` for this instance of `IterationHolder`.



#### `length;`

Stores the value of `length` for this instance of `IterationHolder`.



#### `length;`

Stores the value of `length` for this instance of `IterationHolder`.



#### `value;`

Stores the value of `value` for this instance of `IterationHolder`.



#### `key;`

Stores the value of `key` for this instance of `IterationHolder`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationHolder`.



#### `indexTake;`

Stores the value of `indexTake` for this instance of `IterationHolder`.



#### `return i;`

Stores the value of `i` for this instance of `IterationHolder`.



#### `length;`

Stores the value of `length` for this instance of `IterationHolder`.



#### `old;`

Stores the value of `old` for this instance of `IterationHolder`.



#### `return old;`

Stores the value of `old` for this instance of `IterationHolder`.



#### `remd;`

Stores the value of `remd` for this instance of `IterationHolder`.



#### `return remd;`

Stores the value of `remd` for this instance of `IterationHolder`.



#### `return removed;`

Stores the value of `removed` for this instance of `IterationHolder`.



#### `start;`

Stores the value of `start` for this instance of `IterationHolder`.



#### `itake;`

Stores the value of `itake` for this instance of `IterationHolder`.



#### `value;`

Stores the value of `value` for this instance of `IterationHolder`.



#### `final Map<K, V> _map;`

Stores the value of `_map` for this instance of `IterationHolder`.



#### `final List<K> _keys;`

Stores the value of `_keys` for this instance of `IterationHolder`.



#### `value;`

Stores the value of `value` for this instance of `IterationHolder`.



#### `element;`

Stores the value of `element` for this instance of `IterationHolder`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationHolder`.



#### `start;`

Stores the value of `start` for this instance of `IterationHolder`.



#### `start;`

Stores the value of `start` for this instance of `IterationHolder`.



#### `removed;`

Stores the value of `removed` for this instance of `IterationHolder`.



#### `return count;`

Stores the value of `count` for this instance of `IterationHolder`.





### Methods

#### `override
  set sourceLength(int newLength) {`

Executes the `sourceLength` operation defined in `IterationHolder`.



#### `if (newLength == 0) {`

Executes the `if` operation defined in `IterationHolder`.



#### `else if (newLength > _sourceLength) {`

Executes the `if` operation defined in `IterationHolder`.



#### `if (null is E) {`

Executes the `if` operation defined in `IterationHolder`.



#### `else if (newLength < _sourceLength && newLength >= 0) {`

Executes the `if` operation defined in `IterationHolder`.



#### `while (count != 0) {`

Executes the `while` operation defined in `IterationHolder`.



#### `if (item.isEmpty) {`

Executes the `if` operation defined in `IterationHolder`.



#### `if (remove != 0) {`

Executes the `if` operation defined in `IterationHolder`.



#### `while (remove != 0) {`

Executes the `while` operation defined in `IterationHolder`.



#### `override
  void sourceLengthBeenModified(int amount) {`

Executes the `sourceLengthBeenModified` operation defined in `IterationHolder`.



#### `override
  E sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `IterationHolder`.



#### `for (var item in items) {`

Executes the `for` operation defined in `IterationHolder`.



#### `if (actualIndex >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `IterationHolder`.



#### `if (value is E) {`

Executes the `if` operation defined in `IterationHolder`.



#### `for (var lis in items) {`

Executes the `for` operation defined in `IterationHolder`.



#### `if (lis.remove(value)) {`

Executes the `if` operation defined in `IterationHolder`.



#### `if (start != null || end != null || replacements != null) {`

Executes the `if` operation defined in `IterationHolder`.



#### `skip it
        if (actualStart >= itemLen || item.isEmpty) {`

Executes the `if` operation defined in `IterationHolder`.



#### `if (repPos == null) {`

Executes the `if` operation defined in `IterationHolder`.



#### `If the removal range extends beyond this sublist
        if (actualEnd >= itemLen) {`

Executes the `if` operation defined in `IterationHolder`.



#### `Partial removal from actualStart to end of sublist
          if (removeRangeStart == null) {`

Executes the `if` operation defined in `IterationHolder`.



#### `if (actualEnd != 0) {`

Executes the `if` operation defined in `IterationHolder`.



#### `if (replacements != null && internalReplace) {`

Executes the `if` operation defined in `IterationHolder`.



#### `Remove any sublists fully covered by the range
      if (removeRangeStart != null) {`

Executes the `if` operation defined in `IterationHolder`.



#### `Apply replacements if provided
      if (replacements != null) {`

Executes the `if` operation defined in `IterationHolder`.



#### `if (!internalReplace) {`

Executes the `if` operation defined in `IterationHolder`.



#### `if (removeAll != null) {`

Executes the `if` operation defined in `IterationHolder`.



#### `for (var item in items) {`

Executes the `for` operation defined in `IterationHolder`.



#### `if (removeAll[i] >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `IterationHolder`.



#### `if (item.remove(removeAll[i])) {`

Executes the `if` operation defined in `IterationHolder`.



#### `override
  void sourceInsertAll(int index, Iterable<E> iterable) {`

Executes the `sourceInsertAll` operation defined in `IterationHolder`.



#### `for (var item in items) {`

Executes the `for` operation defined in `IterationHolder`.



#### `if (actualIndex >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `IterationHolder`.



#### `override
  void set(int index, E element) {`

Executes the `set` operation defined in `IterationHolder`.



#### `for (var item in items) {`

Executes the `for` operation defined in `IterationHolder`.



#### `if (actualIndex >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `IterationHolder`.



#### `override
  void forEach(void Function(K key, V value) action) {`

Executes the `forEach` operation defined in `IterationHolder`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationHolder`.



#### `MapEntry<K, V> getEntry(int index) {`

Executes the `getEntry` operation defined in `IterationHolder`.



#### `override
  V sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `IterationHolder`.



#### `K getKey(int index) {`

Executes the `getKey` operation defined in `IterationHolder`.



#### `int indexOfKey(K key, [int start=0]) {`

Executes the `indexOfKey` operation defined in `IterationHolder`.



#### `override
  bool containsKey(Object? key) {`

Executes the `containsKey` operation defined in `IterationHolder`.



#### `override
  bool containsValue(Object? value) {`

Executes the `containsValue` operation defined in `IterationHolder`.



#### `void set(K key, V value) {`

Executes the `set` operation defined in `IterationHolder`.



#### `if (index != -1) {`

Executes the `if` operation defined in `IterationHolder`.



#### `void insertAll(int index, Iterable<MapEntry<K, V>> iterable) {`

Executes the `insertAll` operation defined in `IterationHolder`.



#### `if (index < 0 || index > length) {`

Executes the `if` operation defined in `IterationHolder`.



#### `override
  void addAll(Map<K, V> other) {`

Executes the `addAll` operation defined in `IterationHolder`.



#### `override
  void addEntries(Iterable<MapEntry<K, V>> newEntries) {`

Executes the `addEntries` operation defined in `IterationHolder`.



#### `for (var entry in newEntries) {`

Executes the `for` operation defined in `IterationHolder`.



#### `override
  V putIfAbsent(K key, V Function() ifAbsent) {`

Executes the `putIfAbsent` operation defined in `IterationHolder`.



#### `if (!containsKey(key)) {`

Executes the `if` operation defined in `IterationHolder`.



#### `if (containsKey(key)) {`

Executes the `if` operation defined in `IterationHolder`.



#### `override
  void updateAll(V Function(K key, V value) update) {`

Executes the `updateAll` operation defined in `IterationHolder`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationHolder`.



#### `remove(Object? key) {`

Executes the `remove` operation defined in `IterationHolder`.



#### `if (containsKey(key)) {`

Executes the `if` operation defined in `IterationHolder`.



#### `removeValue(Object? value) {`

Executes the `removeValue` operation defined in `IterationHolder`.



#### `if (containsValue(value)) {`

Executes the `if` operation defined in `IterationHolder`.



#### `MapEntry<K, V> removeAt(int index) {`

Executes the `removeAt` operation defined in `IterationHolder`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `IterationHolder`.



#### `MapEntry<K, V> removeLast() {`

Executes the `removeLast` operation defined in `IterationHolder`.



#### `An empty range (with `end == start`) is valid.
  void removeRange(int start, int end) {`

Executes the `range` operation defined in `IterationHolder`.



#### `override
  void removeWhere(bool Function(K key, V value) test) {`

Executes the `removeWhere` operation defined in `IterationHolder`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationHolder`.



#### `if (test(entry.key, entry.value)) {`

Executes the `if` operation defined in `IterationHolder`.



#### `An empty range (with `end == start`) is valid.
  void replaceRange(int start, int end, Iterable<MapEntry<K, V>> replacements) {`

Executes the `range` operation defined in `IterationHolder`.



#### `void retainWhere(bool Function(K key, V value) test) {`

Executes the `retainWhere` operation defined in `IterationHolder`.



#### `override
  void clear() {`

Executes the `clear` operation defined in `IterationHolder`.



#### `MapEntry<K2, V2> Function(K key, V value) convert) {`

Executes the `Function` operation defined in `IterationHolder`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationHolder`.



#### `override
  IterationMap<K, V> getRange(int start, int end) {`

Executes the `getRange` operation defined in `IterationHolder`.



#### `override
  IterationMap<K, V> sublist(int start, [int? end]) {`

Executes the `sublist` operation defined in `IterationHolder`.



#### `override
  IterationMap<K, V> skip(int count) {`

Executes the `skip` operation defined in `IterationHolder`.



#### `override
  IterationMap<K, V> take(int count) {`

Executes the `take` operation defined in `IterationHolder`.



#### `override
  void set(K key, V value) {`

Executes the `set` operation defined in `IterationHolder`.



#### `override
  void insert(int index, K key, V element) {`

Executes the `insert` operation defined in `IterationHolder`.



#### `bool _insertCheck(int index, K key, V element) {`

Executes the `_insertCheck` operation defined in `IterationHolder`.



#### `if (i > -1 && index > i) {`

Executes the `if` operation defined in `IterationHolder`.



#### `if (index == _keys.length) {`

Executes the `if` operation defined in `IterationHolder`.



#### `get(Object? key) {`

Executes the `get` operation defined in `IterationHolder`.



#### `if (start != null || end != null || replacements != null) {`

Executes the `if` operation defined in `IterationHolder`.



#### `if (replacements != null) {`

Executes the `if` operation defined in `IterationHolder`.



#### `for (var replacement in replacements) {`

Executes the `for` operation defined in `IterationHolder`.



#### `if (removeAll != null) {`

Executes the `if` operation defined in `IterationHolder`.



#### `for (var index in removeAll) {`

Executes the `for` operation defined in `IterationHolder`.



#### `if (removeKeys != null) {`

Executes the `if` operation defined in `IterationHolder`.



#### `for (var key in removeKeys) {`

Executes the `for` operation defined in `IterationHolder`.



#### `if (_keys.remove(key)) {`

Executes the `if` operation defined in `IterationHolder`.


