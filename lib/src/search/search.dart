import '../../collections.dart';
import '../../math.dart' as math;
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


// Search engine stuff below

class SearchItem {
  /// Display title.
  String? titleChan;
  /// The actual item that was searched for.
  final Searchable item;
  /// The [SearchQueryComparison] that [item] got in the [Search].
  final SearchQueryComparison comparison;

  SearchItem({
    required this.item,
    required this.comparison,
  });
}

class PointedWord {
  final String word;
  final int points;

  PointedWord({required this.word, required this.points});

  @override
  String toString() {
    return word;
  }
}

enum QueryType {
  optional,
  require,
  cannot,
  optReq,
  reqCnot,
  optCnot,
  all,
}

class SearchQueryComparison {
  /// The number of points that was got in comparison.
  final math.Points points;
  final bool hasRequired;
  final bool containsNotAllowed;

  const SearchQueryComparison({
    required this.points,
    required this.hasRequired,
    required this.containsNotAllowed,
  });

  SearchQueryComparison operator +(SearchQueryComparison other) {
    return SearchQueryComparison(
      points: points + other.points,
      hasRequired: hasRequired || other.hasRequired,
      containsNotAllowed: containsNotAllowed || other.containsNotAllowed
    );
  }
}

enum PatternItem {
  ignore('Ignore Special', 0x005C), // \
  hold('Mention', 0x0022), // "
  space('Space', 0x0020), // space
  cannotHave('Cannot Mention', 0x002D), // -
  tag('Tag', 0x0023), // #
  wild('Wildcard', 0x002A, ' @-Wild- ', r'.'), // *
  ;

  const PatternItem(
    this.name,
    this.charCode,
    [
      this.charReplacement,
      this.regExpChar,
    ]
  ):
    expBound = charReplacement != null && regExpChar != null
  ;
  final String name;
  final int charCode;
  final String? charReplacement;
  final String? regExpChar;
  final bool expBound;

  String call({
    void Function(PatternItem)? action,
    required bool Function(PatternItem) check,
  }) {
    if (check(this)) {
      if (action != null) action(this);
      if (charReplacement != null) return charReplacement!;
    }
    return String.fromCharCode(charCode);
  }

  static Map<int, PatternItem> _patternItems = { for (var elm in PatternItem.values) elm.charCode : elm };

  static PatternItem? fromCharCode(final int charCode) {
    return _patternItems[charCode];
  }
}

class SearchQuery extends Iteration<PointedWord> {
  factory SearchQuery.from(
    String query,
    {
      int defaultPoints=1,
    }
  ) {
    List<PointedWord> optional = [];
    List<PointedWord> cannot = [];
    List<PointedWord> require = [];
    List<PointedWord> tags = [];

    bool ignoreSpecial = false;
    bool add = true;
    String current = '';
    bool inHold = false;
    bool asTag = false;

    void append() {
      if (current.isNotEmpty) {
        var point = PointedWord(
          word: current,
          points: add?defaultPoints:-defaultPoints,
        );
        if (asTag) {
          tags.add(point);
        } else if (add) {
          if (inHold) {
            require.add(point);
          } else {
            optional.add(point);
          }
        } else {
          cannot.add(point);
        }
      }
      asTag = false;
      add = true;
      current = '';
    }

    for (int charCode in query.codeUnits) {
      bool isContinue = false;
      String charInsert = PatternItem.fromCharCode(charCode)?.call(
        action: (pat) {
          if (pat == PatternItem.ignore) {
            ignoreSpecial = true;
            isContinue = true;
          } else if (pat == PatternItem.hold) {
            if (inHold) {
              append();
            }
            inHold = !inHold;
            isContinue = true;
          } else if (pat == PatternItem.space) {
            append();
            isContinue = true;
          } else if (pat == PatternItem.cannotHave) {
            add = false;
            isContinue = true;
          } else if (pat == PatternItem.tag) {
            asTag = true;
            isContinue = true;
          }
        },
        check: (pat) {
          if (ignoreSpecial) return false;
          if (inHold && pat != PatternItem.ignore) {
            return false;
          }
          return true;
        },
      ) ?? String.fromCharCode(charCode);
      if (isContinue) continue;
      current = '$current$charInsert';
      ignoreSpecial = false;
    }
    append();

    return SearchQuery(
      optional: optional,
      require: require,
      cannot: cannot,
      tags: tags,
    );
  }

  SearchQuery({
    required this.optional,
    required this.require,
    required this.cannot,
    required this.tags,
  }):super();

  final List<PointedWord> optional;
  final List<PointedWord> require;
  final List<PointedWord> cannot;
  final List<PointedWord> tags;

  @override
  int get sourceLength => optional.length + require.length + cannot.length + tags.length;

  @override
  final int startIndex = 0;
  @override
  final int indexTake = 0;
  
  @override
  Iterator<PointedWord> get sourceIterator => IteratorBuild(
    elementAt: sourceGet,
    endIndex: sourceLength
  );
  
  @override
  PointedWord sourceGet(int sourceIndex) {
    if (sourceIndex < optional.length) {
      return optional.elementAt(sourceIndex);
    }
    sourceIndex -= optional.length;
    if (sourceIndex < require.length) {
      return require.elementAt(sourceIndex);
    }
    sourceIndex -= require.length;
    if (sourceIndex < cannot.length) {
      return cannot.elementAt(sourceIndex);
    }
    sourceIndex -= cannot.length;
    return tags.elementAt(sourceIndex);
  }

