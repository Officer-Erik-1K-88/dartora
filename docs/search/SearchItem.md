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

Constructs a new instance of `SearchItem`.



#### `if (action != null) action(this);`

Constructs a new instance of `SearchItem`.



#### `return String.fromCharCode(charCode);`

Constructs a new instance of `SearchItem`.



#### `Object.hash(charCode, expBound);`

Constructs a new instance of `SearchItem`.



#### `PatternItem(
    name: 'Ignore Special',
    charCode: 0x005C,
    ignoreNextPattern: true,
  );`

Constructs a new instance of `SearchItem`.



#### `PatternItem(
    name: 'Mention',
    charCode: 0x0022,
    isCollector: true,
    definesRequired: true,
  );`

Constructs a new instance of `SearchItem`.



#### `PatternItem(
    name: 'Space',
    charCode: 0x0020,
    isSplitter: true,
  );`

Constructs a new instance of `SearchItem`.



#### `PatternItem(
    name: 'Cannot Mention',
    charCode: 0x002D, // -
    definesNotAllowed: true,
  );`

Constructs a new instance of `SearchItem`.



#### `PatternItem(
    name: 'Tag',
    charCode: 0x0023,
    definesTag: true,
  );`

Constructs a new instance of `SearchItem`.



#### `PatternItem(
    name: 'Wildcard',
    charCode: 0x002A, // *
    charReplacement: ' @-Wild- ',
    regExpChar: r'.',
  );`

Constructs a new instance of `SearchItem`.



#### `QueryBuilder();`

Constructs a new instance of `SearchItem`.



#### `PointedWord(
        word: current,
        points: add?engine.defaultPoints:-engine.defaultPoints,
      );`

Constructs a new instance of `SearchItem`.



#### `tags.add(point);`

Constructs a new instance of `SearchItem`.



#### `require.add(point);`

Constructs a new instance of `SearchItem`.



#### `optional.add(point);`

Constructs a new instance of `SearchItem`.



#### `cannot.add(point);`

Constructs a new instance of `SearchItem`.



#### `append(engine);`

Constructs a new instance of `SearchItem`.



#### `append(engine);`

Constructs a new instance of `SearchItem`.



#### `engine.fromCharCode(charCode);`

Constructs a new instance of `SearchItem`.



#### `String.fromCharCode(charCode);`

Constructs a new instance of `SearchItem`.



#### `action(engine, pat);`

Constructs a new instance of `SearchItem`.



#### `reset();`

Constructs a new instance of `SearchItem`.



#### `onChar(engine: engine, charCode: charCode);`

Constructs a new instance of `SearchItem`.



#### `append(engine);`

Constructs a new instance of `SearchItem`.



#### `return SearchQuery(
      engine: engine,
      optional: optional,
      require: require,
      cannot: cannot,
      tags: tags,
    );`

Constructs a new instance of `SearchItem`.



#### `QueryBuilder()
  ;`

Constructs a new instance of `SearchItem`.



#### `RegExp.escape(searchWordPattern);`

Constructs a new instance of `SearchItem`.



#### `pattern.replaceAll(item.charReplacement!, item.regExpChar!);`

Constructs a new instance of `SearchItem`.



#### `return RegExp(pattern, caseSensitive: false);`

Constructs a new instance of `SearchItem`.



#### `return _builder(this, query.codeUnits);`

Constructs a new instance of `SearchItem`.



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

Constructs a new instance of `SearchItem`.



#### `return engine.buildQuery(query);`

Constructs a new instance of `SearchItem`.



#### `super();`

Constructs a new instance of `SearchItem`.



#### `IteratorBuild(
    elementAt: sourceGet,
    endIndex: sourceLength
  );`

Constructs a new instance of `SearchItem`.



#### `return optional.elementAt(sourceIndex);`

Constructs a new instance of `SearchItem`.



#### `return require.elementAt(sourceIndex);`

Constructs a new instance of `SearchItem`.



#### `return cannot.elementAt(sourceIndex);`

Constructs a new instance of `SearchItem`.



#### `return tags.elementAt(sourceIndex);`

Constructs a new instance of `SearchItem`.



#### `Points.empty();`

Constructs a new instance of `SearchItem`.



#### `getPoints(s, require);`

Constructs a new instance of `SearchItem`.



#### `getPoints(s, optional);`

Constructs a new instance of `SearchItem`.



#### `getPoints(s, cannot);`

Constructs a new instance of `SearchItem`.



#### `getPoints(s, tags);`

Constructs a new instance of `SearchItem`.



#### `return SearchQueryComparison(
      points: points,
      hasRequired: hasReq,
      containsNotAllowed: containsNotAllowed,
    );`

Constructs a new instance of `SearchItem`.



#### `engine.getExpression(word.word);`

Constructs a new instance of `SearchItem`.



#### `math.max(math.stepwiseGrowth(occurrences), 1);`

Constructs a new instance of `SearchItem`.



#### `points.abs();`

Constructs a new instance of `SearchItem`.



#### `Points.from(
      positive: posPoints,
      negative: negPoints,
      occurrences: ocrs,
      modifier: modifier,
    );`

Constructs a new instance of `SearchItem`.



#### `SearchQuery.from(query, engine: engine);`

Constructs a new instance of `SearchItem`.



#### `if (itemCheck != null) return itemCheck!(item);`

Constructs a new instance of `SearchItem`.



#### `query.compare(item.title) + query.compare(item.description);`

Constructs a new instance of `SearchItem`.



#### `query.compare(tag.toString(), asTag: tag.isTag);`

Constructs a new instance of `SearchItem`.



#### `compare(item);`

Constructs a new instance of `SearchItem`.



#### `return SearchItem(
      item: item,
      comparison: qc,
    );`

Constructs a new instance of `SearchItem`.



#### `getItem(item);`

Constructs a new instance of `SearchItem`.



#### `search(
          held: item.children.map((child)=>child.item),
          includeChildren: true,
          items: items,
          titleChan: seim.titleChan,
        );`

Constructs a new instance of `SearchItem`.



#### `items.insert(index==-1?items.length:index, seim);`

Constructs a new instance of `SearchItem`.



### Fields

#### `titleChan;`

Stores the value of `titleChan` for this instance of `SearchItem`.



#### `final Searchable item;`

Stores the value of `item` for this instance of `SearchItem`.



#### `final SearchQueryComparison comparison;`

Stores the value of `comparison` for this instance of `SearchItem`.



#### `final String word;`

Stores the value of `word` for this instance of `SearchItem`.



#### `final int points;`

Stores the value of `points` for this instance of `SearchItem`.



#### `return word;`

Stores the value of `word` for this instance of `SearchItem`.



#### `Points points;`

Stores the value of `points` for this instance of `SearchItem`.



#### `final bool hasRequired;`

Stores the value of `hasRequired` for this instance of `SearchItem`.



#### `final bool containsNotAllowed;`

Stores the value of `containsNotAllowed` for this instance of `SearchItem`.



#### `null
  ;`

Stores the value of `null` for this instance of `SearchItem`.



#### `final String name;`

Stores the value of `name` for this instance of `SearchItem`.



#### `final int charCode;`

Stores the value of `charCode` for this instance of `SearchItem`.



#### `charReplacement;`

Stores the value of `charReplacement` for this instance of `SearchItem`.



#### `regExpChar;`

Stores the value of `regExpChar` for this instance of `SearchItem`.



#### `final bool expBound;`

Stores the value of `expBound` for this instance of `SearchItem`.



#### `final bool isCollector;`

Stores the value of `isCollector` for this instance of `SearchItem`.



#### `final bool ignoreNextPattern;`

Stores the value of `ignoreNextPattern` for this instance of `SearchItem`.



#### `final bool ignoreNextChar;`

Stores the value of `ignoreNextChar` for this instance of `SearchItem`.



#### `final bool isSplitter;`

Stores the value of `isSplitter` for this instance of `SearchItem`.



#### `final bool definesTag;`

Stores the value of `definesTag` for this instance of `SearchItem`.



#### `final bool definesRequired;`

Stores the value of `definesRequired` for this instance of `SearchItem`.



#### `final bool definesNotAllowed;`

Stores the value of `definesNotAllowed` for this instance of `SearchItem`.



#### `final bool isSpecial;`

Stores the value of `isSpecial` for this instance of `SearchItem`.



#### `expBound;`

Stores the value of `expBound` for this instance of `SearchItem`.



#### `false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `true;`

