# IterationList

This class `IterationList` is part of the `collections` module of the Dartora library. It defines behavior and data structures as implemented in the source code.

_Defined in: `src/collections/iteration.dart`_

_Import_: `package:dartora/collections/iteration.dart`


---


### Constructors

#### `List.from(iterable)
  ;`

Constructs a new instance of `IterationList`.



#### `_listSource.clear();`

Constructs a new instance of `IterationList`.



#### `return _listSource.elementAt(sourceIndex);`

Constructs a new instance of `IterationList`.



#### `_listSource.shuffle(random);`

Constructs a new instance of `IterationList`.



#### `_listSource.insert(offset(index), iterable.single);`

Constructs a new instance of `IterationList`.



#### `_listSource.insertAll(offset(index), iterable);`

Constructs a new instance of `IterationList`.



#### `offset(length);`

Constructs a new instance of `IterationList`.



#### `_listSource.replaceRange(start, end, replacements);`

Constructs a new instance of `IterationList`.



#### `_listSource.removeRange(start, end);`

Constructs a new instance of `IterationList`.



#### `removeAll.sort();`

Constructs a new instance of `IterationList`.



#### `_listSource.removeAt(index-removed);`

Constructs a new instance of `IterationList`.



#### `_listSource.indexOf(element, offset(start));`

Constructs a new instance of `IterationList`.



#### `_listSource.indexWhere(test, offset(start));`

Constructs a new instance of `IterationList`.



#### `_listSource.lastIndexOf(element, offset(start ?? length));`

Constructs a new instance of `IterationList`.



#### `_listSource.lastIndexWhere(test, offset(start ?? length));`

Constructs a new instance of `IterationList`.



#### `return IterationList(
      iterable: _listSource.map(toElement),
      startIndex: startIndex,
      indexTake: indexTake,
    );`

Constructs a new instance of `IterationList`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationList`.



#### `_listSource.getRange(offset(start), offset(end));`

Constructs a new instance of `IterationList`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `IterationList`.



#### `assert(start >= 0 && length >= start && (end == null || (end >= start && length >= end)));`

Constructs a new instance of `IterationList`.



#### `_listSource.sublist(offset(start), offset(end ?? length));`

Constructs a new instance of `IterationList`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `IterationList`.



