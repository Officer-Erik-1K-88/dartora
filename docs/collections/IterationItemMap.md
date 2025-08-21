# IterationItemMap

_No summary provided in source._

_Defined in: `src/collections/iteration.dart`_

_Import_: `package:dartora/collections/iteration.dart`


---


### Constructors

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


