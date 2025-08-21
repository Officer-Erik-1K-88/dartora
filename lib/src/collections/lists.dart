import 'dart:collection';

import 'iteration.dart';
import 'iterators.dart';
import '../errors.dart';

class LargeIterable<VT, E> extends Iteration<E> {
  final Map<String, VT> _mapped;
  final List<String> _keys;
  final Iterable<dynamic>? _extras;
  final E Function(VT e) modifier;


  LargeIterable({
    required Map<String, VT> mapped,
    required List<String> keys,
    Iterable<dynamic>? extras,
    required this.modifier,
    this.startIndex = 0,
    this.indexTake = 0,
  }):
    _extras = extras,
    _keys = keys,
    _mapped = mapped
  ;

  @override
  final int startIndex;

  @override
  final int indexTake;
  
  @override
  Iterator<E> get sourceIterator => IteratorBuild<E>(
    elementAt: sourceGet,
    endIndex: sourceLength,
  );

  int get keyLength {
    int kl = (_keys.length - startIndex) - indexTake;

    return kl < 0? 0 : kl;
  }

  @override
  int get sourceLength => _keys.length + (_extras != null?_extras.length:0);

  // Element retrieval

  String getKey(int index) {
    if (keyLength == 0) throw StateError('The LargeIterable has no keys.');
    index = offset(index);
    if (index >= startIndex && index < offset(keyLength)) {
      return _keys[index];
    }
    throw IndexError.withLength(index - startIndex, keyLength);
  }

  E getItem(String key) {
    int index = _keys.indexOf(key, startIndex);
    VT? m;
    if (index != -1 && index < offset(keyLength)) {
      m = _mapped[key];
    }
    if (m == null) throw KeyException(key: key);
    return modifier(m);
  }

  @override
  E sourceGet(int sourceIndex) {
    dynamic m;
    if (sourceIndex >= startIndex && sourceIndex < offset(length)) {
      if (sourceIndex < _keys.length) {
        m = _mapped[_keys.elementAt(sourceIndex)];
      } else {
        m = _extras?.elementAt(sourceIndex-_keys.length);
      }
    }
    if (m == null) throw BaseException("Value at `$sourceIndex` doesn't exist.");
    if (m is VT) {
      return modifier(m);
    }
    return m as E;
  }

  // validation checks

  bool containsKey(Object? key) {
    if (key is String) {
      int index = _keys.indexOf(key, startIndex);
      if (index != -1 && index < offset(keyLength)) {
        return true;
      }
    }
    return false;
  }

  // Modifications

  // Mapping

  @override
  Iteration<T> map<T>(T Function(E e) toElement) {
    return LargeIterable(mapped: _mapped, keys: _keys, extras: _extras, modifier: (e) {
      return toElement(modifier(e));
    }, startIndex: startIndex, indexTake: indexTake);
  }

  @override
  Iteration<E> followedBy(Iterable<E> other) {
    List<dynamic> additional = [];
    if (_extras != null) {
      if (startIndex >= _keys.length) {
        for (int i=0; i<length; i++) {
          additional.add(_extras.elementAt(i+(startIndex-_keys.length)));
        }
      } else {
        for (int i=0; i<length-_keys.length; i++) {
          additional.add(_extras.elementAt(i));
        }
      }
    }
    additional.addAll(other);
    return LargeIterable<VT, E>(
      mapped: _mapped,
      keys: _keys,
      extras: additional,
      modifier: modifier,
      startIndex: startIndex,
      indexTake: indexTake,
    );
  }

  @override
  Iteration<T> expand<T>(Iterable<T> Function(E element) toElements) {
    List<T> listed = [];
    for (int i=0; i<length; i++) {
      listed.addAll(toElements(elementAt(i)));
    }
    return IterationItem(source: listed);
  }

  @override
  Iteration<E> skip(int count) {
    return LargeIterable(mapped: _mapped, keys: _keys, extras: _extras, modifier: modifier, startIndex: offset(count), indexTake: indexTake);
  }

  @override
  Iteration<E> take(int count) {
    if (count>length) count = length;
    return LargeIterable(mapped: _mapped, keys: _keys, extras: _extras, modifier: modifier, startIndex: startIndex, indexTake: indexTake+count);
  }