  /// Computes the [SearchQueryComparison] of a string to
  /// the [PointedWord] list defined by [type]
  /// with the flag of [asTag] referring to comparing [s]
  /// the the [tag] [PointedWord] list.
  SearchQueryComparison compare(
    String s,
    {
      QueryType type = QueryType.all,
      bool asTag=false,
    }
  ) {
    math.Points points = math.Points.empty();
    bool hasReq = true;
    bool containsNotAllowed = false;
    if (
      type == QueryType.require ||
      type == QueryType.optReq ||
      type == QueryType.reqCnot ||
      type == QueryType.all
    ) {
      points += getPoints(s, require);
      hasReq = points >= require.length;
    }
    if (
      type == QueryType.optional ||
      type == QueryType.optReq ||
      type == QueryType.optCnot ||
      type == QueryType.all
    ) {
      points += getPoints(s, optional);
    }
    if (
      type == QueryType.cannot ||
      type == QueryType.optCnot ||
      type == QueryType.reqCnot ||
      type == QueryType.all
    ) {
      math.Points cn = getPoints(s, cannot);
      containsNotAllowed = cn.negative != 0;
      points += cn;
    }
    if (asTag) {
      points += getPoints(s, tags);
    }
    return SearchQueryComparison(
      points: points,
      hasRequired: hasReq,
      containsNotAllowed: containsNotAllowed,
    );
  }

  double getPercent(math.Points points) {
    int count = require.length + optional.length;
    if (count == 0) count = tags.length;
    if (count == 0) count = 100;
    double percent = points.total / count;

    return percent;
  }

  /// builds the Regular Expression of a search word pattern.
  static RegExp getExpression(String searchWordPattern) {
    String pattern = RegExp.escape(searchWordPattern);
    for (var item in PatternItem.values) {
      if (item.expBound) {
        pattern = pattern.replaceAll(item.charReplacement!, item.regExpChar!);
      }
    }
    return RegExp(pattern, caseSensitive: false);
  }
  
  /// Applies a list of [PointedWord]s to a string to for word comparisons.
  ///
  /// A negative return means that most words in [s] that was
  /// stated in [words] was something that shouldn't be in [s].
  /// It should be relatively hard for the return to be negative
  /// since we only count multiple occurrences of positive words.
  /// Otherwise, the return is positive.
  ///
  /// A positive return means that most words in [s] that was
  /// stated in [words] was something that is preferred to be in [s].
  /// The way that the modifier for points when multiple occurrences
  /// of a positive word is present is done is by the use of the
  /// logarithmic base 2 of the occurrences.
  ///
  /// If the return is zero then no stated [words] were in [s].
  static math.Points getPoints(String s, List<PointedWord> words) {
    int ocrs = 0;
    int posPoints = 0;
    int negPoints = 0;
    int modifier = 0;
    for (var word in words) {
      var exp = getExpression(word.word);
      if (word.points > 0) {
        int occurrences = exp.allMatches(s).length;
        ocrs += occurrences;
        if (occurrences != 0) {
          modifier += math.max(math.stepwiseGrowth(occurrences), 1);
          posPoints += word.points;
        }
      } else { // separates positive and negative points adding to mediate potential problems with having points deep into the negatives.
        if (exp.hasMatch(s)) {
          negPoints += word.points.abs();
        }
      }
    }
    return math.Points.from(
      positive: posPoints,
      negative: negPoints,
      occurrences: ocrs,
      modifier: modifier,
    );
  }
}

class Search {
  /// The [SearchQuery] that was computed from the [String] supplied to [Search].
  final SearchQuery query;

  Search({
    required String query
  }):
    query = SearchQuery.from(query)
  ;

  /// Compares the [item] to the [query].
  SearchQueryComparison compare(Searchable item) {
    SearchQueryComparison comparison = query.compare(item.title) + query.compare(item.description);

    item.tags.forEach((key, tag) {
      if ((tag.isTag && tag.value) || !tag.isTag) {
        comparison += query.compare(tag.toString(), asTag: tag.isTag);
      }
    });

    return comparison;
  }

  /// Builds the [SearchItem] that represents the placement of [item] in
  /// the [Search].
  SearchItem getItem(Searchable item) {
    var qc = compare(item);
    
    return SearchItem(
      item: item,
      comparison: qc,
    );
  }

  /// Searches the [held] items for the ones that match
  /// the [query] the best.
  List<SearchItem> search({
    required Iterable<Searchable> held,
    bool includeChildren=true,
    List<SearchItem>? items,
    String? titleChan,
  }) {
    items ??= [];

    for (var item in held) {
      SearchItem seim = getItem(item);
      seim.titleChan = titleChan!=null?'$titleChan -> ${item.title}':item.title;

      if (includeChildren) {
        search(
          held: item.children.map((child)=>child.item),
          includeChildren: true,
          items: items,
          titleChan: seim.titleChan,
        );
      }

      if (
        seim.comparison.containsNotAllowed ||
        !seim.comparison.hasRequired
      ) {
        continue;
      }

      int index = items.indexWhere((si) {
        return
          seim.comparison.points > si.comparison.points
        ;
      });
      items.insert(index==-1?items.length:index, seim);
    }

    return items;
  }
}