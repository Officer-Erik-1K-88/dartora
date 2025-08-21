import '../../collections.dart';
import 'tag.dart';

/// The valid types of [Searchable] there can be.
enum SearchableType {
  parent,
  child
}

abstract class Searchable {
  /// The unique identifier of this [Searchable].
  final String id;
  /// The permanent name of the [Searchable].
  String get name;

  /// The name of the [Searchable] that will be displayed.
  String title;
  /// Information on the [Searchable].
  String description;
  /// Additional data that can be used to enanced searchability of this [Searchable].
  final Tags tags;

  /// The [SearchableType] of the [Searchable].
  final SearchableType type;
  Searchable? _parent;
  /// The parent of the [Searchable].
  Searchable? get parent => _parent;

  /// The children of the [Searchable].
  ChildHolder get children;

  Searchable({
    required this.id,
    required this.type,
    this.description='',
    this.title='',
    required this.tags,
  });

  factory Searchable.build({
    required String id,
    required String name,
    required SearchableType type,
    String description='',
    String title='',
    required Tags tags,
    List<Searchable>? children,
    EventAction onHolderEvent,
  }) {
    return DefaultSearchable(
      id: id,
      name: name,
      type: type,
      description: description,
      title: title,
      tags: tags,
      children: children,
      onHolderEvent: onHolderEvent,
    );
  }
}

class DefaultSearchable extends Searchable {
  late ChildHolder<Searchable> _children;

  @override
  final String name;
  
  @override
  ChildHolder<Searchable> get children => _children;
  
  DefaultSearchable({
    required super.id,
    required this.name,
    required super.type,
    super.description,
    super.title,
    required super.tags,
    List<Searchable>? children,
    EventAction onHolderEvent,
  })
  {
    _children = ChildHolder(
      parent: this,
      onEvent: onHolderEvent,
      children: children,
    );
  }

}

class TargetChild<T> {
  final ChildHolder holder;
  final T item;

  TargetChild({
    required this.holder,
    required this.item,
  });
}

/// This is a wrapper for a [Searchable] that is stored in a [ChildHolder].
class Child<T extends Searchable> extends TargetChild<T> {
  /// The id of the [Searchable] being wrapped.
  String get key => item.id;
  /// The [SearchableType] of the [Searchable] being wrapped.
  SearchableType get type => item.type;
  /// The  parent [Searchable] of the [Searchable] being wrapped.
  /// If the wrapped [Searchable] has no parent then the wrapped [Searchable] is returned.
  Searchable get parent {
    if (item._parent != null) {
      return item._parent!;
    }
    return item;
  }

  Child({
    required super.holder,
    required super.item,
  });
}

enum ChildActionType {
  add,
  remove,
  result,
}

typedef EventAction = void Function(ChildAction action)?;

class ChildAction<T> {
  final EventAction onCall;
  final TargetChild<T> target;
  final ChildActionType type;
  bool _preventAction = false;
  bool _lock = false;

  ChildAction({
    required this.onCall,
    required this.target,
    required this.type,
  });

  bool get actionPrevented => _preventAction;
  void prevent() {
    if (!_lock) {
      _preventAction = true;
    }
  }

  ChildAction<T> locked() {
    _lock = true;
    return this;
  }

  ChildActionResult<T>? call([bool getResult=false]) {
    if (!_lock) {
      if (onCall != null) onCall!(this);
    }
    if (getResult) {
      return ChildActionResult(onCall: onCall, target: this);
    }
    return null;
  }
}

class ChildActionResult<T> extends ChildAction<ChildAction<T>> {
  ChildActionResult({
    required super.onCall,
    required ChildAction<T> target,
  }): super(
    target: TargetChild(holder: target.target.holder, item: target.locked()),
    type: ChildActionType.result,
  );
}

/// The iterator of a [ChildHolder]
class ChildHolderIterator<T extends Searchable> implements Iterator<Child<T>> {
  final ChildHolder<T> holder;
  int _index = -1;

  ChildHolderIterator({required this.holder});

