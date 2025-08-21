# QueryEngine

_No summary provided in source._

_Defined in: `src/search/searcher.dart`_

_Import_: `package:dartora/search/searcher.dart`

---

### Constructors

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



### Fields

#### `final Map\<int, PatternItem\> _items;`



#### `values;`



#### `final int defaultPoints;`



#### `final QueryBuilder _builder;`





### Methods

#### `fromCharCode(final int charCode) {`



#### `RegExp getExpression(String searchWordPattern) {`



#### `for (var item in values) {`



#### `if (item.expBound) {`



#### `SearchQuery buildQuery(String query) {`


