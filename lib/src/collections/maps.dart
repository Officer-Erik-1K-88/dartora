import 'dart:collection';

import 'lists.dart';

class OrderedMap<K, V> implements Map<K, V> {
  final Map<K, V> _mapping;
  final MultiViewList<K> _mapKeys;

  /// Creates an [OrderedMap] where the order is defined by [keys],
  /// or, if not stated, then the defined order in [Map.keys] of [map]
  /// will be used to give order.
  OrderedMap({
    required Map<K, V> map,
    Iterable<K>? keys,
  }) :
    _mapping = map,
    _mapKeys = MultiViewList(source: keys ?? map.keys)
  ;
  
  @override
  V? operator [](Object? key) {
    return get(key);
  }

  /// The value for the given [key], or `null` if [key] is not in the map.
  V? get(Object? key) {
    return _mapping[key];
  }
  
  @override
  void operator []=(K key, V value) {
    set(key, value);
  }

  void set(K key, V value) {
    if (!containsKey(key)) {
      _mapKeys.add(key);
    }
    _mapping[key] = value;
  }
  
  @override
  void addAll(Map<K, V> other) {
    other.forEach(set);
  }
  
  @override
  void addEntries(Iterable<MapEntry<K, V>> newEntries) {
    for (var entry in newEntries) {
      set(entry.key, entry.value);
    }
  }

  @override
  V putIfAbsent(K key, V Function() ifAbsent) {
    if (!containsKey(key)) {
      set(key, ifAbsent());
    }
    return get(key)!;
  }

  @override
  V update(K key, V Function(V value) update, {V Function()? ifAbsent}) {
    if (!containsKey(key)) {
      if (ifAbsent!=null) set(key, ifAbsent());
    } else {
      set(key, update(get(key) as V));
    }
    var ret = get(key);
    if (ret == null) throw StateError('Failed to update tags.');
    return ret;
  }
  
  @override
  void updateAll(V Function(K key, V value) update) {
    for (var key in _mapKeys) {
      set(key, update(key, get(key) as V));
    }
  }
  
  @override
  V? remove(Object? key) {
    V? removed = _mapping.remove(key);
    if (removed != null) {
      _mapKeys.remove(key);
    }
    return removed;
  }
  
  @override
  void removeWhere(bool Function(K key, V value) test) {
    for (var key in _mapKeys) {
      var value = get(key) as V;
      if (test(key, value)) {
        remove(key);
      }
    }
  }

  @override
  void clear() {
    _mapping.clear();
    _mapKeys.clear();
  }
  
  @override
  Map<RK, RV> cast<RK, RV>() {
    return OrderedMap(map: _mapping.cast<RK, RV>(), keys: _mapKeys.cast<RK>());
  }
  
  @override
  bool containsKey(Object? key) {
    return _mapping.containsKey(key);
  }
  
  @override
  bool containsValue(Object? value) {
    return _mapping.containsValue(value);
  }
  
  @override
  Iterable<MapEntry<K, V>> get entries {
    List<MapEntry<K, V>> ret = [];
    for (var key in _mapKeys) {
      ret.add(MapEntry(key, get(key) as V));
    }
    return ret;
  }
  
  @override
  void forEach(void Function(K key, V value) action) {
    for (var key in _mapKeys) {
      action(key, get(key) as V);
    }
  }
  
  @override
  bool get isEmpty => _mapping.isEmpty;
  
  @override
  bool get isNotEmpty => _mapping.isNotEmpty;
  
  @override
  Iterable<K> get keys => _mapKeys.unmodifiable;
  
  @override
  int get length => _mapping.length;
  
  @override
  Map<K2, V2> map<K2, V2>(MapEntry<K2, V2> Function(K key, V value) convert) {
    List<MapEntry<K2, V2>> entries = [];
    for (var key in keys) {
      entries.add(convert(key, get(key) as V));
    }
    return LinkedHashMap.fromEntries(entries);
  }
  
  @override
  Iterable<V> get values {
    List<V> ret = [];
    for (var key in _mapKeys) {
      ret.add(get(key) as V);
    }
    return ret;
  }
}