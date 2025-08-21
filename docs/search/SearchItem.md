# SearchItem

Defines the [Searchable] item
that was found in [Search].

_Defined in: `src/search/searcher.dart`_

_Import_: `package:dartora/search/searcher.dart`


---


### Constructors

#### `return SearchQueryComparison(
      points: points + other.points,
      hasRequired: hasRequired || other.hasRequired,
      containsNotAllowed: containsNotAllowed || other.containsNotAllowed
    );`



#### `if (action != null) action(this);`



#### `return String.fromCharCode(charCode);`



#### `Object.hash(charCode, expBound);`



#### `PatternItem(
    name: 'Ignore Special',
    charCode: 0x005C,
    ignoreNextPattern: true,
  );`



#### `PatternItem(
    name: 'Mention',
    charCode: 0x0022,
    isCollector: true,
    definesRequired: true,
  );`



#### `PatternItem(
    name: 'Space',
    charCode: 0x0020,
    isSplitter: true,
  );`



#### `PatternItem(
    name: 'Cannot Mention',
    charCode: 0x002D, // -
    definesNotAllowed: true,
  );`



#### `PatternItem(
    name: 'Tag',
    charCode: 0x0023,
    definesTag: true,
  );`



#### `PatternItem(
    name: 'Wildcard',
    charCode: 0x002A, // *
    charReplacement: ' @-Wild- ',
    regExpChar: r'.',
  );`



#### `QueryBuilder();`



#### `PointedWord(
        word: current,
        points: add?engine.defaultPoints:-engine.defaultPoints,
      );`



#### `tags.add(point);`



#### `require.add(point);`



#### `optional.add(point);`



#### `cannot.add(point);`



#### `append(engine);`



#### `append(engine);`



#### `engine.fromCharCode(charCode);`



#### `String.fromCharCode(charCode);`



#### `action(engine, pat);`



#### `reset();`



#### `onChar(engine: engine, charCode: charCode);`



#### `append(engine);`



#### `return SearchQuery(
      engine: engine,
      optional: optional,
      require: require,
      cannot: cannot,
      tags: tags,
    );`



#### `QueryBuilder()
  ;`



#### `RegExp.escape(searchWordPattern);`



#### `pattern.replaceAll(item.charReplacement!, item.regExpChar!);`



#### `return RegExp(pattern, caseSensitive: false);`



#### `return _builder(this, query.codeUnits);`



#### `QueryEngine(
    patternItems: [
      PatternItem.ignore,
      PatternItem.hold,
      PatternItem.space,
      PatternItem.cannotHave,
      PatternItem.tag,
      PatternItem.wild,
    ],
  );`



#### `return engine.buildQuery(query);`



#### `super();`



#### `IteratorBuild(
    elementAt: sourceGet,
    endIndex: sourceLength
  );`



#### `return optional.elementAt(sourceIndex);`



#### `return require.elementAt(sourceIndex);`



#### `return cannot.elementAt(sourceIndex);`



#### `return tags.elementAt(sourceIndex);`



#### `Points.empty();`



#### `getPoints(s, require);`



#### `getPoints(s, optional);`



#### `getPoints(s, cannot);`



#### `getPoints(s, tags);`



#### `return SearchQueryComparison(
      points: points,
      hasRequired: hasReq,
      containsNotAllowed: containsNotAllowed,
    );`



#### `engine.getExpression(word.word);`



#### `math.max(math.stepwiseGrowth(occurrences), 1);`



#### `points.abs();`



#### `Points.from(
      positive: posPoints,
      negative: negPoints,
      occurrences: ocrs,
      modifier: modifier,
    );`



#### `SearchQuery.from(query, engine: engine);`



#### `if (itemCheck != null) return itemCheck!(item);`



#### `query.compare(item.title) + query.compare(item.description);`



#### `query.compare(tag.toString(), asTag: tag.isTag);`



#### `compare(item);`



#### `return SearchItem(
      item: item,
      comparison: qc,
    );`



#### `getItem(item);`



#### `search(
          held: item.children.map((child)=>child.item),
          includeChildren: true,
          items: items,
          titleChan: seim.titleChan,
        );`



#### `items.insert(index==-1?items.length:index, seim);`



### Fields

#### `titleChan;`



#### `final Searchable item;`



#### `final SearchQueryComparison comparison;`



#### `final String word;`



#### `final int points;`



#### `return word;`



#### `Points points;`



#### `final bool hasRequired;`



#### `final bool containsNotAllowed;`



#### `null
  ;`



#### `final String name;`



#### `final int charCode;`



#### `charReplacement;`



#### `regExpChar;`



#### `final bool expBound;`



#### `final bool isCollector;`



#### `final bool ignoreNextPattern;`



#### `final bool ignoreNextChar;`



#### `final bool isSplitter;`



#### `final bool definesTag;`



#### `final bool definesRequired;`



#### `final bool definesNotAllowed;`



#### `final bool isSpecial;`



#### `expBound;`



#### `false;`



#### `false;`



#### `true;`



#### `holdItem;`



#### `null;`



#### `false;`



#### `false;`



#### `true;`



#### `false;`



#### `false;`



#### `true;`



#### `null;`



#### `false;`



#### `false;`



#### `true;`



#### `false;`



#### `false;`



#### `true;`



#### `true;`



#### `true;`



#### `null;`



#### `pat;`



#### `false;`



#### `true;`



#### `true;`



#### `false;`



#### `return false;`



#### `return false;`



#### `return true;`



#### `true;`



#### `false;`



#### `return;`



#### `false;`



#### `final Map<int, PatternItem> _items;`



#### `values;`



#### `final int defaultPoints;`



#### `final QueryBuilder _builder;`



#### `defaultEngine;`



#### `final QueryEngine engine;`



#### `final List<PointedWord> optional;`



#### `final List<PointedWord> cannot;`



#### `final List<PointedWord> require;`



#### `final List<PointedWord> tags;`



#### `length;`



#### `length;`



#### `length;`



#### `length;`



#### `true;`



#### `false;`



#### `length;`



#### `cn;`



#### `length;`



#### `length;`



#### `count;`



#### `return percent;`



#### `length;`



#### `occurrences;`



#### `points;`



#### `final SearchQuery query;`



#### `itemCheck;`



#### `return false;`



#### `return true;`



#### `return comparison;`



#### `title;`



#### `continue;`



#### `points
        ;`



#### `return items;`





### Methods

#### `override
  String toString() {`



#### `if (check(this)) {`



#### `void reset() {`



#### `void append(QueryEngine engine) {`



#### `if (current.isNotEmpty) {`



#### `if (asTag) {`



#### `else if (add) {`



#### `if (asRequired) {`



#### `void action(QueryEngine engine, PatternItem pat) {`



#### `if (pat.ignoreNextChar) {`



#### `else if (pat.ignoreNextPattern) {`



#### `else if (pat.isCollector) {`



#### `if (inHold) {`



#### `else if (pat.isSplitter) {`



#### `if (pat.definesNotAllowed) {`



#### `else if (pat.definesTag) {`



#### `else if (pat.definesRequired) {`



#### `if (pat.isSpecial) {`



#### `bool check(PatternItem pat) {`



#### `if (
      inHold &&
      !(
        pat.ignoreNextPattern ||
        pat.ignoreNextChar ||
        holdItem == pat
      )
    ) {`



#### `if (ignoreChar) {`



#### `if (pat != null) {`



#### `if (pat.charReplacement != null) {`



#### `if (check(pat)) {`



#### `if (toCurrent) {`



#### `SearchQuery call(QueryEngine engine, List<int> queryCodeUnits) {`



#### `for (int charCode in queryCodeUnits) {`



#### `fromCharCode(final int charCode) {`



#### `RegExp getExpression(String searchWordPattern) {`



#### `for (var item in values) {`



#### `if (item.expBound) {`



#### `SearchQuery buildQuery(String query) {`



#### `override
  PointedWord sourceGet(int sourceIndex) {`



#### `if (sourceIndex < optional.length) {`



#### `if (sourceIndex < require.length) {`



#### `if (sourceIndex < cannot.length) {`



#### `if (
      type == QueryType.require ||
      type == QueryType.optReq ||
      type == QueryType.reqCnot ||
      type == QueryType.all
    ) {`



#### `if (
      type == QueryType.optional ||
      type == QueryType.optReq ||
      type == QueryType.optCnot ||
      type == QueryType.all
    ) {`



#### `if (
      type == QueryType.cannot ||
      type == QueryType.optCnot ||
      type == QueryType.reqCnot ||
      type == QueryType.all
    ) {`



#### `if (asTag) {`



#### `double getPercent(math.Points points) {`



#### `Points getPoints(String s, List<PointedWord> words) {`



#### `for (var word in words) {`



#### `if (word.points > 0) {`



#### `if (occurrences != 0) {`



#### `if (exp.hasMatch(s)) {`



#### `bool validityCheck(SearchItem item) {`



#### `SearchQueryComparison compare(Searchable item) {`



#### `forEach((key, tag) {`



#### `if ((tag.isTag && tag.value) || !tag.isTag) {`



#### `SearchItem getItem(Searchable item) {`



#### `for (var item in held) {`



#### `if (includeChildren) {`



#### `if (!validityCheck(seim)) {`



#### `indexWhere((si) {`


