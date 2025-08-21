import '../../collections.dart';
import '../../math.dart' as math;
import 'searchable.dart';

/// Defines the [Searchable] item
/// that was found in [Search].
class SearchItem {
  /// The route to this [item] in it's
  /// storage location.
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

/// Defines some search keyword.
class PointedWord {
  /// The text that should be looked for.
  final String word;
  /// The reward for finding [word] in
  /// the search.
  ///
  /// Should be positive when [word] is wanted.
  /// Should be negative when the [word] is not wanted.
  /// And should be zero when the [word] doesn't matter.
  final int points;

  PointedWord({required this.word, required this.points});

  /// A string representation of this object.
  ///
  /// The return is [word].
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

/// The comparison between the [SearchQuery] and
/// some [Searchable].
class SearchQueryComparison {
  /// The number of points that was got in comparison.
  final math.Points points;
  /// Wether the [Searchable] in [SearchItem] has the required [PointedWord]s.
  final bool hasRequired;
  /// Wether the [Searchable] in [SearchItem] has the [PointedWord]s that are not allowed.
  final bool containsNotAllowed;

  const SearchQueryComparison({
    required this.points,
    required this.hasRequired,
    required this.containsNotAllowed,
  });

  /// For when needing to combine another [SearchQueryComparison]
  /// into this one.
  SearchQueryComparison operator +(SearchQueryComparison other) {
    return SearchQueryComparison(
      points: points + other.points,
      hasRequired: hasRequired || other.hasRequired,
      containsNotAllowed: containsNotAllowed || other.containsNotAllowed
    );
  }
}

/// Defines some pattern that should
/// have some sort of special handling.
class PatternItem {
  const PatternItem({
    required this.name,
    required this.charCode,
    this.charReplacement,
    this.regExpChar,
    this.isCollector = false,
    this.ignoreNextPattern = false,
    this.ignoreNextChar = false,
    this.isSplitter = false,
    this.definesTag = false,
    this.definesRequired = false,
    this.definesNotAllowed = false,
  }):
    assert(isCollector? !(ignoreNextPattern || ignoreNextChar || isSplitter) : true),
    assert(ignoreNextPattern || ignoreNextChar || isSplitter ?
      (isCollector ? 1 : 0) +
      (ignoreNextPattern ? 1 : 0) +
      (ignoreNextChar ? 1 : 0) +
      (isSplitter ? 1 : 0) +
      (definesTag ? 1 : 0) +
      (definesRequired ? 1 : 0) +
      (definesNotAllowed ? 1 : 0)
      == 1 : true,
    ),
    isSpecial = isCollector || ignoreNextPattern || ignoreNextChar || isSplitter || definesTag || definesRequired || definesNotAllowed,
    expBound = charReplacement != null && regExpChar != null
  ;

  /// What to refer this pattern as.
  final String name;
  /// The pattern to this [PatternItem].
  final int charCode;
  /// Defines some char to replace [charCode]
  /// when inserting this pattern into a
  /// [PointedWord].
  ///
  /// This value is ignored when [isSpecial] is
  /// true. However, this value is used if this
  /// pattern is found while in a [isCollector].
  final String? charReplacement;
  /// The regular expression value pattern
  /// to replace this pattern with.
  ///
  /// This value is ignored when [expBound]
  /// is false.
  final String? regExpChar;
  /// Defines that this pattern should
  /// replace all [charReplacement]s with
  /// [regExpChar] when [QueryEngine.getExpression]
  /// is called.
  final bool expBound;

  /// Defines that this pattern is the
  /// start and end block of a collector.
  ///
  /// A collector is something used to collect
  /// a block of text. In this block of text,
  /// most patterns are ignored.
  ///
  /// The patterns that are not ignored are the
  /// ones that are defined as [ignoreNextPattern]
  /// or [ignoreNextChar].
  /// However, the patterns that define a [charReplacement]
  /// will have that inserted instead of [charCode].
  final bool isCollector;

  /// Defines that the next character
  /// should be ignored for all potential processing
  /// and should be placed into a text block.
  ///
  /// This can be used inside of an [isCollector].
  final bool ignoreNextPattern;

  /// Defines that the next character
  /// should be ignored for all potential processing
  /// and should not be placed into a text block.
  ///
  /// This can be used inside of an [isCollector].
  final bool ignoreNextChar;

  /// Signals the end of some text block
  /// that will be put as a [PointedWord].
  final bool isSplitter;

  /// Defines that text that comes after this pattern
  /// should be set to [SearchQuery.tags].
  final bool definesTag;

  /// Defines that text that comes after this pattern
  /// should be set to [SearchQuery.require].
  final bool definesRequired;

  /// Defines that text that comes after this pattern
  /// should be set to [SearchQuery.cannot].
  final bool definesNotAllowed;

  /// Defines that, during [QueryBuilder]'s
  /// build process, there is some special
  /// handling that will take place.
  final bool isSpecial;

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

  @override
  bool operator ==(Object other) {
    return other is PatternItem &&
    charCode == other.charCode &&
    expBound == other.expBound;
  }

  @override
  int get hashCode => Object.hash(charCode, expBound);

