# SearchQueryComparison

The comparison between the [SearchQuery] and
some [Searchable].

_Defined in: `src/search/searcher.dart`_

_Import_: `package:dartora/search/searcher.dart`


---


### Constructors

#### `return SearchQueryComparison(
      points: points + other.points,
      hasRequired: hasRequired || other.hasRequired,
      containsNotAllowed: containsNotAllowed || other.containsNotAllowed
    );`

Constructs a new instance of `SearchQueryComparison`.



#### `if (action != null) action(this);`

Constructs a new instance of `SearchQueryComparison`.



#### `return String.fromCharCode(charCode);`

Constructs a new instance of `SearchQueryComparison`.



#### `Object.hash(charCode, expBound);`

Constructs a new instance of `SearchQueryComparison`.



#### `PatternItem(
    name: 'Ignore Special',
    charCode: 0x005C,
    ignoreNextPattern: true,
  );`

Constructs a new instance of `SearchQueryComparison`.



#### `PatternItem(
    name: 'Mention',
    charCode: 0x0022,
    isCollector: true,
    definesRequired: true,
  );`

Constructs a new instance of `SearchQueryComparison`.



#### `PatternItem(
    name: 'Space',
    charCode: 0x0020,
    isSplitter: true,
  );`

Constructs a new instance of `SearchQueryComparison`.



#### `PatternItem(
    name: 'Cannot Mention',
    charCode: 0x002D, // -
    definesNotAllowed: true,
  );`

Constructs a new instance of `SearchQueryComparison`.



#### `PatternItem(
    name: 'Tag',
    charCode: 0x0023,
    definesTag: true,
  );`

Constructs a new instance of `SearchQueryComparison`.



#### `PatternItem(
    name: 'Wildcard',
    charCode: 0x002A, // *
    charReplacement: ' @-Wild- ',
    regExpChar: r'.',
  );`

Constructs a new instance of `SearchQueryComparison`.



#### `QueryBuilder();`

Constructs a new instance of `SearchQueryComparison`.



#### `PointedWord(
        word: current,
        points: add?engine.defaultPoints:-engine.defaultPoints,
      );`

Constructs a new instance of `SearchQueryComparison`.



#### `tags.add(point);`

Constructs a new instance of `SearchQueryComparison`.



#### `require.add(point);`

Constructs a new instance of `SearchQueryComparison`.



#### `optional.add(point);`

Constructs a new instance of `SearchQueryComparison`.



#### `cannot.add(point);`

Constructs a new instance of `SearchQueryComparison`.



#### `append(engine);`

Constructs a new instance of `SearchQueryComparison`.



#### `append(engine);`

Constructs a new instance of `SearchQueryComparison`.



#### `engine.fromCharCode(charCode);`

Constructs a new instance of `SearchQueryComparison`.



#### `String.fromCharCode(charCode);`

Constructs a new instance of `SearchQueryComparison`.



#### `action(engine, pat);`

Constructs a new instance of `SearchQueryComparison`.



#### `reset();`

Constructs a new instance of `SearchQueryComparison`.



#### `onChar(engine: engine, charCode: charCode);`

Constructs a new instance of `SearchQueryComparison`.



#### `append(engine);`

Constructs a new instance of `SearchQueryComparison`.



#### `return SearchQuery(
      engine: engine,
      optional: optional,
      require: require,
      cannot: cannot,
      tags: tags,
    );`

Constructs a new instance of `SearchQueryComparison`.



#### `QueryBuilder()
  ;`

Constructs a new instance of `SearchQueryComparison`.



#### `RegExp.escape(searchWordPattern);`

Constructs a new instance of `SearchQueryComparison`.



#### `pattern.replaceAll(item.charReplacement!, item.regExpChar!);`

Constructs a new instance of `SearchQueryComparison`.



#### `return RegExp(pattern, caseSensitive: false);`

Constructs a new instance of `SearchQueryComparison`.



#### `return _builder(this, query.codeUnits);`

Constructs a new instance of `SearchQueryComparison`.



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

Constructs a new instance of `SearchQueryComparison`.



#### `return engine.buildQuery(query);`

Constructs a new instance of `SearchQueryComparison`.



#### `super();`

Constructs a new instance of `SearchQueryComparison`.



#### `IteratorBuild(
    elementAt: sourceGet,
    endIndex: sourceLength
  );`

Constructs a new instance of `SearchQueryComparison`.



#### `return optional.elementAt(sourceIndex);`

Constructs a new instance of `SearchQueryComparison`.



#### `return require.elementAt(sourceIndex);`

Constructs a new instance of `SearchQueryComparison`.



#### `return cannot.elementAt(sourceIndex);`

Constructs a new instance of `SearchQueryComparison`.



#### `return tags.elementAt(sourceIndex);`

Constructs a new instance of `SearchQueryComparison`.



#### `Points.empty();`

Constructs a new instance of `SearchQueryComparison`.



#### `getPoints(s, require);`

Constructs a new instance of `SearchQueryComparison`.



#### `getPoints(s, optional);`

Constructs a new instance of `SearchQueryComparison`.



#### `getPoints(s, cannot);`

Constructs a new instance of `SearchQueryComparison`.



#### `getPoints(s, tags);`

Constructs a new instance of `SearchQueryComparison`.



#### `return SearchQueryComparison(
      points: points,
      hasRequired: hasReq,
      containsNotAllowed: containsNotAllowed,
    );`

Constructs a new instance of `SearchQueryComparison`.



#### `engine.getExpression(word.word);`

Constructs a new instance of `SearchQueryComparison`.



#### `math.max(math.stepwiseGrowth(occurrences), 1);`

Constructs a new instance of `SearchQueryComparison`.



#### `points.abs();`

Constructs a new instance of `SearchQueryComparison`.



#### `Points.from(
      positive: posPoints,
      negative: negPoints,
      occurrences: ocrs,
      modifier: modifier,
    );`

Constructs a new instance of `SearchQueryComparison`.



#### `SearchQuery.from(query, engine: engine);`

Constructs a new instance of `SearchQueryComparison`.



#### `if (itemCheck != null) return itemCheck!(item);`

Constructs a new instance of `SearchQueryComparison`.



#### `query.compare(item.title) + query.compare(item.description);`

Constructs a new instance of `SearchQueryComparison`.



#### `query.compare(tag.toString(), asTag: tag.isTag);`

Constructs a new instance of `SearchQueryComparison`.



#### `compare(item);`

Constructs a new instance of `SearchQueryComparison`.



#### `return SearchItem(
      item: item,
      comparison: qc,
    );`

Constructs a new instance of `SearchQueryComparison`.



#### `getItem(item);`

Constructs a new instance of `SearchQueryComparison`.



#### `search(
          held: item.children.map((child)=>child.item),
          includeChildren: true,
          items: items,
          titleChan: seim.titleChan,
        );`

Constructs a new instance of `SearchQueryComparison`.



#### `items.insert(index==-1?items.length:index, seim);`

Constructs a new instance of `SearchQueryComparison`.



### Fields

#### `Points points;`

Stores the value of `points` for this instance of `SearchQueryComparison`.



#### `final bool hasRequired;`

Stores the value of `hasRequired` for this instance of `SearchQueryComparison`.



#### `final bool containsNotAllowed;`

Stores the value of `containsNotAllowed` for this instance of `SearchQueryComparison`.



#### `null
  ;`

Stores the value of `null` for this instance of `SearchQueryComparison`.



#### `final String name;`

Stores the value of `name` for this instance of `SearchQueryComparison`.



#### `final int charCode;`

Stores the value of `charCode` for this instance of `SearchQueryComparison`.



#### `charReplacement;`

Stores the value of `charReplacement` for this instance of `SearchQueryComparison`.



#### `regExpChar;`

Stores the value of `regExpChar` for this instance of `SearchQueryComparison`.



#### `final bool expBound;`

Stores the value of `expBound` for this instance of `SearchQueryComparison`.



#### `final bool isCollector;`

Stores the value of `isCollector` for this instance of `SearchQueryComparison`.



#### `final bool ignoreNextPattern;`

Stores the value of `ignoreNextPattern` for this instance of `SearchQueryComparison`.



#### `final bool ignoreNextChar;`

Stores the value of `ignoreNextChar` for this instance of `SearchQueryComparison`.



#### `final bool isSplitter;`

Stores the value of `isSplitter` for this instance of `SearchQueryComparison`.



#### `final bool definesTag;`

Stores the value of `definesTag` for this instance of `SearchQueryComparison`.



#### `final bool definesRequired;`

Stores the value of `definesRequired` for this instance of `SearchQueryComparison`.



#### `final bool definesNotAllowed;`

Stores the value of `definesNotAllowed` for this instance of `SearchQueryComparison`.



#### `final bool isSpecial;`

Stores the value of `isSpecial` for this instance of `SearchQueryComparison`.



#### `expBound;`

Stores the value of `expBound` for this instance of `SearchQueryComparison`.



#### `false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `true;`