#### `return IterationList(
      iterable: _listSource,
      startIndex: startIndex+count,
      indexTake: indexTake,
    );`

Constructs a new instance of `IterationList`.



#### `return IterationList(
      iterable: _listSource,
      startIndex: startIndex,
      indexTake: indexTake+count,
    );`

Constructs a new instance of `IterationList`.



#### `return IterationList(
      iterable: _listSource.whereType<T>(),
      startIndex: startIndex,
      indexTake: indexTake,
    );`

Constructs a new instance of `IterationList`.



#### `return IterationList(
      iterable: _listSource.cast<R>(),
      startIndex: startIndex,
      indexTake: indexTake,
    );`

Constructs a new instance of `IterationList`.



#### `items.fold(0, (i, item) => i + item.length);`

Constructs a new instance of `IterationList`.



#### `HolderIterator(holder: items);`

Constructs a new instance of `IterationList`.



#### `items.clear();`

Constructs a new instance of `IterationList`.



#### `items.add(IterationList(iterable: List.filled(newLength-_sourceLength, null as E)));`

Constructs a new instance of `IterationList`.



#### `throw StateError("Cannot have a sourceLength bigger than current when E isn't nullable.");`

Constructs a new instance of `IterationList`.



#### `item.removeLast();`

Constructs a new instance of `IterationList`.



#### `items.removeLast();`

Constructs a new instance of `IterationList`.



#### `items.fold(0, (i, item) => i + item.length);`

Constructs a new instance of `IterationList`.



#### `return item.elementAt(actualIndex);`

Constructs a new instance of `IterationList`.



#### `throw IndexError.withLength(sourceIndex, length);`

Constructs a new instance of `IterationList`.



#### `offset(length);`

Constructs a new instance of `IterationList`.



#### `item.removeRange(actualStart, itemLen);`

Constructs a new instance of `IterationList`.



#### `item.replaceRange(actualStart, actualEnd, replacements);`

Constructs a new instance of `IterationList`.



#### `item.removeRange(actualStart, actualEnd);`

Constructs a new instance of `IterationList`.



#### `items.removeRange(removeRangeStart, removeRangeEnd);`

Constructs a new instance of `IterationList`.



#### `if (repPos == null) throw StateError('Cannot replace items in bad range.');`

Constructs a new instance of `IterationList`.



#### `Replacements inserted as independent list
          items.insert(repPos, IterationList(
            iterable: replacements
          ));`

Constructs a new instance of `IterationList`.



#### `removeAll.removeWhere((index) => index <=-1);`

Constructs a new instance of `IterationList`.



#### `item.insertAll(actualIndex, iterable);`

Constructs a new instance of `IterationList`.



#### `item.set(actualIndex, element);`

Constructs a new instance of `IterationList`.



#### `action(entry.key, entry.value);`

Constructs a new instance of `IterationList`.



#### `IterationItem(
    source: sourceEntries,
    startIndex: startIndex,
    indexTake: indexTake,
  );`

Constructs a new instance of `IterationList`.



#### `entries.map((entry) => entry.key);`

Constructs a new instance of `IterationList`.



#### `entries.map((entry) => entry.value);`

Constructs a new instance of `IterationList`.



#### `return get(key);`

Constructs a new instance of `IterationList`.



#### `get(Object? key);`

Constructs a new instance of `IterationList`.



#### `IndexError.check(index, length);`

Constructs a new instance of `IterationList`.



#### `return sourceEntries.elementAt(offset(index));`

Constructs a new instance of `IterationList`.



#### `return keys.contains(key);`

Constructs a new instance of `IterationList`.



#### `return values.contains(value);`

Constructs a new instance of `IterationList`.



#### `set(key, value);`

Constructs a new instance of `IterationList`.



#### `indexOfKey(key);`

Constructs a new instance of `IterationList`.



#### `insert(index, key, value);`

Constructs a new instance of `IterationList`.



#### `insert(length, key, value);`

Constructs a new instance of `IterationList`.



#### `void insert(int index, K key, V element);`

Constructs a new instance of `IterationList`.



#### `throw IndexError.withLength(index, length);`

Constructs a new instance of `IterationList`.



#### `iterable.elementAt(i);`

Constructs a new instance of `IterationList`.



#### `insert(index+i, entry.key, entry.value);`

Constructs a new instance of `IterationList`.



#### `other.forEach(set);`

Constructs a new instance of `IterationList`.



#### `set(entry.key, entry.value);`

Constructs a new instance of `IterationList`.



#### `set(key, ifAbsent());`

Constructs a new instance of `IterationList`.



#### `set(key, update(get(key) as V));`

Constructs a new instance of `IterationList`.



#### `assert(ifAbsent != null);`

Constructs a new instance of `IterationList`.



#### `set(key, ifAbsent!());`

Constructs a new instance of `IterationList`.



#### `set(entry.key, update(entry.key, entry.value));`

Constructs a new instance of `IterationList`.



#### `get(key as K);`

Constructs a new instance of `IterationList`.



#### `removeAction(removeKeys: [key]);`

Constructs a new instance of `IterationList`.



#### `getKey(indexOf(value as V));`

Constructs a new instance of `IterationList`.



#### `removeAction(removeKeys: [remd as K]);`

Constructs a new instance of `IterationList`.



#### `IndexError.check(index, length);`

Constructs a new instance of `IterationList`.



#### `getEntry(index);`

Constructs a new instance of `IterationList`.



#### `removeAction(removeAll: [index]);`

Constructs a new instance of `IterationList`.



#### `throw StateError('No element at index $index was removed.');`

Constructs a new instance of `IterationList`.



#### `return removeAt(length-1);`

Constructs a new instance of `IterationList`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationList`.



#### `removeAction(start: offset(start), end: offset(end));`

Constructs a new instance of `IterationList`.



#### `keys.add(entry.key);`

