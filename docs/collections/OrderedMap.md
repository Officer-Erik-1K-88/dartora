# OrderedMap

_No summary provided in source._

_Defined in: `src/collections/maps.dart`_

_Import_: `package:dartora/collections/maps.dart`

---

### Constructors

#### `MultiViewList(source: keys ?? map.keys)
  ;`



#### `return get(key);`



#### `set(key, value);`



#### `_mapKeys.add(key);`



#### `other.forEach(set);`



#### `set(entry.key, entry.value);`



#### `set(key, ifAbsent());`



#### `if (ifAbsent!=null) set(key, ifAbsent());`



#### `set(key, update(get(key) as V));`



#### `get(key);`



#### `if (ret == null) throw StateError('Failed to update tags.');`



#### `set(key, update(key, get(key) as V));`



#### `_mapping.remove(key);`



#### `_mapKeys.remove(key);`



#### `remove(key);`



#### `_mapping.clear();`



#### `_mapKeys.clear();`



#### `return OrderedMap(map: _mapping.cast\<RK, RV\>(), keys: _mapKeys.cast\<RK\>());`



#### `return _mapping.containsKey(key);`



#### `return _mapping.containsValue(value);`



#### `ret.add(MapEntry(key, get(key) as V));`



#### `action(key, get(key) as V);`



#### `entries.add(convert(key, get(key) as V));`



#### `return LinkedHashMap.fromEntries(entries);`



#### `ret.add(get(key) as V);`



### Fields

#### `final Map\<K, V\> _mapping;`



#### `final MultiViewList\<K\> _mapKeys;`



#### `value;`



#### `return ret;`



#### `return removed;`



#### `as V;`



#### `return ret;`



#### `isEmpty;`



#### `isNotEmpty;`



#### `unmodifiable;`



#### `length;`



#### `return ret;`





### Methods

#### `get(Object? key) {`



#### `void set(K key, V value) {`



#### `if (!containsKey(key)) {`



#### `override
  void addAll(Map\<K, V\> other) {`



#### `override
  void addEntries(Iterable\<MapEntry\<K, V\>\> newEntries) {`



#### `for (var entry in newEntries) {`



#### `override
  V putIfAbsent(K key, V Function() ifAbsent) {`



#### `if (!containsKey(key)) {`



#### `if (!containsKey(key)) {`



#### `override
  void updateAll(V Function(K key, V value) update) {`



#### `for (var key in _mapKeys) {`



#### `remove(Object? key) {`



#### `if (removed != null) {`



#### `override
  void removeWhere(bool Function(K key, V value) test) {`



#### `for (var key in _mapKeys) {`



#### `if (test(key, value)) {`



#### `override
  void clear() {`



#### `override
  bool containsKey(Object? key) {`



#### `override
  bool containsValue(Object? value) {`



#### `for (var key in _mapKeys) {`



#### `override
  void forEach(void Function(K key, V value) action) {`



#### `for (var key in _mapKeys) {`



#### `MapEntry\<K2, V2\> Function(K key, V value) convert) {`



#### `for (var key in keys) {`



#### `for (var key in _mapKeys) {`


