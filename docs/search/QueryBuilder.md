# QueryBuilder

_No summary provided in source._

_Defined in: `src/search/searcher.dart`_

_Import_: `package:dartora/search/searcher.dart`

---

### Constructors

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



### Fields

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





### Methods

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



#### `SearchQuery call(QueryEngine engine, List\<int\> queryCodeUnits) {`



#### `for (int charCode in queryCodeUnits) {`