  // Setting to other type

  @override
  Iteration<R> cast<R>() {
    return LargeIterable(
      mapped: _mapped,
      keys: _keys,
      extras: _extras,
      modifier: (e) {
        return modifier(e) as R;
      },
      startIndex: startIndex,
      indexTake: indexTake,
    );
  }
}

class IterableItems<E> extends LargeIterable<E, E> {
  IterableItems({
    required super.mapped,
    required super.keys
  }) : super(modifier: (e) => e);
}

class MultiViewList<E> implements Iterable<E> {
  final Iterable<E> source;
  final List<E> _listSource;
  late final UnmodifiableListView<E> unmodifiable;

  MultiViewList({
    required this.source,
  }):
    _listSource = source is List<E>?source:List.from(source)
  {
    unmodifiable = UnmodifiableListView(_listSource);
  }

  @override
  int get length => _listSource.length;

  @override
  bool get isEmpty => _listSource.isEmpty;
  
  @override
  bool get isNotEmpty => _listSource.isNotEmpty;

  // Iteration over self
  
  @override
  Iterator<E> get iterator => _listSource.iterator;

  @override
  void forEach(void Function(E element) action) {
    _listSource.forEach(action);
  }

  // Element retrieval

  @override
  E get first => _listSource.first;

  @override
  E get last => _listSource.last;

  @override
  E get single => _listSource.single;

  E operator [](int index) {
    return _listSource[index];
  }

  @override
  E elementAt(int index) {
    return _listSource.elementAt(index);
  }

  // Element look-up

  int indexOf(E element, [int start = 0]) {
    return _listSource.indexOf(element, start);
  }

  @override
  E firstWhere(bool Function(E element) test, {E Function()? orElse}) {
    return _listSource.firstWhere(test, orElse: orElse);
  }
  
  @override
  E lastWhere(bool Function(E element) test, {E Function()? orElse}) {
    return _listSource.lastWhere(test, orElse: orElse);
  }
  
  @override
  E singleWhere(bool Function(E element) test, {E Function()? orElse}) {
    return _listSource.singleWhere(test, orElse: orElse);
  }

  // validation checks

  @override
  bool any(bool Function(E element) test) {
    return _listSource.any(test);
  }

  @override
  bool every(bool Function(E element) test) {
    return _listSource.every(test);
  }

  @override
  bool contains(Object? element) {
    return _listSource.contains(element);
  }

  // Modification

  void set(int index, E value) {
    _listSource[index] = value;
  }

  void add(E value) {
    _listSource.add(value);
  }

  bool remove(Object? value) {
    return _listSource.remove(value);
  }

  E removeAt(int index) {
    return _listSource.removeAt(index);
  }

  void clear() {
    _listSource.clear();
  }

  // Reduction

  @override
  String join([String separator = ""]) {
    return _listSource.join(separator);
  }

  @override
  E reduce(E Function(E value, E element) combine) {
    return _listSource.reduce(combine);
  }

  @override
  T fold<T>(T initialValue, T Function(T previousValue, E element) combine) {
    return _listSource.fold(initialValue, combine);
  }

  // Mapping

  @override
  Iterable<T> map<T>(T Function(E e) toElement) {
    return MultiViewList<T>(source: _listSource.map<T>(toElement) as List<T>);
  }

  @override
  Iterable<E> followedBy(Iterable<E> other) {
    return MultiViewList(source: _listSource.followedBy(other) as List<E>);
  }
  
  @override
  Iterable<T> expand<T>(Iterable<T> Function(E element) toElements) {
    return MultiViewList<T>(source: _listSource.expand<T>(toElements) as List<T>);
  }
  
  @override
  Iterable<E> skip(int count) {
    return MultiViewList(source: _listSource.skip(count) as List<E>);
  }
  
  @override
  Iterable<E> skipWhile(bool Function(E value) test) {
    return MultiViewList(source: _listSource.skipWhile(test) as List<E>);
  }
  
  @override
  Iterable<E> take(int count) {
    return MultiViewList(source: _listSource.take(count) as List<E>);
  }
  
