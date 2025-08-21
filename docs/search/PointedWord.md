# PointedWord

Defines some search keyword.

_Defined in: `src/search/searcher.dart`_

_Import_: `package:dartora/search/searcher.dart`


---


### Constructors

#### `return SearchQueryComparison(
      points: points + other.points,
      hasRequired: hasRequired || other.hasRequired,
      containsNotAllowed: containsNotAllowed || other.containsNotAllowed
    );`

Constructs a new instance of `PointedWord`.



#### `if (action != null) action(this);`

Constructs a new instance of `PointedWord`.



#### `return String.fromCharCode(charCode);`

Constructs a new instance of `PointedWord`.



#### `Object.hash(charCode, expBound);`

Constructs a new instance of `PointedWord`.



#### `PatternItem(
    name: 'Ignore Special',
    charCode: 0x005C,
    ignoreNextPattern: true,
  );`

Constructs a new instance of `PointedWord`.



#### `PatternItem(
    name: 'Mention',
    charCode: 0x0022,
    isCollector: true,
    definesRequired: true,
  );`

Constructs a new instance of `PointedWord`.



#### `PatternItem(
    name: 'Space',
    charCode: 0x0020,
    isSplitter: true,
  );`

Constructs a new instance of `PointedWord`.



#### `PatternItem(
    name: 'Cannot Mention',
    charCode: 0x002D, // -
    definesNotAllowed: true,
  );`

Constructs a new instance of `PointedWord`.



#### `PatternItem(
    name: 'Tag',
    charCode: 0x0023,
    definesTag: true,
  );`

Constructs a new instance of `PointedWord`.



#### `PatternItem(
    name: 'Wildcard',
    charCode: 0x002A, // *
    charReplacement: ' @-Wild- ',
    regExpChar: r'.',
  );`

Constructs a new instance of `PointedWord`.



#### `QueryBuilder();`

Constructs a new instance of `PointedWord`.



#### `PointedWord(
        word: current,
        points: add?engine.defaultPoints:-engine.defaultPoints,
      );`

Constructs a new instance of `PointedWord`.



#### `tags.add(point);`

Constructs a new instance of `PointedWord`.



#### `require.add(point);`

Constructs a new instance of `PointedWord`.



#### `optional.add(point);`

Constructs a new instance of `PointedWord`.



#### `cannot.add(point);`

Constructs a new instance of `PointedWord`.



#### `append(engine);`

Constructs a new instance of `PointedWord`.



#### `append(engine);`

Constructs a new instance of `PointedWord`.



#### `engine.fromCharCode(charCode);`

Constructs a new instance of `PointedWord`.



#### `String.fromCharCode(charCode);`

Constructs a new instance of `PointedWord`.



#### `action(engine, pat);`

Constructs a new instance of `PointedWord`.



#### `reset();`

Constructs a new instance of `PointedWord`.



#### `onChar(engine: engine, charCode: charCode);`

Constructs a new instance of `PointedWord`.



#### `append(engine);`

Constructs a new instance of `PointedWord`.



#### `return SearchQuery(
      engine: engine,
      optional: optional,
      require: require,
      cannot: cannot,
      tags: tags,
    );`

Constructs a new instance of `PointedWord`.



#### `QueryBuilder()
  ;`

Constructs a new instance of `PointedWord`.



#### `RegExp.escape(searchWordPattern);`

Constructs a new instance of `PointedWord`.



#### `pattern.replaceAll(item.charReplacement!, item.regExpChar!);`

Constructs a new instance of `PointedWord`.



#### `return RegExp(pattern, caseSensitive: false);`

Constructs a new instance of `PointedWord`.



#### `return _builder(this, query.codeUnits);`

Constructs a new instance of `PointedWord`.



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

Constructs a new instance of `PointedWord`.



#### `return engine.buildQuery(query);`

Constructs a new instance of `PointedWord`.



#### `super();`

Constructs a new instance of `PointedWord`.



#### `IteratorBuild(
    elementAt: sourceGet,
    endIndex: sourceLength
  );`

Constructs a new instance of `PointedWord`.



#### `return optional.elementAt(sourceIndex);`

Constructs a new instance of `PointedWord`.



#### `return require.elementAt(sourceIndex);`

Constructs a new instance of `PointedWord`.



#### `return cannot.elementAt(sourceIndex);`

Constructs a new instance of `PointedWord`.



#### `return tags.elementAt(sourceIndex);`

Constructs a new instance of `PointedWord`.



#### `Points.empty();`

Constructs a new instance of `PointedWord`.



#### `getPoints(s, require);`

Constructs a new instance of `PointedWord`.



#### `getPoints(s, optional);`

Constructs a new instance of `PointedWord`.



#### `getPoints(s, cannot);`

Constructs a new instance of `PointedWord`.



#### `getPoints(s, tags);`

Constructs a new instance of `PointedWord`.



#### `return SearchQueryComparison(
      points: points,
      hasRequired: hasReq,
      containsNotAllowed: containsNotAllowed,
    );`

Constructs a new instance of `PointedWord`.



#### `engine.getExpression(word.word);`

Constructs a new instance of `PointedWord`.



#### `math.max(math.stepwiseGrowth(occurrences), 1);`

Constructs a new instance of `PointedWord`.



#### `points.abs();`

Constructs a new instance of `PointedWord`.



#### `Points.from(
      positive: posPoints,
      negative: negPoints,
      occurrences: ocrs,
      modifier: modifier,
    );`

Constructs a new instance of `PointedWord`.



#### `SearchQuery.from(query, engine: engine);`

Constructs a new instance of `PointedWord`.



#### `if (itemCheck != null) return itemCheck!(item);`

Constructs a new instance of `PointedWord`.



#### `query.compare(item.title) + query.compare(item.description);`

Constructs a new instance of `PointedWord`.



#### `query.compare(tag.toString(), asTag: tag.isTag);`

Constructs a new instance of `PointedWord`.



#### `compare(item);`

Constructs a new instance of `PointedWord`.



#### `return SearchItem(
      item: item,
      comparison: qc,
    );`

Constructs a new instance of `PointedWord`.



#### `getItem(item);`

Constructs a new instance of `PointedWord`.



#### `search(
          held: item.children.map((child)=>child.item),
          includeChildren: true,
          items: items,
          titleChan: seim.titleChan,
        );`

Constructs a new instance of `PointedWord`.



#### `items.insert(index==-1?items.length:index, seim);`

Constructs a new instance of `PointedWord`.



### Fields

#### `final String word;`

Stores the value of `word` for this instance of `PointedWord`.



#### `final int points;`

Stores the value of `points` for this instance of `PointedWord`.



#### `return word;`

Stores the value of `word` for this instance of `PointedWord`.



#### `Points points;`

Stores the value of `points` for this instance of `PointedWord`.



#### `final bool hasRequired;`

Stores the value of `hasRequired` for this instance of `PointedWord`.



#### `final bool containsNotAllowed;`

Stores the value of `containsNotAllowed` for this instance of `PointedWord`.



#### `null
  ;`

Stores the value of `null` for this instance of `PointedWord`.



#### `final String name;`

Stores the value of `name` for this instance of `PointedWord`.



#### `final int charCode;`

Stores the value of `charCode` for this instance of `PointedWord`.



#### `charReplacement;`

Stores the value of `charReplacement` for this instance of `PointedWord`.



#### `regExpChar;`

Stores the value of `regExpChar` for this instance of `PointedWord`.



#### `final bool expBound;`

Stores the value of `expBound` for this instance of `PointedWord`.



#### `final bool isCollector;`

Stores the value of `isCollector` for this instance of `PointedWord`.



#### `final bool ignoreNextPattern;`

Stores the value of `ignoreNextPattern` for this instance of `PointedWord`.



#### `final bool ignoreNextChar;`

Stores the value of `ignoreNextChar` for this instance of `PointedWord`.



#### `final bool isSplitter;`

Stores the value of `isSplitter` for this instance of `PointedWord`.



#### `final bool definesTag;`

Stores the value of `definesTag` for this instance of `PointedWord`.



#### `final bool definesRequired;`

Stores the value of `definesRequired` for this instance of `PointedWord`.



#### `final bool definesNotAllowed;`

Stores the value of `definesNotAllowed` for this instance of `PointedWord`.



#### `final bool isSpecial;`

Stores the value of `isSpecial` for this instance of `PointedWord`.



#### `expBound;`

Stores the value of `expBound` for this instance of `PointedWord`.



#### `false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `true;`

