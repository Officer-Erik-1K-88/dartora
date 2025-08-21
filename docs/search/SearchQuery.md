# SearchQuery

_No summary provided in source._

_Defined in: `src/search/searcher.dart`_

_Import_: `package:dartora/search/searcher.dart`

---

### Constructors

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



### Fields

#### `defaultEngine;`



#### `final QueryEngine engine;`



#### `final List\<PointedWord\> optional;`



#### `final List\<PointedWord\> cannot;`



#### `final List\<PointedWord\> require;`



#### `final List\<PointedWord\> tags;`



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





### Methods

#### `override
  PointedWord sourceGet(int sourceIndex) {`



#### `if (sourceIndex \< optional.length) {`



#### `if (sourceIndex \< require.length) {`



#### `if (sourceIndex \< cannot.length) {`



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



#### `Points getPoints(String s, List\<PointedWord\> words) {`



#### `for (var word in words) {`



#### `if (word.points \> 0) {`



#### `if (occurrences != 0) {`



#### `if (exp.hasMatch(s)) {`