  @override
  Child<T> get current => holder.elementAt(_index);

  @override
  bool moveNext() {
    _index += 1;
    if (_index == holder.length) return false;
    return true;
  }
}

/// A holder for [Searchable]s.
class ChildHolder<T extends Searchable> extends Iterable<Child<T>> {
  final Map<SearchableType, MultiViewList<String>> _typedKeys = {};
  final MultiViewList<String> _keys = MultiViewList<String>(source:[]);
  final Map<String, Child<T>> children = {};
  final T? parent;

  /// A function to be triggered when a [Searchable] has triggered an event.
  ///
  /// Event types are defined by [ChildActionType].
  EventAction onEvent;

  ChildActionResult<T> _callAction(Child<T> target, ChildActionType type) {
    ChildAction<T> action = ChildAction(
      onCall: onEvent,
      target: target,
      type: type,
    );

    return action.call(true)!;
  }

  /// Gets the list of keys stored by [SearchableType].
  MultiViewList<String> _getKeys(SearchableType type) {
    return _typedKeys.putIfAbsent(type, () => MultiViewList<String>(source:[]));
  }

  /// Adds a key to the list of keys.
  void _addKey(String key, SearchableType type) {
    _getKeys(type).add(key);
    _keys.add(key);
  }

  /// Removes a key from the list of keys.
  void _removeKey(String key, SearchableType type) {
    _getKeys(type).remove(key);
    _keys.remove(key);
  }

  /// Gets an [UnmodifiableListView] of the keys to [Searchable]s with the provided [SearchableType].
  UnmodifiableListView<String> getKeys(SearchableType type) {
    return _getKeys(type).unmodifiable;
  }
  /// Gets an [UnmodifiableListView] of all the stored keys.
  UnmodifiableListView<String> get keys => _keys.unmodifiable;

  ChildHolder({
    this.parent,
    this.onEvent,
    List<T>? children,
  }) {
    if (children != null) {
      addAll(children);
    }
  }

  @override
  int get length => _keys.length;

  /// Checks to see if there is a [Searchable] with the provided key.
  bool containsKey(String key) {
    return children.containsKey(key);
  }

  /// Gets the key of a [Searchable] from it's index position.
  String getKey(int index) {
    IndexError.check(index, length);
    return _keys[index];
  }

  /// Gets the index position of a [Searchable] from it's key.
  int getIndex(String key) {
    return _keys.indexOf(key);
  }

  /// Gets a [Child] from it's key.
  Child<T>? operator [](String key) {
    return get(key);
  }

  /// Gets a [Child] from it's key.
  Child<T>? get(String key) {
    return children[key];
  }

  @override
  Child<T> elementAt(int index) {
    return get(getKey(index))!;
  }

  /// Adds a [Searchable] to the [ChildHolder] ad returns the [Child] that wraps the added [Searchable].
  Child<T> add(T item) {
    assert(!containsKey(item.id), "The MarkerCategory already has an item with the key of `${item.id}`.");
    Child<T> child = Child(
      holder: this,
      item: item,
    );
    var actionResult = _callAction(child, ChildActionType.add);
    if (!actionResult.target.item.actionPrevented) {
      if (parent != null) {
        item._parent = parent;
      }
      children[child.key] = child;
      _addKey(child.key, child.type);
      actionResult.call();
    }
    return child;
  }

  /// Adds many [MarkerItems] to the [ChildHolder].
  void addAll(List<T> items) {
    for (var item in items) {
      add(item);
    }
  }

  /// Removes a [Searchable] from a [ChildHolder] using it's key. Will return `null` if removal failed. Otherwise, will return the [Child] that wraps the removed [Searchable].
  Child<T>? remove(String key) {
    Child<T>? removed = children[key];
    if (removed == null) return null;
    var actionResult = _callAction(removed, ChildActionType.remove);
    if (!actionResult.target.item.actionPrevented) {
      children.remove(key);
      _removeKey(key, removed.type);
      if (removed.item._parent == parent) removed.item._parent = null;
      actionResult.call();
      return removed;
    }
    return null;
  }