Stores the value of `true` for this instance of `PointedWord`.



#### `holdItem;`

Stores the value of `holdItem` for this instance of `PointedWord`.



#### `null;`

Stores the value of `null` for this instance of `PointedWord`.



#### `false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `true;`

Stores the value of `true` for this instance of `PointedWord`.



#### `false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `true;`

Stores the value of `true` for this instance of `PointedWord`.



#### `null;`

Stores the value of `null` for this instance of `PointedWord`.



#### `false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `true;`

Stores the value of `true` for this instance of `PointedWord`.



#### `false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `true;`

Stores the value of `true` for this instance of `PointedWord`.



#### `true;`

Stores the value of `true` for this instance of `PointedWord`.



#### `true;`

Stores the value of `true` for this instance of `PointedWord`.



#### `null;`

Stores the value of `null` for this instance of `PointedWord`.



#### `pat;`

Stores the value of `pat` for this instance of `PointedWord`.



#### `false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `true;`

Stores the value of `true` for this instance of `PointedWord`.



#### `true;`

Stores the value of `true` for this instance of `PointedWord`.



#### `false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `return false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `return false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `return true;`

Stores the value of `true` for this instance of `PointedWord`.



#### `true;`

Stores the value of `true` for this instance of `PointedWord`.



#### `false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `return;`

