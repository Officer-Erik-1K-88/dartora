# IterationList

_No summary provided in source._

_Defined in: `src/collections/iteration.dart`_

_Import_: `package:dartora/collections/iteration.dart`


---


### Constructors

#### `List.from(iterable)
  ;`



#### `_listSource.clear();`



#### `return _listSource.elementAt(sourceIndex);`



#### `_listSource.shuffle(random);`



#### `_listSource.insert(offset(index), iterable.single);`



#### `_listSource.insertAll(offset(index), iterable);`



#### `offset(length);`



#### `_listSource.replaceRange(start, end, replacements);`



#### `_listSource.removeRange(start, end);`



#### `removeAll.sort();`



#### `_listSource.removeAt(index-removed);`



#### `_listSource.indexOf(element, offset(start));`



#### `_listSource.indexWhere(test, offset(start));`



#### `_listSource.lastIndexOf(element, offset(start ?? length));`



#### `_listSource.lastIndexWhere(test, offset(start ?? length));`



#### `return IterationList(
      iterable: _listSource.map(toElement),
      startIndex: startIndex,
      indexTake: indexTake,
    );`



#### `assert(start >= 0 && end >= start && length >= end);`



#### `_listSource.getRange(offset(start), offset(end));`



#### `return IterationList(
      iterable: newI,
    );`



#### `assert(start >= 0 && length >= start && (end == null || (end >= start && length >= end)));`



#### `_listSource.sublist(offset(start), offset(end ?? length));`



#### `return IterationList(
      iterable: newI,
    );`



#### `return IterationList(
      iterable: _listSource,
      startIndex: startIndex+count,
      indexTake: indexTake,
    );`



#### `return IterationList(
      iterable: _listSource,
      startIndex: startIndex,
      indexTake: indexTake+count,
    );`



#### `return IterationList(
      iterable: _listSource.whereType<T>(),
      startIndex: startIndex,
      indexTake: indexTake,
    );`



#### `return IterationList(
      iterable: _listSource.cast<R>(),
      startIndex: startIndex,
      indexTake: indexTake,
    );`



#### `items.fold(0, (i, item) => i + item.length);`



#### `HolderIterator(holder: items);`



#### `items.clear();`



#### `items.add(IterationList(iterable: List.filled(newLength-_sourceLength, null as E)));`



#### `throw StateError("Cannot have a sourceLength bigger than current when E isn't nullable.");`



#### `item.removeLast();`



#### `items.removeLast();`



#### `items.fold(0, (i, item) => i + item.length);`



#### `return item.elementAt(actualIndex);`



#### `throw IndexError.withLength(sourceIndex, length);`



#### `offset(length);`



#### `item.removeRange(actualStart, itemLen);`



#### `item.replaceRange(actualStart, actualEnd, replacements);`



#### `item.removeRange(actualStart, actualEnd);`



#### `items.removeRange(removeRangeStart, removeRangeEnd);`



#### `if (repPos == null) throw StateError('Cannot replace items in bad range.');`



#### `Replacements inserted as independent list
          items.insert(repPos, IterationList(
            iterable: replacements
          ));`



#### `removeAll.removeWhere((index) => index <=-1);`



#### `item.insertAll(actualIndex, iterable);`



#### `item.set(actualIndex, element);`



#### `action(entry.key, entry.value);`



#### `IterationItem(
    source: sourceEntries,
    startIndex: startIndex,
    indexTake: indexTake,
  );`



#### `entries.map((entry) => entry.key);`



#### `entries.map((entry) => entry.value);`



#### `return get(key);`



#### `get(Object? key);`



#### `IndexError.check(index, length);`



#### `return sourceEntries.elementAt(offset(index));`



#### `return keys.contains(key);`



#### `return values.contains(value);`



#### `set(key, value);`



#### `indexOfKey(key);`



#### `insert(index, key, value);`



#### `insert(length, key, value);`



#### `void insert(int index, K key, V element);`



#### `throw IndexError.withLength(index, length);`



#### `iterable.elementAt(i);`



#### `insert(index+i, entry.key, entry.value);`



#### `other.forEach(set);`



#### `set(entry.key, entry.value);`



#### `set(key, ifAbsent());`



#### `set(key, update(get(key) as V));`



#### `assert(ifAbsent != null);`



#### `set(key, ifAbsent!());`



#### `set(entry.key, update(entry.key, entry.value));`



#### `get(key as K);`



#### `removeAction(removeKeys: [key]);`



#### `getKey(indexOf(value as V));`



#### `removeAction(removeKeys: [remd as K]);`



#### `IndexError.check(index, length);`



#### `getEntry(index);`



#### `removeAction(removeAll: [index]);`



#### `throw StateError('No element at index $index was removed.');`



#### `return removeAt(length-1);`



#### `assert(start >= 0 && end >= start && length >= end);`



#### `removeAction(start: offset(start), end: offset(end));`



#### `keys.add(entry.key);`



#### `removeAction(removeKeys: keys);`



#### `assert(start >= 0 && end >= start && length >= end);`



#### `removeAction(start: offset(start), end: offset(end), replacements: replacements);`



#### `removeWhere((key, value) => !test(key, value));`



#### `removeAction(start: startIndex, end: offset(length));`



#### `mapList.add(convert(entry.key, entry.value));`



#### `return Map.fromEntries(mapList);`



#### `return IterationItemMap(
      map: this,
      startIndex: start,
      indexTake: length - end,
    );`



#### `LinkedHashMap();`



#### `getEntry(i);`



#### `return IterationItemMap(
      map: newMap,
      startIndex: 0,
      indexTake: 0,
    );`



#### `IterationItemMap(
    map: LinkedHashMap.fromEntries((entries as Iteration<MapEntry<K, V>>).reversed)
  );`



#### `return IterationItemMap(
      map: this,
      startIndex: count,
      indexTake: 0,
    );`



#### `return IterationItemMap(
      map: this,
      startIndex: 0,
      indexTake: count,
    );`



#### `keys.toList()
  ;`



#### `_keys.map((key) => MapEntry(key, _map[key] as V));`



#### `if (!_keys.contains(key)) _keys.add(key);`



#### `_insertCheck(index, key, element);`



#### `_keys.indexOf(key);`



#### `_keys.removeAt(i);`



#### `_keys.add(key);`



#### `_keys.insert(index, key);`



#### `offset(length);`



#### `_keys.getRange(start, end);`



#### `_keys.removeRange(start, end);`



#### `_map.removeWhere((key, val) => keys.contains(key));`



#### `removeAll.sort();`



#### `_map.remove(_keys.removeAt(index-removed));`



#### `_map.remove(key);`



### Fields

#### `final List<E> _listSource;`



#### `final Iterable<E> source;`



#### `iterator;`



#### `length;`



#### `newLength;`



#### `element;`



#### `startIndex;`



#### `length;`



#### `start;`



#### `removed;`



#### `return count;`



#### `startIndex;`



#### `startIndex;`



#### `startIndex;`



#### `startIndex;`



#### `items;`



#### `_sourceLength;`



#### `newLength;`



#### `break;`



#### `break;`



#### `amount;`



#### `sourceIndex;`



#### `length;`



#### `continue;`



#### `break;`



#### `startIndex;`



#### `start;`



#### `end;`



#### `repPos;`



#### `false;`



#### `removeRangeStart;`



#### `removeRangeEnd;`



#### `length;`



#### `length;`



#### `itemLen;`



#### `itemLen;`



#### `continue;`



#### `i;`



#### `i;`



#### `itemLen;`



#### `continue;`



#### `true;`



#### `break;`



#### `length;`



#### `length;`



#### `start;`



#### `length;`



#### `length;`



#### `continue;`



#### `removed;`



#### `return count;`



#### `index;`



#### `length;`



#### `continue;`



#### `break;`



#### `index;`



#### `length;`



#### `continue;`



#### `break;`



#### `indexTake
  ;`



#### `int _startIndex;`



#### `_startIndex;`



#### `int _indexTake;`



#### `_indexTake;`



#### `get sourceEntries;`



#### `length;`



#### `length;`



#### `value;`



#### `key;`



#### `startIndex;`



#### `indexTake;`



#### `return i;`



#### `length;`



#### `old;`



#### `return old;`



#### `remd;`



#### `return remd;`



#### `return removed;`



#### `start;`



#### `itake;`



#### `value;`



#### `final Map<K, V> _map;`



#### `final List<K> _keys;`



#### `value;`



#### `element;`



#### `startIndex;`



#### `start;`



#### `start;`



#### `removed;`



#### `return count;`





### Methods

#### `override
  set sourceLength(int newLength) {`



#### `if (newLength == 0) {`



#### `override
  void sourceLengthBeenModified(int amount) {`



#### `override
  E sourceGet(int sourceIndex) {`



#### `override
  void shuffle([Random? random]) {`



#### `override
  void set(int index, E element) {`



#### `override
  void sourceInsertAll(int index, Iterable<E> iterable) {`



#### `if (iterable.length == 1) {`



#### `if (_listSource.remove(value)) {`



#### `if (start != null || end != null || replacements != null) {`



#### `if (replacements != null) {`



#### `if (removeAll != null) {`



#### `for (var index in removeAll) {`



#### `override
  int indexOf(E element, [int start = 0]) {`



#### `override
  int indexWhere(bool Function(E element) test, [int start = 0]) {`



#### `override
  int lastIndexOf(E element, [int? start]) {`



#### `override
  int lastIndexWhere(bool Function(E element) test, [int? start]) {`



#### `T Function(E e) toElement) {`



#### `override
  IterationBase<E> getRange(int start, int end) {`



#### `override
  IterationBase<E> sublist(int start, [int? end]) {`



#### `override
  Iteration<E> skip(int count) {`



#### `override
  Iteration<E> take(int count) {`



#### `override
  set sourceLength(int newLength) {`



#### `if (newLength == 0) {`



#### `else if (newLength > _sourceLength) {`



#### `if (null is E) {`



#### `else if (newLength < _sourceLength && newLength >= 0) {`



#### `while (count != 0) {`



#### `if (item.isEmpty) {`



#### `if (remove != 0) {`



#### `while (remove != 0) {`



#### `override
  void sourceLengthBeenModified(int amount) {`



#### `override
  E sourceGet(int sourceIndex) {`



#### `for (var item in items) {`



#### `if (actualIndex >= item.length || item.isEmpty) {`



#### `if (value is E) {`



#### `for (var lis in items) {`



#### `if (lis.remove(value)) {`



#### `if (start != null || end != null || replacements != null) {`



#### `skip it
        if (actualStart >= itemLen || item.isEmpty) {`



#### `if (repPos == null) {`



#### `If the removal range extends beyond this sublist
        if (actualEnd >= itemLen) {`



#### `Partial removal from actualStart to end of sublist
          if (removeRangeStart == null) {`



#### `if (actualEnd != 0) {`



#### `if (replacements != null && internalReplace) {`



#### `Remove any sublists fully covered by the range
      if (removeRangeStart != null) {`



#### `Apply replacements if provided
      if (replacements != null) {`



#### `if (!internalReplace) {`



#### `if (removeAll != null) {`



#### `for (var item in items) {`



#### `if (removeAll[i] >= item.length || item.isEmpty) {`



#### `if (item.remove(removeAll[i])) {`



#### `override
  void sourceInsertAll(int index, Iterable<E> iterable) {`



#### `for (var item in items) {`



#### `if (actualIndex >= item.length || item.isEmpty) {`



#### `override
  void set(int index, E element) {`



#### `for (var item in items) {`



#### `if (actualIndex >= item.length || item.isEmpty) {`



#### `override
  void forEach(void Function(K key, V value) action) {`



#### `for (var entry in entries) {`



#### `MapEntry<K, V> getEntry(int index) {`



#### `override
  V sourceGet(int sourceIndex) {`



#### `K getKey(int index) {`



#### `int indexOfKey(K key, [int start=0]) {`



#### `override
  bool containsKey(Object? key) {`



#### `override
  bool containsValue(Object? value) {`



#### `void set(K key, V value) {`



#### `if (index != -1) {`



#### `void insertAll(int index, Iterable<MapEntry<K, V>> iterable) {`



#### `if (index < 0 || index > length) {`



#### `override
  void addAll(Map<K, V> other) {`



#### `override
  void addEntries(Iterable<MapEntry<K, V>> newEntries) {`



#### `for (var entry in newEntries) {`



#### `override
  V putIfAbsent(K key, V Function() ifAbsent) {`



#### `if (!containsKey(key)) {`



#### `if (containsKey(key)) {`



#### `override
  void updateAll(V Function(K key, V value) update) {`



#### `for (var entry in entries) {`



#### `remove(Object? key) {`



#### `if (containsKey(key)) {`



#### `removeValue(Object? value) {`



#### `if (containsValue(value)) {`



#### `MapEntry<K, V> removeAt(int index) {`



#### `if (remd != 0) {`



#### `MapEntry<K, V> removeLast() {`



#### `An empty range (with `end == start`) is valid.
  void removeRange(int start, int end) {`



#### `override
  void removeWhere(bool Function(K key, V value) test) {`



#### `for (var entry in entries) {`



#### `if (test(entry.key, entry.value)) {`



#### `An empty range (with `end == start`) is valid.
  void replaceRange(int start, int end, Iterable<MapEntry<K, V>> replacements) {`



#### `void retainWhere(bool Function(K key, V value) test) {`



#### `override
  void clear() {`



#### `MapEntry<K2, V2> Function(K key, V value) convert) {`



#### `for (var entry in entries) {`



#### `override
  IterationMap<K, V> getRange(int start, int end) {`



#### `override
  IterationMap<K, V> sublist(int start, [int? end]) {`



#### `override
  IterationMap<K, V> skip(int count) {`



#### `override
  IterationMap<K, V> take(int count) {`



#### `override
  void set(K key, V value) {`



#### `override
  void insert(int index, K key, V element) {`



#### `bool _insertCheck(int index, K key, V element) {`



#### `if (i > -1 && index > i) {`



#### `if (index == _keys.length) {`



#### `get(Object? key) {`



#### `if (start != null || end != null || replacements != null) {`



#### `if (replacements != null) {`



#### `for (var replacement in replacements) {`



#### `if (removeAll != null) {`



#### `for (var index in removeAll) {`



#### `if (removeKeys != null) {`



#### `for (var key in removeKeys) {`



#### `if (_keys.remove(key)) {`


