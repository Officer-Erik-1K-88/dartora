# Tags

_No summary provided in source._

_Defined in: `src/search/tag.dart`_

_Import_: `package:dartora/search/tag.dart`

---

### Constructors

#### `Tags(
    this.tags,
  ):
    super(
      map: LinkedHashMap.fromIterable(
        tags,
        key: (tag) =\> tag.name,
        value: (tag) =\> tag,
      ),
    )
  ;`



#### `assert(key == value.name);`



#### `super.set(key, value);`



#### `set(tag.name, tag);`



### Fields

#### `final List\<Tag\> tags;`





### Methods

#### `override
  void set(String key, Tag value) {`



#### `void add(Tag tag) {`