Constructs a new instance of `IterationList`.



#### `removeAction(removeKeys: keys);`

Constructs a new instance of `IterationList`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationList`.



#### `removeAction(start: offset(start), end: offset(end), replacements: replacements);`

Constructs a new instance of `IterationList`.



#### `removeWhere((key, value) => !test(key, value));`

Constructs a new instance of `IterationList`.



#### `removeAction(start: startIndex, end: offset(length));`

Constructs a new instance of `IterationList`.



#### `mapList.add(convert(entry.key, entry.value));`

Constructs a new instance of `IterationList`.



#### `return Map.fromEntries(mapList);`

Constructs a new instance of `IterationList`.



#### `return IterationItemMap(
      map: this,
      startIndex: start,
      indexTake: length - end,
    );`

Constructs a new instance of `IterationList`.



#### `LinkedHashMap();`

Constructs a new instance of `IterationList`.



#### `getEntry(i);`

Constructs a new instance of `IterationList`.



#### `return IterationItemMap(
      map: newMap,
      startIndex: 0,
      indexTake: 0,
    );`

Constructs a new instance of `IterationList`.



#### `IterationItemMap(
    map: LinkedHashMap.fromEntries((entries as Iteration<MapEntry<K, V>>).reversed)
  );`

Constructs a new instance of `IterationList`.



#### `return IterationItemMap(
      map: this,
      startIndex: count,
      indexTake: 0,
    );`

Constructs a new instance of `IterationList`.



#### `return IterationItemMap(
      map: this,
      startIndex: 0,
      indexTake: count,
    );`

Constructs a new instance of `IterationList`.



#### `keys.toList()
  ;`

Constructs a new instance of `IterationList`.



#### `_keys.map((key) => MapEntry(key, _map[key] as V));`

Constructs a new instance of `IterationList`.



#### `if (!_keys.contains(key)) _keys.add(key);`

Constructs a new instance of `IterationList`.



#### `_insertCheck(index, key, element);`

Constructs a new instance of `IterationList`.



#### `_keys.indexOf(key);`

Constructs a new instance of `IterationList`.



#### `_keys.removeAt(i);`

Constructs a new instance of `IterationList`.



#### `_keys.add(key);`

Constructs a new instance of `IterationList`.



#### `_keys.insert(index, key);`

Constructs a new instance of `IterationList`.



#### `offset(length);`

Constructs a new instance of `IterationList`.



#### `_keys.getRange(start, end);`

Constructs a new instance of `IterationList`.



#### `_keys.removeRange(start, end);`

Constructs a new instance of `IterationList`.



#### `_map.removeWhere((key, val) => keys.contains(key));`

Constructs a new instance of `IterationList`.



#### `removeAll.sort();`

Constructs a new instance of `IterationList`.



#### `_map.remove(_keys.removeAt(index-removed));`

Constructs a new instance of `IterationList`.



#### `_map.remove(key);`

Constructs a new instance of `IterationList`.



### Fields

#### `final List<E> _listSource;`

Stores the value of `_listSource` for this instance of `IterationList`.



#### `final Iterable<E> source;`

Stores the value of `source` for this instance of `IterationList`.



#### `iterator;`

Stores the value of `iterator` for this instance of `IterationList`.



#### `length;`

Stores the value of `length` for this instance of `IterationList`.



#### `newLength;`

Stores the value of `newLength` for this instance of `IterationList`.



#### `element;`

Stores the value of `element` for this instance of `IterationList`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationList`.



#### `length;`

Stores the value of `length` for this instance of `IterationList`.



#### `start;`

Stores the value of `start` for this instance of `IterationList`.



#### `removed;`

Stores the value of `removed` for this instance of `IterationList`.



#### `return count;`

Stores the value of `count` for this instance of `IterationList`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationList`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationList`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationList`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationList`.



#### `items;`

Stores the value of `items` for this instance of `IterationList`.



#### `_sourceLength;`

Stores the value of `_sourceLength` for this instance of `IterationList`.



#### `newLength;`

Stores the value of `newLength` for this instance of `IterationList`.



