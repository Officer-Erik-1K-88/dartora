# IterationMap

_No summary provided in source._

_Defined in: `src/collections/iteration.dart`_

_Import_: `package:dartora/collections/iteration.dart`

---

### Constructors

#### `action(entry.key, entry.value);`



#### `IterationItem(
    source: sourceEntries,
    startIndex: startIndex,
    indexTake: indexTake,
  );`



#### `entries.map((entry) =\> entry.key);`



#### `entries.map((entry) =\> entry.value);`



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



#### `assert(start \>= 0 && end \>= start && length \>= end);`



#### `removeAction(start: offset(start), end: offset(end));`



#### `keys.add(entry.key);`



#### `removeAction(removeKeys: keys);`



#### `assert(start \>= 0 && end \>= start && length \>= end);`



#### `removeAction(start: offset(start), end: offset(end), replacements: replacements);`



#### `removeWhere((key, value) =\> !test(key, value));`



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
    map: LinkedHashMap.fromEntries((entries as Iteration\<MapEntry\<K, V\>\>).reversed)
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



### Fields

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





### Methods

#### `override
  void forEach(void Function(K key, V value) action) {`



#### `for (var entry in entries) {`



#### `MapEntry\<K, V\> getEntry(int index) {`



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



#### `void insertAll(int index, Iterable\<MapEntry\<K, V\>\> iterable) {`



#### `if (index \< 0 || index \> length) {`



#### `override
  void addAll(Map\<K, V\> other) {`



#### `override
  void addEntries(Iterable\<MapEntry\<K, V\>\> newEntries) {`



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



#### `MapEntry\<K, V\> removeAt(int index) {`



#### `if (remd != 0) {`



#### `MapEntry\<K, V\> removeLast() {`



#### `An empty range (with `end == start`) is valid.
  void removeRange(int start, int end) {`



#### `override
  void removeWhere(bool Function(K key, V value) test) {`



#### `for (var entry in entries) {`



#### `if (test(entry.key, entry.value)) {`



#### `An empty range (with `end == start`) is valid.
  void replaceRange(int start, int end, Iterable\<MapEntry\<K, V\>\> replacements) {`



#### `void retainWhere(bool Function(K key, V value) test) {`



#### `override
  void clear() {`



#### `MapEntry\<K2, V2\> Function(K key, V value) convert) {`



#### `for (var entry in entries) {`



#### `override
  IterationMap\<K, V\> getRange(int start, int end) {`



#### `override
  IterationMap\<K, V\> sublist(int start, [int? end]) {`



#### `override
  IterationMap\<K, V\> skip(int count) {`



#### `override
  IterationMap\<K, V\> take(int count) {`