Stores the value of `true` for this instance of `SearchQueryComparison`.



#### `holdItem;`

Stores the value of `holdItem` for this instance of `SearchQueryComparison`.



#### `null;`

Stores the value of `null` for this instance of `SearchQueryComparison`.



#### `false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `true;`

Stores the value of `true` for this instance of `SearchQueryComparison`.



#### `false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `true;`

Stores the value of `true` for this instance of `SearchQueryComparison`.



#### `null;`

Stores the value of `null` for this instance of `SearchQueryComparison`.



#### `false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `true;`

Stores the value of `true` for this instance of `SearchQueryComparison`.



#### `false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `true;`

Stores the value of `true` for this instance of `SearchQueryComparison`.



#### `true;`

Stores the value of `true` for this instance of `SearchQueryComparison`.



#### `true;`

Stores the value of `true` for this instance of `SearchQueryComparison`.



#### `null;`

Stores the value of `null` for this instance of `SearchQueryComparison`.



#### `pat;`

Stores the value of `pat` for this instance of `SearchQueryComparison`.



#### `false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `true;`

Stores the value of `true` for this instance of `SearchQueryComparison`.



#### `true;`

Stores the value of `true` for this instance of `SearchQueryComparison`.



#### `false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `return false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `return false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `return true;`

Stores the value of `true` for this instance of `SearchQueryComparison`.