Stores the value of `return` for this instance of `PointedWord`.



#### `false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `final Map<int, PatternItem> _items;`

Stores the value of `_items` for this instance of `PointedWord`.



#### `values;`

Stores the value of `values` for this instance of `PointedWord`.



#### `final int defaultPoints;`

Stores the value of `defaultPoints` for this instance of `PointedWord`.



#### `final QueryBuilder _builder;`

Stores the value of `_builder` for this instance of `PointedWord`.



#### `defaultEngine;`

Stores the value of `defaultEngine` for this instance of `PointedWord`.



#### `final QueryEngine engine;`

Stores the value of `engine` for this instance of `PointedWord`.



#### `final List<PointedWord> optional;`

Stores the value of `optional` for this instance of `PointedWord`.



#### `final List<PointedWord> cannot;`

Stores the value of `cannot` for this instance of `PointedWord`.



#### `final List<PointedWord> require;`

Stores the value of `require` for this instance of `PointedWord`.



#### `final List<PointedWord> tags;`

Stores the value of `tags` for this instance of `PointedWord`.



#### `length;`

Stores the value of `length` for this instance of `PointedWord`.



#### `length;`

Stores the value of `length` for this instance of `PointedWord`.



#### `length;`

Stores the value of `length` for this instance of `PointedWord`.



#### `length;`

Stores the value of `length` for this instance of `PointedWord`.



#### `true;`

Stores the value of `true` for this instance of `PointedWord`.



#### `false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `length;`

Stores the value of `length` for this instance of `PointedWord`.



#### `cn;`

Stores the value of `cn` for this instance of `PointedWord`.



#### `length;`

Stores the value of `length` for this instance of `PointedWord`.



#### `length;`

Stores the value of `length` for this instance of `PointedWord`.



#### `count;`

Stores the value of `count` for this instance of `PointedWord`.



#### `return percent;`

Stores the value of `percent` for this instance of `PointedWord`.



#### `length;`

Stores the value of `length` for this instance of `PointedWord`.



#### `occurrences;`

Stores the value of `occurrences` for this instance of `PointedWord`.



#### `points;`

Stores the value of `points` for this instance of `PointedWord`.



#### `final SearchQuery query;`

Stores the value of `query` for this instance of `PointedWord`.



#### `itemCheck;`

Stores the value of `itemCheck` for this instance of `PointedWord`.



#### `return false;`

Stores the value of `false` for this instance of `PointedWord`.



#### `return true;`

Stores the value of `true` for this instance of `PointedWord`.



#### `return comparison;`

Stores the value of `comparison` for this instance of `PointedWord`.



#### `title;`

Stores the value of `title` for this instance of `PointedWord`.



#### `continue;`

Stores the value of `continue` for this instance of `PointedWord`.



