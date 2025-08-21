import '../../collections.dart';
import '../../math.dart' as math;
import 'searchable.dart';

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