  // Prebuilt:

  /// The ignore [PatternItem] is used to ignore
  /// the the proceeding [PatternItem] using `\`.
  static const PatternItem ignore = PatternItem(
    name: 'Ignore Special',
    charCode: 0x005C,
    ignoreNextPattern: true,
  );
  /// The hold [PatternItem] is used to define
  /// a collector that uses `"` as it's pattern
  /// and defaults to putting the block of text
  /// between two `"` should be required.
  static const PatternItem hold = PatternItem(
    name: 'Mention',
    charCode: 0x0022,
    isCollector: true,
    definesRequired: true,
  );
  /// The space [PatternItem] is used to define
  /// that the a space is a splitter.
  static const PatternItem space = PatternItem(
    name: 'Space',
    charCode: 0x0020,
    isSplitter: true,
  );
  /// The cannot have [PatternItem] is used to define
  /// that some text the proceeds it should be not allowed.
  /// Uses `-` as it's pattern.
  static const PatternItem cannotHave = PatternItem(
    name: 'Cannot Mention',
    charCode: 0x002D, // -
    definesNotAllowed: true,
  );
  /// The tag [PatternItem] is used to define
  /// that some text the proceeds it should be a tag.
  /// Uses `#` as it's pattern.
  static const PatternItem tag = PatternItem(
    name: 'Tag',
    charCode: 0x0023,
    definesTag: true,
  );
  /// the wild [PatternItem] is used to define
  /// that the regular expression wildcard
  /// should be used at this position in
  /// the search text.
  static const PatternItem wild = PatternItem(
    name: 'Wildcard',
    charCode: 0x002A, // *
    charReplacement: ' @-Wild- ',
    regExpChar: r'.',
  );
}

class QueryBuilder {
  QueryBuilder();

  /// Wether to ignore a [PatternItem].
  bool ignoreSpecial = false;
  /// Wether to ignore a call to [onChar].
  bool ignoreChar = false;
  /// Wether [current] should be appended to
  /// [optional] or [require] when true. Or,
  /// when false, to append to [cannot].
  bool add = true;
  /// The current [PatternItem] that
  /// has [PatternItem.isCollector] set to
  /// true.
  PatternItem? holdItem;
  /// Wether the build process is holding
  /// back on executions for [PatternItem]s.
  bool get inHold => holdItem != null;
  /// Defines that if [add] then append to [require].
  bool asRequired = false;
  /// Wether [current] should be appended to
  /// [tag] when true. Or, when false,
  /// to follow what [add] is.
  bool asTag = false;

  /// Wether to add the char that was processed by
  /// [onChar] to [current].
  bool toCurrent = true;
  /// The currently defined text block
  /// that will be set to a [PointedWord]
  /// in [append].
  String current = '';
  /// The [PointedWord]s of a query
  /// that are defined as wanted,
  /// but not needed.
  List<PointedWord> optional = [];
  /// The [PointedWord]s of a query
  /// that are defined as not allowed.
  List<PointedWord> cannot = [];
  /// The [PointedWord]s of a query
  /// that are defined as needed.
  List<PointedWord> require = [];
  /// The [PointedWord]s of a query
  /// that are defined as tags.
  List<PointedWord> tags = [];

  /// Clears all fields on this class
  /// and sets them back to default values.
  void reset() {
    ignoreSpecial = false;
    ignoreChar = false;
    add = true;
    holdItem = null;
    asTag = false;
    asRequired = false;

    toCurrent = true;
    current = '';
    optional = [];
    cannot = [];
    require = [];
    tags = [];
  }

  void append(QueryEngine engine) {
    if (current.isNotEmpty) {
      var point = PointedWord(
        word: current,
        points: add?engine.defaultPoints:-engine.defaultPoints,
      );
      if (asTag) {
        tags.add(point);
      } else if (add) {
        if (asRequired) {
          require.add(point);
        } else {
          optional.add(point);
        }
      } else {
        cannot.add(point);
      }
    }
    asTag = false;
    asRequired = false;
    add = true;
    current = '';
  }

  /// Handles the processing of [pat].
  void action(QueryEngine engine, PatternItem pat) {
    if (pat.ignoreNextChar) {
      ignoreChar = true;
    } else if (pat.ignoreNextPattern) {
      ignoreSpecial = true;
    } else if (pat.isCollector) {
      if (inHold) {
        append(engine);
        holdItem = null;
      } else {
        holdItem = pat;
      }
    } else if (pat.isSplitter) {
      append(engine);
    }
    if (pat.definesNotAllowed) {
      add = false;
    } else if (pat.definesTag) {
      asTag = true;
    }  else if (pat.definesRequired) {
      asRequired = true;
    }
    if (pat.isSpecial) {
      toCurrent = false;
    }
  }

  /// Checks to see if [action] should be
  /// called for [pat].
  bool check(PatternItem pat) {
    if (ignoreSpecial) return false;
    if (
      inHold &&
      !(
        pat.ignoreNextPattern ||
        pat.ignoreNextChar ||
        holdItem == pat
      )
    ) {
      return false;
    }
    return true;
  }