  @override
  Iterable<E> takeWhile(bool Function(E value) test) {
    return MultiViewList(source: _listSource.takeWhile(test) as List<E>);
  }
  
  @override
  Iterable<E> where(bool Function(E element) test) {
    return MultiViewList(source: _listSource.where(test) as List<E>);
  }

  // Setting to other type
  
  @override
  Iterable<T> whereType<T>() {
    return MultiViewList<T>(source: _listSource.whereType<T>() as List<T>);
  }

  @override
  Iterable<R> cast<R>() {
    return MultiViewList<R>(source: _listSource.cast<R>());
  }

  @override
  List<E> toList({bool growable = true}) {
    return unmodifiable.toList(growable: growable);
  }
  
  @override
  Set<E> toSet() {
    return unmodifiable.toSet();
  }
}

class LargeList<VT, E> implements Iterable<E> {
  final Map<String, VT> _mapped;
  final List<String> _keys;
  final IterationHolder _extras;
  final E Function(VT e) modifier;
  final int startIndex;
  final int? _indexCount;


  LargeList({
    required Map<String, VT> mapped,
    required List<String> keys,
    IterationHolder? extras,
    required this.modifier,
    this.startIndex=0,
    int? indexCount,
  }):
    _mapped = mapped,
    _keys = keys,
    _extras = extras ?? IterationHolder(items: []),
    _indexCount = indexCount
  ;

  int offset(int index) {
    return index + startIndex;
  }

  int get keyLength {
    int kl = _keys.length - startIndex;

    return kl < 0? 0 : kl;
  }

  @override
  int get length => _indexCount ?? ( ( _keys.length + _extras.length ) - startIndex );

  @override
  bool get isEmpty => length == 0;

  @override
  bool get isNotEmpty => length != 0;

  // Iteration over self

  @override
  Iterator<E> get iterator => IndexBaseIterator<E>(iterable: this);

  @override
  void forEach(void Function(E element) action) {
    for (int i=0; i<length; i++) {
      action(elementAt(i));
    }
  }

  // Element retrieval

  @override
  E get first => elementAt(startIndex);

  @override
  E get last => elementAt(length-1);

  @override
  E get single => isEmpty||length>1?throw StateError("LargeList has more or less than one item."): first;

  String getKey(int index) {
    if (keyLength == 0) throw StateError('The LargeList has no keys.');
    index = offset(index);
    if (index >= startIndex && index < offset(keyLength)) {
      return _keys[index];
    }
    throw IndexError.withLength(index - startIndex, keyLength);
  }

  E getItem(String key) {
    int index = _keys.indexOf(key, startIndex);
    VT? m;
    if (index != -1 && index < offset(length)) {
      m = _mapped[key];
    }
    if (m == null) throw KeyException(key: key);
    return modifier(m);
  }

  @override
  E elementAt(int index) {
    index = offset(index);
    dynamic m;
    if (index >= startIndex && index < offset(length)) {
      if (index < _keys.length) {
        m = _mapped[_keys.elementAt(index)];
      } else {
        m = _extras.elementAt(index-_keys.length);
      }
    }
    if (m == null) throw BaseException("Value at `$index` doesn't exist.");
    if (m is VT) {
      return modifier(m);
    }
    return m as E;
  }

  /// The object at the given [index] in the list.
  ///
  /// The [index] must be a valid index of this list,
  /// which means that `index` must be non-negative and
  /// less than [length].
  E operator [](int index) {
    return elementAt(index);
  }

  // Element search up

  @override
  E firstWhere(bool Function(E element) test, {E Function()? orElse}) {
    for (int i=0; i<length; i++) {
      E elm = elementAt(i);
      if (test(elm)) return elm;
    }
    if (orElse != null) return orElse();
    throw StateError("There was no elements matching test.");
  }

  @override
  E lastWhere(bool Function(E element) test, {E Function()? orElse}) {
    for (int i=length-1; i>=0; i++) {
      E elm = elementAt(i);
      if (test(elm)) return elm;
    }
    if (orElse != null) return orElse();
    throw StateError("There was no elements matching test.");
  }

