# PatternItem

Defines some pattern that should
have some sort of special handling.

_Defined in: `src/search/searcher.dart`_

_Import_: `package:dartora/search/searcher.dart`

---

### Constructors

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



### Fields

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





### Methods

#### `if (check(this)) {`