Stores the value of `true` for this instance of `SearchItem`.



#### `holdItem;`

Stores the value of `holdItem` for this instance of `SearchItem`.



#### `null;`

Stores the value of `null` for this instance of `SearchItem`.



#### `false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `true;`

Stores the value of `true` for this instance of `SearchItem`.



#### `false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `true;`

Stores the value of `true` for this instance of `SearchItem`.



#### `null;`

Stores the value of `null` for this instance of `SearchItem`.



#### `false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `true;`

Stores the value of `true` for this instance of `SearchItem`.



#### `false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `true;`

Stores the value of `true` for this instance of `SearchItem`.



#### `true;`

Stores the value of `true` for this instance of `SearchItem`.



#### `true;`

Stores the value of `true` for this instance of `SearchItem`.



#### `null;`

Stores the value of `null` for this instance of `SearchItem`.



#### `pat;`

Stores the value of `pat` for this instance of `SearchItem`.



#### `false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `true;`

Stores the value of `true` for this instance of `SearchItem`.



#### `true;`

Stores the value of `true` for this instance of `SearchItem`.



#### `false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `return false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `return false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `return true;`

Stores the value of `true` for this instance of `SearchItem`.



#### `true;`

Stores the value of `true` for this instance of `SearchItem`.



#### `false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `return;`