  /// Removes a [Searchable] using the [Child] that wraps it.
  bool removeElement(Child<T> child) {
    return remove(child.key) != null;
  }

  /// Removes a [Searchable] from a [ChildHolder] using it's index position. Returns the [Child] that wraps the removed [Searchable].
  Child removeAt(int index) {
    return remove(getKey(index))!;
  }

  @override
  void forEach(void Function(Child<T> child) action) {
    for (String key in _keys) {
      action(get(key)!);
    }
  }

  @override
  FT fold<FT>(FT initialValue, FT Function(FT previousValue, Child<T> child) combine) {
    var value = initialValue;
    for (String key in _keys) {
      value = combine(value, get(key)!);
    }
    return value;
  }
  
  @override
  bool any(bool Function(Child<T> element) test) {
    return _iter.any(test);
  }
  
  @override
  Iterable<R> cast<R>() {
    return _iter.cast<R>();
  }
  
  @override
  bool contains(Object? element) {
    return children.containsValue(element);
  }
  
  @override
  bool every(bool Function(Child<T> element) test) {
    return _iter.every(test);
  }
  
  @override
  Iterable<ET> expand<ET>(Iterable<ET> Function(Child<T> element) toElements) {
    return _iter.expand(toElements);
  }
  
  @override
  Child<T> get first => elementAt(0);
  
  @override
  Child<T> firstWhere(bool Function(Child<T> element) test, {Child<T> Function()? orElse}) {
    return _iter.firstWhere(test, orElse: orElse);
  }
  
  @override
  Iterable<Child<T>> followedBy(Iterable<Child<T>> other) {
    return _iter.followedBy(other);
  }
  
  @override
  bool get isEmpty => length == 0;
  
  @override
  bool get isNotEmpty => length > 0;
  
  @override
  Iterator<Child<T>> get iterator => ChildHolderIterator(holder: this);
  
  @override
  String join([String separator = ""]) {
    return fold("", (s, child) => "$s$separator${child.toString()}");
  }
  
  @override
  Child<T> get last => elementAt(length-1);
  
  @override
  Child<T> lastWhere(bool Function(Child<T> element) test, {Child<T> Function()? orElse}) {
    return _iter.lastWhere(test, orElse: orElse);
  }
  
  @override
  Iterable<MT> map<MT>(MT Function(Child<T> e) toElement) {
    return LargeIterable(mapped: children, keys: keys, modifier: toElement);
  }

  LargeIterable<Child<T>, Child<T>> get _iter => IterableItems(mapped: children, keys: keys);
  
  @override
  Child<T> reduce(Child<T> Function(Child<T> value, Child<T> element) combine) {
    return _iter.reduce(combine);
  }
  
  @override
  Child<T> get single => isEmpty||length>1?throw StateError("ChildHolder has more or less than one item."): first;
  
  @override
  Child<T> singleWhere(bool Function(Child<T> element) test, {Child<T> Function()? orElse}) {
    return _iter.singleWhere(test, orElse: orElse);
  }
  
  @override
  Iterable<Child<T>> skip(int count) {
    return _iter.skip(count);
  }
  
  @override
  Iterable<Child<T>> skipWhile(bool Function(Child<T> value) test) {
    return _iter.skipWhile(test);
  }
  
  @override
  Iterable<Child<T>> take(int count) {
    return _iter.take(count);
  }
  
  @override
  Iterable<Child<T>> takeWhile(bool Function(Child<T> value) test) {
    return _iter.takeWhile(test);
  }
  
  @override
  List<Child<T>> toList({bool growable = true}) {
    return _iter.toList(growable: growable);
  }
  
  @override
  Set<Child<T>> toSet() {
    return _iter.toSet();
  }
  
  @override
  Iterable<Child<T>> where(bool Function(Child<T> element) test) {
    return _iter.where(test);
  }
  
  @override
  Iterable<WT> whereType<WT>() {
    return _iter.whereType<WT>();
  }
}