#### `break;`

Stores the value of `break` for this instance of `IterationList`.



#### `break;`

Stores the value of `break` for this instance of `IterationList`.



#### `amount;`

Stores the value of `amount` for this instance of `IterationList`.



#### `sourceIndex;`

Stores the value of `sourceIndex` for this instance of `IterationList`.



#### `length;`

Stores the value of `length` for this instance of `IterationList`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationList`.



#### `break;`

Stores the value of `break` for this instance of `IterationList`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationList`.



#### `start;`

Stores the value of `start` for this instance of `IterationList`.



#### `end;`

Stores the value of `end` for this instance of `IterationList`.



#### `repPos;`

Stores the value of `repPos` for this instance of `IterationList`.



#### `false;`

Stores the value of `false` for this instance of `IterationList`.



#### `removeRangeStart;`

Stores the value of `removeRangeStart` for this instance of `IterationList`.



#### `removeRangeEnd;`

Stores the value of `removeRangeEnd` for this instance of `IterationList`.



#### `length;`

Stores the value of `length` for this instance of `IterationList`.



#### `length;`

Stores the value of `length` for this instance of `IterationList`.



#### `itemLen;`

Stores the value of `itemLen` for this instance of `IterationList`.



#### `itemLen;`

Stores the value of `itemLen` for this instance of `IterationList`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationList`.



#### `i;`

Stores the value of `i` for this instance of `IterationList`.



#### `i;`

Stores the value of `i` for this instance of `IterationList`.



#### `itemLen;`

Stores the value of `itemLen` for this instance of `IterationList`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationList`.



#### `true;`

Stores the value of `true` for this instance of `IterationList`.



#### `break;`

Stores the value of `break` for this instance of `IterationList`.



#### `length;`

Stores the value of `length` for this instance of `IterationList`.



#### `length;`

Stores the value of `length` for this instance of `IterationList`.



#### `start;`

Stores the value of `start` for this instance of `IterationList`.



#### `length;`

Stores the value of `length` for this instance of `IterationList`.



#### `length;`

Stores the value of `length` for this instance of `IterationList`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationList`.



#### `removed;`

Stores the value of `removed` for this instance of `IterationList`.



#### `return count;`

Stores the value of `count` for this instance of `IterationList`.



#### `index;`

Stores the value of `index` for this instance of `IterationList`.



#### `length;`

Stores the value of `length` for this instance of `IterationList`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationList`.



#### `break;`

Stores the value of `break` for this instance of `IterationList`.



#### `index;`

Stores the value of `index` for this instance of `IterationList`.



#### `length;`

Stores the value of `length` for this instance of `IterationList`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationList`.



#### `break;`

Stores the value of `break` for this instance of `IterationList`.



#### `indexTake
  ;`

Stores the value of `indexTake` for this instance of `IterationList`.



#### `int _startIndex;`

Stores the value of `_startIndex` for this instance of `IterationList`.



#### `_startIndex;`

Stores the value of `_startIndex` for this instance of `IterationList`.



#### `int _indexTake;`

Stores the value of `_indexTake` for this instance of `IterationList`.



#### `_indexTake;`

Stores the value of `_indexTake` for this instance of `IterationList`.



#### `get sourceEntries;`

Stores the value of `sourceEntries` for this instance of `IterationList`.



#### `length;`

Stores the value of `length` for this instance of `IterationList`.



#### `length;`

Stores the value of `length` for this instance of `IterationList`.



#### `value;`

Stores the value of `value` for this instance of `IterationList`.



#### `key;`

Stores the value of `key` for this instance of `IterationList`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationList`.



#### `indexTake;`

Stores the value of `indexTake` for this instance of `IterationList`.



#### `return i;`

Stores the value of `i` for this instance of `IterationList`.



#### `length;`

Stores the value of `length` for this instance of `IterationList`.



#### `old;`

Stores the value of `old` for this instance of `IterationList`.



#### `return old;`

Stores the value of `old` for this instance of `IterationList`.



#### `remd;`

Stores the value of `remd` for this instance of `IterationList`.