Stores the value of `return` for this instance of `SearchItem`.



#### `false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `final Map<int, PatternItem> _items;`

Stores the value of `_items` for this instance of `SearchItem`.



#### `values;`

Stores the value of `values` for this instance of `SearchItem`.



#### `final int defaultPoints;`

Stores the value of `defaultPoints` for this instance of `SearchItem`.



#### `final QueryBuilder _builder;`

Stores the value of `_builder` for this instance of `SearchItem`.



#### `defaultEngine;`

Stores the value of `defaultEngine` for this instance of `SearchItem`.



#### `final QueryEngine engine;`

Stores the value of `engine` for this instance of `SearchItem`.



#### `final List<PointedWord> optional;`

Stores the value of `optional` for this instance of `SearchItem`.



#### `final List<PointedWord> cannot;`

Stores the value of `cannot` for this instance of `SearchItem`.



#### `final List<PointedWord> require;`

Stores the value of `require` for this instance of `SearchItem`.



#### `final List<PointedWord> tags;`

Stores the value of `tags` for this instance of `SearchItem`.



#### `length;`

Stores the value of `length` for this instance of `SearchItem`.



#### `length;`

Stores the value of `length` for this instance of `SearchItem`.



#### `length;`

Stores the value of `length` for this instance of `SearchItem`.



#### `length;`

Stores the value of `length` for this instance of `SearchItem`.



#### `true;`

Stores the value of `true` for this instance of `SearchItem`.



#### `false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `length;`

Stores the value of `length` for this instance of `SearchItem`.



#### `cn;`

Stores the value of `cn` for this instance of `SearchItem`.



#### `length;`

Stores the value of `length` for this instance of `SearchItem`.



#### `length;`

Stores the value of `length` for this instance of `SearchItem`.



#### `count;`

Stores the value of `count` for this instance of `SearchItem`.



#### `return percent;`

Stores the value of `percent` for this instance of `SearchItem`.



#### `length;`

Stores the value of `length` for this instance of `SearchItem`.



#### `occurrences;`

Stores the value of `occurrences` for this instance of `SearchItem`.



#### `points;`

Stores the value of `points` for this instance of `SearchItem`.



#### `final SearchQuery query;`

Stores the value of `query` for this instance of `SearchItem`.



#### `itemCheck;`

Stores the value of `itemCheck` for this instance of `SearchItem`.



#### `return false;`

Stores the value of `false` for this instance of `SearchItem`.



#### `return true;`

Stores the value of `true` for this instance of `SearchItem`.



#### `return comparison;`

Stores the value of `comparison` for this instance of `SearchItem`.



#### `title;`

Stores the value of `title` for this instance of `SearchItem`.



#### `continue;`

Stores the value of `continue` for this instance of `SearchItem`.