#### `true;`

Stores the value of `true` for this instance of `SearchQueryComparison`.



#### `false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `return;`

Stores the value of `return` for this instance of `SearchQueryComparison`.



#### `false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `final Map<int, PatternItem> _items;`

Stores the value of `_items` for this instance of `SearchQueryComparison`.



#### `values;`

Stores the value of `values` for this instance of `SearchQueryComparison`.



#### `final int defaultPoints;`

Stores the value of `defaultPoints` for this instance of `SearchQueryComparison`.



#### `final QueryBuilder _builder;`

Stores the value of `_builder` for this instance of `SearchQueryComparison`.



#### `defaultEngine;`

Stores the value of `defaultEngine` for this instance of `SearchQueryComparison`.



#### `final QueryEngine engine;`

Stores the value of `engine` for this instance of `SearchQueryComparison`.



#### `final List<PointedWord> optional;`

Stores the value of `optional` for this instance of `SearchQueryComparison`.



#### `final List<PointedWord> cannot;`

Stores the value of `cannot` for this instance of `SearchQueryComparison`.



#### `final List<PointedWord> require;`

Stores the value of `require` for this instance of `SearchQueryComparison`.



#### `final List<PointedWord> tags;`

Stores the value of `tags` for this instance of `SearchQueryComparison`.



#### `length;`

Stores the value of `length` for this instance of `SearchQueryComparison`.



#### `length;`

Stores the value of `length` for this instance of `SearchQueryComparison`.



#### `length;`

Stores the value of `length` for this instance of `SearchQueryComparison`.



#### `length;`

Stores the value of `length` for this instance of `SearchQueryComparison`.



#### `true;`

Stores the value of `true` for this instance of `SearchQueryComparison`.



#### `false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `length;`

Stores the value of `length` for this instance of `SearchQueryComparison`.



#### `cn;`

Stores the value of `cn` for this instance of `SearchQueryComparison`.



#### `length;`

Stores the value of `length` for this instance of `SearchQueryComparison`.



#### `length;`

Stores the value of `length` for this instance of `SearchQueryComparison`.



#### `count;`

Stores the value of `count` for this instance of `SearchQueryComparison`.



#### `return percent;`

Stores the value of `percent` for this instance of `SearchQueryComparison`.



#### `length;`

Stores the value of `length` for this instance of `SearchQueryComparison`.



#### `occurrences;`

Stores the value of `occurrences` for this instance of `SearchQueryComparison`.



#### `points;`

Stores the value of `points` for this instance of `SearchQueryComparison`.



#### `final SearchQuery query;`

Stores the value of `query` for this instance of `SearchQueryComparison`.



#### `itemCheck;`

Stores the value of `itemCheck` for this instance of `SearchQueryComparison`.



#### `return false;`

Stores the value of `false` for this instance of `SearchQueryComparison`.