  @override
  E singleWhere(bool Function(E element) test, {E Function()? orElse}) {
    E? ret;
    int c = 0;
    for (int i=0; i<length; i++) {
      E elm = elementAt(i);
      if (test(elm)) {
        ret = elm;
        c += 1;
      }
      if (c > 1) break;
    }
    if (c==1) return ret!;
    if (orElse != null) return orElse();
    throw StateError("There was no elements matching test.");
  }

  // validation checks

  @override
  bool any(bool Function(E element) test) {
    for (int i=0; i<length; i++) {
      if (test(elementAt(i))) return true;
    }
    return false;
  }

  @override
  bool every(bool Function(E element) test) {
    for (int i=0; i<length; i++) {
      if (!test(elementAt(i))) return false;
    }
    return true;
  }

  @override
  bool contains(Object? element) {
    for (int i=0; i<length; i++) {
      if (element == elementAt(i)) {
        return true;
      }
    }
    return false;
  }

  // Modifications

  // Reduction

  @override
  String join([String separator = ""]) {
    return fold("", (s, elm) {
      return "$s$separator${elm.toString()}";
    });
  }

  @override
  E reduce(E Function(E value, E element) combine) {
    E value = first;
    for (int i=1; i<length; i++) {
      value = combine(value, elementAt(i));
    }
    return value;
  }

  @override
  T fold<T>(T initialValue, T Function(T previousValue, E element) combine) {
    var value = initialValue;
    for (int i=0; i<length; i++) {
      value = combine(value, elementAt(i));
    }
    return value;
  }

  // Mapping

  @override
  Iterable<T> map<T>(T Function(E e) toElement) {
    return LargeList(mapped: _mapped, keys: _keys, extras: _extras, modifier: (e) {
      return toElement(modifier(e));
    }, startIndex: startIndex, indexCount: length);
  }

  @override
  Iterable<E> followedBy(Iterable<E> other) {
    return copy([
      IterationList(iterable: other),
    ]);
  }

  @override
  Iterable<T> expand<T>(Iterable<T> Function(E element) toElements) {
    List<T> listed = [];
    for (int i=0; i<length; i++) {
      listed.addAll(toElements(elementAt(i)));
    }
    return listed;
  }

  @override
  Iterable<E> skip(int count) {
    return LargeList(mapped: _mapped, keys: _keys, extras: _extras, modifier: modifier, startIndex: offset(count), indexCount: length-count);
  }

  @override
  Iterable<E> skipWhile(bool Function(E value) test) {
    List<E> iter = [];
    bool adding = false;
    forEach((e) {
      if (!adding) {
        if (!test(e)) {
          adding = true;
        }
      }
      if (adding) iter.add(e);
    });
    return iter;
  }

  @override
  Iterable<E> take(int count) {
    if (count>length) count = length;
    return LargeList(mapped: _mapped, keys: _keys, extras: _extras, modifier: modifier, startIndex: startIndex, indexCount: count);
  }

  @override
  Iterable<E> takeWhile(bool Function(E value) test) {
    List<E> iter = [];
    for(int i=0; i<length; i++) {
      E e = elementAt(i);
      if (test(e)) {
        iter.add(e);
      } else {
        break;
      }
    }
    return iter;
  }

  @override
  Iterable<E> where(bool Function(E element) test) {
    throw UnimplementedError();
  }

  // Setting to other type

  @override
  Iterable<T> whereType<T>() {
    throw UnimplementedError();
  }

  @override
  Iterable<R> cast<R>() {
    return LargeList(
      mapped: _mapped,
      keys: _keys,
      extras: _extras,
      modifier: (e) {
        return modifier(e) as R;
      },
      startIndex: startIndex,
      indexCount: length,
    );
  }

  @override
  List<E> toList({bool growable = true}) {
    return List.from(this, growable: growable);
  }

  @override
  Set<E> toSet() {
    return Set.from(this);
  }

  LargeList<VT, E> copy(List<IterationList>? additionalItems) {
    List<IterationList> extraItems = List.from(_extras.items).followedBy(additionalItems??[]) as List<IterationList>;
    IterationHolder extras = IterationHolder(items: extraItems);
    return LargeList(
      mapped: _mapped,
      keys: List.from(_keys),
      extras: extras,
      modifier: modifier,
      startIndex: startIndex,
      indexCount: _indexCount,
    );
  }
}