  /// Executes functionality processing on each [charCode]
  /// provided to [call].
  void onChar({
    required QueryEngine engine,
    required int charCode,
  }) {
    toCurrent = true;
    if (ignoreChar) {
      ignoreChar = false;
      return;
    }
    PatternItem? pat = engine.fromCharCode(charCode);
    String charInsert = String.fromCharCode(charCode);
    if (pat != null) {
      if (pat.charReplacement != null) {
        charInsert = pat.charReplacement!;
      }
      if (check(pat)) {
        action(engine, pat);
      }
    }
    if (toCurrent) {
      current = '$current$charInsert';
      ignoreSpecial = false;
    }
  }

  /// Builds a [SearchQuery] with the settings from [engine]
  /// and the query defined from [queryCodeUnits].
  SearchQuery call(QueryEngine engine, List<int> queryCodeUnits) {
    reset();

    for (int charCode in queryCodeUnits) {
      onChar(engine: engine, charCode: charCode);
    }
    append(engine);

    return SearchQuery(
      engine: engine,
      optional: optional,
      require: require,
      cannot: cannot,
      tags: tags,
    );
  }
}

class QueryEngine {
  /// Creates a new [QueryEngine] with the provided
  /// [PatternItem]s.
  ///
  /// The order of [patternItems] doesn't matter.
  ///
  /// Uses [builder] to build out each new [SearchQuery].
  QueryEngine({
    required Iterable<PatternItem> patternItems,
    this.defaultPoints = 1,
    QueryBuilder? builder,
  }):
    _items = { for (var elm in patternItems) elm.charCode : elm },
    _builder = builder ?? QueryBuilder()
  ;

  final Map<int, PatternItem> _items;
  Iterable<PatternItem> get values => _items.values;

  /// Defines the number of points to give to
  /// each [PointedWord] that is generated
  /// for a [SearchQuery].
  final int defaultPoints;
  final QueryBuilder _builder;

  /// Attempts to search for [charCode] in [values].
  ///
  /// Returns `null` if no [PatternItem] has it's
  /// pattern as [charCode].
  PatternItem? fromCharCode(final int charCode) {
    return _items[charCode];
  }

  /// builds the Regular Expression of a search word pattern.
  RegExp getExpression(String searchWordPattern) {
    String pattern = RegExp.escape(searchWordPattern);
    for (var item in values) {
      if (item.expBound) {
        pattern = pattern.replaceAll(item.charReplacement!, item.regExpChar!);
      }
    }
    return RegExp(pattern, caseSensitive: false);
  }

  /// Builds a [SearchQuery] with the
  /// settings in this [QueryEngine]
  /// and to process [query] as the
  /// [SearchQuery]'s [PointedWord]s.
  SearchQuery buildQuery(String query) {
    return _builder(this, query.codeUnits);
  }

  /// Defines the a default to [QueryEngine]
  /// where it's [PatternItem]s are the ones
  /// that are defined as static fields in [PatternItem].
  static final QueryEngine defaultEngine = QueryEngine(
    patternItems: [
      PatternItem.ignore,
      PatternItem.hold,
      PatternItem.space,
      PatternItem.cannotHave,
      PatternItem.tag,
      PatternItem.wild,
    ],
  );
}

class SearchQuery extends Iteration<PointedWord> {
  factory SearchQuery.from(
    String query,
    {
      QueryEngine? engine,
    }
  ) {
    engine ??= QueryEngine.defaultEngine;
    return engine.buildQuery(query);
  }

  SearchQuery({
    required this.engine,
    required this.optional,
    required this.require,
    required this.cannot,
    required this.tags,
  }):super();

  final QueryEngine engine;

  /// The [PointedWord]s of a query
  /// that are defined as wanted,
  /// but not needed.
  final List<PointedWord> optional;
  /// The [PointedWord]s of a query
  /// that are defined as not allowed.
  final List<PointedWord> cannot;
  /// The [PointedWord]s of a query
  /// that are defined as needed.
  final List<PointedWord> require;
  /// The [PointedWord]s of a query
  /// that are defined as tags.
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
  math.Points getPoints(String s, List<PointedWord> words) {
    int ocrs = 0;
    int posPoints = 0;
    int negPoints = 0;
    int modifier = 0;
    for (var word in words) {
      var exp = engine.getExpression(word.word);
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
  /// An optional check that is preformed in [validityCheck]
  /// before it would have returned `true`.
  final bool Function(SearchItem)? itemCheck;

  Search({
    required this.query,
    this.itemCheck,
  });

  Search.from(
    String query,
    {
      QueryEngine? engine,
      this.itemCheck,
    }
  ): query = SearchQuery.from(query, engine: engine);

  /// Checks to see if some [item] is allowed to be
  /// returned by [search].
  ///
  /// Will always return false if item contains anything not allowed or
  /// doesn't have all the required stuff.
  ///
  /// Uses [itemCheck] before saying that [item] is valid.
  bool validityCheck(SearchItem item) {
    if (item.comparison.containsNotAllowed || !item.comparison.hasRequired) return false;
    if (itemCheck != null) return itemCheck!(item);
    return true;
  }

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

      if (!validityCheck(seim)) {
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