#### `points
        ;`

Stores the value of `points` for this instance of `SearchItem`.



#### `return items;`

Stores the value of `items` for this instance of `SearchItem`.





### Methods

#### `override
  String toString() {`

Executes the `toString` operation defined in `SearchItem`.



#### `if (check(this)) {`

Executes the `if` operation defined in `SearchItem`.



#### `void reset() {`

Executes the `reset` operation defined in `SearchItem`.



#### `void append(QueryEngine engine) {`

Executes the `append` operation defined in `SearchItem`.



#### `if (current.isNotEmpty) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (asTag) {`

Executes the `if` operation defined in `SearchItem`.



#### `else if (add) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (asRequired) {`

Executes the `if` operation defined in `SearchItem`.



#### `void action(QueryEngine engine, PatternItem pat) {`

Executes the `action` operation defined in `SearchItem`.



#### `if (pat.ignoreNextChar) {`

Executes the `if` operation defined in `SearchItem`.



#### `else if (pat.ignoreNextPattern) {`

Executes the `if` operation defined in `SearchItem`.



#### `else if (pat.isCollector) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (inHold) {`

Executes the `if` operation defined in `SearchItem`.



#### `else if (pat.isSplitter) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (pat.definesNotAllowed) {`

Executes the `if` operation defined in `SearchItem`.



#### `else if (pat.definesTag) {`

Executes the `if` operation defined in `SearchItem`.



#### `else if (pat.definesRequired) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (pat.isSpecial) {`

Executes the `if` operation defined in `SearchItem`.



#### `bool check(PatternItem pat) {`

Executes the `check` operation defined in `SearchItem`.



#### `if (
      inHold &&
      !(
        pat.ignoreNextPattern ||
        pat.ignoreNextChar ||
        holdItem == pat
      )
    ) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (ignoreChar) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (pat != null) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (pat.charReplacement != null) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (check(pat)) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (toCurrent) {`

Executes the `if` operation defined in `SearchItem`.



#### `SearchQuery call(QueryEngine engine, List<int> queryCodeUnits) {`

Executes the `call` operation defined in `SearchItem`.



#### `for (int charCode in queryCodeUnits) {`

Executes the `for` operation defined in `SearchItem`.



#### `fromCharCode(final int charCode) {`

Executes the `fromCharCode` operation defined in `SearchItem`.



#### `RegExp getExpression(String searchWordPattern) {`

Executes the `getExpression` operation defined in `SearchItem`.



#### `for (var item in values) {`

Executes the `for` operation defined in `SearchItem`.



#### `if (item.expBound) {`

Executes the `if` operation defined in `SearchItem`.



#### `SearchQuery buildQuery(String query) {`

Executes the `buildQuery` operation defined in `SearchItem`.



#### `override
  PointedWord sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `SearchItem`.



#### `if (sourceIndex < optional.length) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (sourceIndex < require.length) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (sourceIndex < cannot.length) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (
      type == QueryType.require ||
      type == QueryType.optReq ||
      type == QueryType.reqCnot ||
      type == QueryType.all
    ) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (
      type == QueryType.optional ||
      type == QueryType.optReq ||
      type == QueryType.optCnot ||
      type == QueryType.all
    ) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (
      type == QueryType.cannot ||
      type == QueryType.optCnot ||
      type == QueryType.reqCnot ||
      type == QueryType.all
    ) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (asTag) {`

Executes the `if` operation defined in `SearchItem`.



#### `double getPercent(math.Points points) {`

Executes the `getPercent` operation defined in `SearchItem`.



#### `Points getPoints(String s, List<PointedWord> words) {`

Executes the `getPoints` operation defined in `SearchItem`.



#### `for (var word in words) {`

Executes the `for` operation defined in `SearchItem`.



#### `if (word.points > 0) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (occurrences != 0) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (exp.hasMatch(s)) {`

Executes the `if` operation defined in `SearchItem`.



#### `bool validityCheck(SearchItem item) {`

Executes the `validityCheck` operation defined in `SearchItem`.



#### `SearchQueryComparison compare(Searchable item) {`

Executes the `compare` operation defined in `SearchItem`.



#### `forEach((key, tag) {`

Executes the `forEach` operation defined in `SearchItem`.



#### `if ((tag.isTag && tag.value) || !tag.isTag) {`

Executes the `if` operation defined in `SearchItem`.



#### `SearchItem getItem(Searchable item) {`

Executes the `getItem` operation defined in `SearchItem`.



#### `for (var item in held) {`

Executes the `for` operation defined in `SearchItem`.



#### `if (includeChildren) {`

Executes the `if` operation defined in `SearchItem`.



#### `if (!validityCheck(seim)) {`

Executes the `if` operation defined in `SearchItem`.



#### `indexWhere((si) {`

Executes the `indexWhere` operation defined in `SearchItem`.