#### `return remd;`

Stores the value of `remd` for this instance of `IterationList`.



#### `return removed;`

Stores the value of `removed` for this instance of `IterationList`.



#### `start;`

Stores the value of `start` for this instance of `IterationList`.



#### `itake;`

Stores the value of `itake` for this instance of `IterationList`.



#### `value;`

Stores the value of `value` for this instance of `IterationList`.



#### `final Map<K, V> _map;`

Stores the value of `_map` for this instance of `IterationList`.



#### `final List<K> _keys;`

Stores the value of `_keys` for this instance of `IterationList`.



#### `value;`

Stores the value of `value` for this instance of `IterationList`.



#### `element;`

Stores the value of `element` for this instance of `IterationList`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationList`.



#### `start;`

Stores the value of `start` for this instance of `IterationList`.



#### `start;`

Stores the value of `start` for this instance of `IterationList`.



#### `removed;`

Stores the value of `removed` for this instance of `IterationList`.



#### `return count;`

Stores the value of `count` for this instance of `IterationList`.





### Methods

#### `override
  set sourceLength(int newLength) {`

Executes the `sourceLength` operation defined in `IterationList`.



#### `if (newLength == 0) {`

Executes the `if` operation defined in `IterationList`.



#### `override
  void sourceLengthBeenModified(int amount) {`

Executes the `sourceLengthBeenModified` operation defined in `IterationList`.



#### `override
  E sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `IterationList`.



#### `override
  void shuffle([Random? random]) {`

Executes the `shuffle` operation defined in `IterationList`.



#### `override
  void set(int index, E element) {`

Executes the `set` operation defined in `IterationList`.



#### `override
  void sourceInsertAll(int index, Iterable<E> iterable) {`

Executes the `sourceInsertAll` operation defined in `IterationList`.



#### `if (iterable.length == 1) {`

Executes the `if` operation defined in `IterationList`.



#### `if (_listSource.remove(value)) {`

Executes the `if` operation defined in `IterationList`.



#### `if (start != null || end != null || replacements != null) {`

Executes the `if` operation defined in `IterationList`.



#### `if (replacements != null) {`

Executes the `if` operation defined in `IterationList`.



#### `if (removeAll != null) {`

Executes the `if` operation defined in `IterationList`.



#### `for (var index in removeAll) {`

Executes the `for` operation defined in `IterationList`.



#### `override
  int indexOf(E element, [int start = 0]) {`

Executes the `indexOf` operation defined in `IterationList`.



#### `override
  int indexWhere(bool Function(E element) test, [int start = 0]) {`

Executes the `indexWhere` operation defined in `IterationList`.



#### `override
  int lastIndexOf(E element, [int? start]) {`

Executes the `lastIndexOf` operation defined in `IterationList`.



#### `override
  int lastIndexWhere(bool Function(E element) test, [int? start]) {`

Executes the `lastIndexWhere` operation defined in `IterationList`.



#### `T Function(E e) toElement) {`

Executes the `Function` operation defined in `IterationList`.



#### `override
  IterationBase<E> getRange(int start, int end) {`

Executes the `getRange` operation defined in `IterationList`.



#### `override
  IterationBase<E> sublist(int start, [int? end]) {`

Executes the `sublist` operation defined in `IterationList`.



#### `override
  Iteration<E> skip(int count) {`

Executes the `skip` operation defined in `IterationList`.



#### `override
  Iteration<E> take(int count) {`

Executes the `take` operation defined in `IterationList`.



#### `override
  set sourceLength(int newLength) {`

Executes the `sourceLength` operation defined in `IterationList`.



#### `if (newLength == 0) {`

Executes the `if` operation defined in `IterationList`.



#### `else if (newLength > _sourceLength) {`

Executes the `if` operation defined in `IterationList`.



#### `if (null is E) {`

Executes the `if` operation defined in `IterationList`.



#### `else if (newLength < _sourceLength && newLength >= 0) {`

Executes the `if` operation defined in `IterationList`.



#### `while (count != 0) {`

Executes the `while` operation defined in `IterationList`.



#### `if (item.isEmpty) {`

Executes the `if` operation defined in `IterationList`.



#### `if (remove != 0) {`

Executes the `if` operation defined in `IterationList`.



#### `while (remove != 0) {`

Executes the `while` operation defined in `IterationList`.



#### `override
  void sourceLengthBeenModified(int amount) {`

Executes the `sourceLengthBeenModified` operation defined in `IterationList`.



#### `override
  E sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `IterationList`.



#### `for (var item in items) {`

Executes the `for` operation defined in `IterationList`.



#### `if (actualIndex >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `IterationList`.



#### `if (value is E) {`

Executes the `if` operation defined in `IterationList`.



#### `for (var lis in items) {`

Executes the `for` operation defined in `IterationList`.



#### `if (lis.remove(value)) {`

Executes the `if` operation defined in `IterationList`.



#### `if (start != null || end != null || replacements != null) {`

Executes the `if` operation defined in `IterationList`.



#### `skip it
        if (actualStart >= itemLen || item.isEmpty) {`

Executes the `if` operation defined in `IterationList`.



#### `if (repPos == null) {`

Executes the `if` operation defined in `IterationList`.



#### `If the removal range extends beyond this sublist
        if (actualEnd >= itemLen) {`

Executes the `if` operation defined in `IterationList`.



#### `Partial removal from actualStart to end of sublist
          if (removeRangeStart == null) {`

Executes the `if` operation defined in `IterationList`.



#### `if (actualEnd != 0) {`

Executes the `if` operation defined in `IterationList`.



#### `if (replacements != null && internalReplace) {`

Executes the `if` operation defined in `IterationList`.



#### `Remove any sublists fully covered by the range
      if (removeRangeStart != null) {`

Executes the `if` operation defined in `IterationList`.



#### `Apply replacements if provided
      if (replacements != null) {`

Executes the `if` operation defined in `IterationList`.



#### `if (!internalReplace) {`

Executes the `if` operation defined in `IterationList`.



#### `if (removeAll != null) {`

Executes the `if` operation defined in `IterationList`.



#### `for (var item in items) {`

Executes the `for` operation defined in `IterationList`.



#### `if (removeAll[i] >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `IterationList`.



#### `if (item.remove(removeAll[i])) {`

Executes the `if` operation defined in `IterationList`.



#### `override
  void sourceInsertAll(int index, Iterable<E> iterable) {`

Executes the `sourceInsertAll` operation defined in `IterationList`.



#### `for (var item in items) {`

Executes the `for` operation defined in `IterationList`.



#### `if (actualIndex >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `IterationList`.



#### `override
  void set(int index, E element) {`

Executes the `set` operation defined in `IterationList`.



#### `for (var item in items) {`

Executes the `for` operation defined in `IterationList`.



#### `if (actualIndex >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `IterationList`.



#### `override
  void forEach(void Function(K key, V value) action) {`

Executes the `forEach` operation defined in `IterationList`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationList`.



#### `MapEntry<K, V> getEntry(int index) {`

Executes the `getEntry` operation defined in `IterationList`.



#### `override
  V sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `IterationList`.



#### `K getKey(int index) {`

Executes the `getKey` operation defined in `IterationList`.



#### `int indexOfKey(K key, [int start=0]) {`

Executes the `indexOfKey` operation defined in `IterationList`.



#### `override
  bool containsKey(Object? key) {`

Executes the `containsKey` operation defined in `IterationList`.



#### `override
  bool containsValue(Object? value) {`

Executes the `containsValue` operation defined in `IterationList`.



#### `void set(K key, V value) {`

Executes the `set` operation defined in `IterationList`.



#### `if (index != -1) {`

Executes the `if` operation defined in `IterationList`.



#### `void insertAll(int index, Iterable<MapEntry<K, V>> iterable) {`

Executes the `insertAll` operation defined in `IterationList`.



#### `if (index < 0 || index > length) {`

Executes the `if` operation defined in `IterationList`.



#### `override
  void addAll(Map<K, V> other) {`

Executes the `addAll` operation defined in `IterationList`.



#### `override
  void addEntries(Iterable<MapEntry<K, V>> newEntries) {`

Executes the `addEntries` operation defined in `IterationList`.



#### `for (var entry in newEntries) {`

Executes the `for` operation defined in `IterationList`.



#### `override
  V putIfAbsent(K key, V Function() ifAbsent) {`

Executes the `putIfAbsent` operation defined in `IterationList`.



#### `if (!containsKey(key)) {`

Executes the `if` operation defined in `IterationList`.



#### `if (containsKey(key)) {`

Executes the `if` operation defined in `IterationList`.



#### `override
  void updateAll(V Function(K key, V value) update) {`

Executes the `updateAll` operation defined in `IterationList`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationList`.



#### `remove(Object? key) {`

Executes the `remove` operation defined in `IterationList`.



#### `if (containsKey(key)) {`

Executes the `if` operation defined in `IterationList`.



#### `removeValue(Object? value) {`

Executes the `removeValue` operation defined in `IterationList`.



#### `if (containsValue(value)) {`

Executes the `if` operation defined in `IterationList`.



#### `MapEntry<K, V> removeAt(int index) {`

Executes the `removeAt` operation defined in `IterationList`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `IterationList`.



#### `MapEntry<K, V> removeLast() {`

Executes the `removeLast` operation defined in `IterationList`.



#### `An empty range (with `end == start`) is valid.
  void removeRange(int start, int end) {`

Executes the `range` operation defined in `IterationList`.



#### `override
  void removeWhere(bool Function(K key, V value) test) {`

Executes the `removeWhere` operation defined in `IterationList`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationList`.



#### `if (test(entry.key, entry.value)) {`

Executes the `if` operation defined in `IterationList`.



#### `An empty range (with `end == start`) is valid.
  void replaceRange(int start, int end, Iterable<MapEntry<K, V>> replacements) {`

Executes the `range` operation defined in `IterationList`.



#### `void retainWhere(bool Function(K key, V value) test) {`

Executes the `retainWhere` operation defined in `IterationList`.



#### `override
  void clear() {`

Executes the `clear` operation defined in `IterationList`.



#### `MapEntry<K2, V2> Function(K key, V value) convert) {`

Executes the `Function` operation defined in `IterationList`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationList`.



#### `override
  IterationMap<K, V> getRange(int start, int end) {`

Executes the `getRange` operation defined in `IterationList`.



#### `override
  IterationMap<K, V> sublist(int start, [int? end]) {`

Executes the `sublist` operation defined in `IterationList`.



#### `override
  IterationMap<K, V> skip(int count) {`

Executes the `skip` operation defined in `IterationList`.



#### `override
  IterationMap<K, V> take(int count) {`

Executes the `take` operation defined in `IterationList`.



#### `override
  void set(K key, V value) {`

Executes the `set` operation defined in `IterationList`.



#### `override
  void insert(int index, K key, V element) {`

Executes the `insert` operation defined in `IterationList`.



#### `bool _insertCheck(int index, K key, V element) {`

Executes the `_insertCheck` operation defined in `IterationList`.



#### `if (i > -1 && index > i) {`

Executes the `if` operation defined in `IterationList`.



#### `if (index == _keys.length) {`

Executes the `if` operation defined in `IterationList`.



#### `get(Object? key) {`

Executes the `get` operation defined in `IterationList`.



#### `if (start != null || end != null || replacements != null) {`

Executes the `if` operation defined in `IterationList`.



#### `if (replacements != null) {`

Executes the `if` operation defined in `IterationList`.



#### `for (var replacement in replacements) {`

Executes the `for` operation defined in `IterationList`.



#### `if (removeAll != null) {`

Executes the `if` operation defined in `IterationList`.



#### `for (var index in removeAll) {`

Executes the `for` operation defined in `IterationList`.



#### `if (removeKeys != null) {`

Executes the `if` operation defined in `IterationList`.



#### `for (var key in removeKeys) {`

Executes the `for` operation defined in `IterationList`.



#### `if (_keys.remove(key)) {`

Executes the `if` operation defined in `IterationList`.