#### `return true;`

Stores the value of `true` for this instance of `SearchQueryComparison`.



#### `return comparison;`

Stores the value of `comparison` for this instance of `SearchQueryComparison`.



#### `title;`

Stores the value of `title` for this instance of `SearchQueryComparison`.



#### `continue;`

Stores the value of `continue` for this instance of `SearchQueryComparison`.



#### `points
        ;`

Stores the value of `points` for this instance of `SearchQueryComparison`.



#### `return items;`

Stores the value of `items` for this instance of `SearchQueryComparison`.





### Methods

#### `if (check(this)) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `void reset() {`

Executes the `reset` operation defined in `SearchQueryComparison`.



#### `void append(QueryEngine engine) {`

Executes the `append` operation defined in `SearchQueryComparison`.



#### `if (current.isNotEmpty) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (asTag) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `else if (add) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (asRequired) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `void action(QueryEngine engine, PatternItem pat) {`

Executes the `action` operation defined in `SearchQueryComparison`.



#### `if (pat.ignoreNextChar) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `else if (pat.ignoreNextPattern) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `else if (pat.isCollector) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (inHold) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `else if (pat.isSplitter) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (pat.definesNotAllowed) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `else if (pat.definesTag) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `else if (pat.definesRequired) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (pat.isSpecial) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `bool check(PatternItem pat) {`

Executes the `check` operation defined in `SearchQueryComparison`.



#### `if (
      inHold &&
      !(
        pat.ignoreNextPattern ||
        pat.ignoreNextChar ||
        holdItem == pat
      )
    ) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (ignoreChar) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (pat != null) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (pat.charReplacement != null) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (check(pat)) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (toCurrent) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `SearchQuery call(QueryEngine engine, List<int> queryCodeUnits) {`

Executes the `call` operation defined in `SearchQueryComparison`.



#### `for (int charCode in queryCodeUnits) {`

Executes the `for` operation defined in `SearchQueryComparison`.



#### `fromCharCode(final int charCode) {`

Executes the `fromCharCode` operation defined in `SearchQueryComparison`.



#### `RegExp getExpression(String searchWordPattern) {`

Executes the `getExpression` operation defined in `SearchQueryComparison`.



#### `for (var item in values) {`

Executes the `for` operation defined in `SearchQueryComparison`.



#### `if (item.expBound) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `SearchQuery buildQuery(String query) {`

Executes the `buildQuery` operation defined in `SearchQueryComparison`.



#### `override
  PointedWord sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `SearchQueryComparison`.



#### `if (sourceIndex < optional.length) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (sourceIndex < require.length) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (sourceIndex < cannot.length) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (
      type == QueryType.require ||
      type == QueryType.optReq ||
      type == QueryType.reqCnot ||
      type == QueryType.all
    ) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (
      type == QueryType.optional ||
      type == QueryType.optReq ||
      type == QueryType.optCnot ||
      type == QueryType.all
    ) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (
      type == QueryType.cannot ||
      type == QueryType.optCnot ||
      type == QueryType.reqCnot ||
      type == QueryType.all
    ) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (asTag) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `double getPercent(math.Points points) {`

Executes the `getPercent` operation defined in `SearchQueryComparison`.



#### `Points getPoints(String s, List<PointedWord> words) {`

Executes the `getPoints` operation defined in `SearchQueryComparison`.



#### `for (var word in words) {`

Executes the `for` operation defined in `SearchQueryComparison`.



#### `if (word.points > 0) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (occurrences != 0) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (exp.hasMatch(s)) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `bool validityCheck(SearchItem item) {`

Executes the `validityCheck` operation defined in `SearchQueryComparison`.



#### `SearchQueryComparison compare(Searchable item) {`

Executes the `compare` operation defined in `SearchQueryComparison`.



#### `forEach((key, tag) {`

Executes the `forEach` operation defined in `SearchQueryComparison`.



#### `if ((tag.isTag && tag.value) || !tag.isTag) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `SearchItem getItem(Searchable item) {`

Executes the `getItem` operation defined in `SearchQueryComparison`.



#### `for (var item in held) {`

Executes the `for` operation defined in `SearchQueryComparison`.



#### `if (includeChildren) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `if (!validityCheck(seim)) {`

Executes the `if` operation defined in `SearchQueryComparison`.



#### `indexWhere((si) {`

Executes the `indexWhere` operation defined in `SearchQueryComparison`.