#### `points
        ;`

Stores the value of `points` for this instance of `PointedWord`.



#### `return items;`

Stores the value of `items` for this instance of `PointedWord`.





### Methods

#### `override
  String toString() {`

Executes the `toString` operation defined in `PointedWord`.



#### `if (check(this)) {`

Executes the `if` operation defined in `PointedWord`.



#### `void reset() {`

Executes the `reset` operation defined in `PointedWord`.



#### `void append(QueryEngine engine) {`

Executes the `append` operation defined in `PointedWord`.



#### `if (current.isNotEmpty) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (asTag) {`

Executes the `if` operation defined in `PointedWord`.



#### `else if (add) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (asRequired) {`

Executes the `if` operation defined in `PointedWord`.



#### `void action(QueryEngine engine, PatternItem pat) {`

Executes the `action` operation defined in `PointedWord`.



#### `if (pat.ignoreNextChar) {`

Executes the `if` operation defined in `PointedWord`.



#### `else if (pat.ignoreNextPattern) {`

Executes the `if` operation defined in `PointedWord`.



#### `else if (pat.isCollector) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (inHold) {`

Executes the `if` operation defined in `PointedWord`.



#### `else if (pat.isSplitter) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (pat.definesNotAllowed) {`

Executes the `if` operation defined in `PointedWord`.



#### `else if (pat.definesTag) {`

Executes the `if` operation defined in `PointedWord`.



#### `else if (pat.definesRequired) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (pat.isSpecial) {`

Executes the `if` operation defined in `PointedWord`.



#### `bool check(PatternItem pat) {`

Executes the `check` operation defined in `PointedWord`.



#### `if (
      inHold &&
      !(
        pat.ignoreNextPattern ||
        pat.ignoreNextChar ||
        holdItem == pat
      )
    ) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (ignoreChar) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (pat != null) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (pat.charReplacement != null) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (check(pat)) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (toCurrent) {`

Executes the `if` operation defined in `PointedWord`.



#### `SearchQuery call(QueryEngine engine, List<int> queryCodeUnits) {`

Executes the `call` operation defined in `PointedWord`.



#### `for (int charCode in queryCodeUnits) {`

Executes the `for` operation defined in `PointedWord`.



#### `fromCharCode(final int charCode) {`

Executes the `fromCharCode` operation defined in `PointedWord`.



#### `RegExp getExpression(String searchWordPattern) {`

Executes the `getExpression` operation defined in `PointedWord`.



#### `for (var item in values) {`

Executes the `for` operation defined in `PointedWord`.



#### `if (item.expBound) {`

Executes the `if` operation defined in `PointedWord`.



#### `SearchQuery buildQuery(String query) {`

Executes the `buildQuery` operation defined in `PointedWord`.



#### `override
  PointedWord sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `PointedWord`.



#### `if (sourceIndex < optional.length) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (sourceIndex < require.length) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (sourceIndex < cannot.length) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (
      type == QueryType.require ||
      type == QueryType.optReq ||
      type == QueryType.reqCnot ||
      type == QueryType.all
    ) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (
      type == QueryType.optional ||
      type == QueryType.optReq ||
      type == QueryType.optCnot ||
      type == QueryType.all
    ) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (
      type == QueryType.cannot ||
      type == QueryType.optCnot ||
      type == QueryType.reqCnot ||
      type == QueryType.all
    ) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (asTag) {`

Executes the `if` operation defined in `PointedWord`.



#### `double getPercent(math.Points points) {`

Executes the `getPercent` operation defined in `PointedWord`.



#### `Points getPoints(String s, List<PointedWord> words) {`

Executes the `getPoints` operation defined in `PointedWord`.



#### `for (var word in words) {`

Executes the `for` operation defined in `PointedWord`.



#### `if (word.points > 0) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (occurrences != 0) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (exp.hasMatch(s)) {`

Executes the `if` operation defined in `PointedWord`.



#### `bool validityCheck(SearchItem item) {`

Executes the `validityCheck` operation defined in `PointedWord`.



#### `SearchQueryComparison compare(Searchable item) {`

Executes the `compare` operation defined in `PointedWord`.



#### `forEach((key, tag) {`

Executes the `forEach` operation defined in `PointedWord`.



#### `if ((tag.isTag && tag.value) || !tag.isTag) {`

Executes the `if` operation defined in `PointedWord`.



#### `SearchItem getItem(Searchable item) {`

Executes the `getItem` operation defined in `PointedWord`.



#### `for (var item in held) {`

Executes the `for` operation defined in `PointedWord`.



#### `if (includeChildren) {`

Executes the `if` operation defined in `PointedWord`.



#### `if (!validityCheck(seim)) {`

Executes the `if` operation defined in `PointedWord`.



#### `indexWhere((si) {`

Executes the `indexWhere` operation defined in `PointedWord`.


