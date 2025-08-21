# Search

_No summary provided in source._

_Defined in: `src/search/searcher.dart`_

_Import_: `package:dartora/search/searcher.dart`

---

### Constructors

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
          held: item.children.map((child)=\>child.item),
          includeChildren: true,
          items: items,
          titleChan: seim.titleChan,
        );`



#### `items.insert(index==-1?items.length:index, seim);`



### Fields

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

#### `bool validityCheck(SearchItem item) {`



#### `SearchQueryComparison compare(Searchable item) {`



#### `forEach((key, tag) {`



#### `if ((tag.isTag && tag.value) || !tag.isTag) {`



#### `SearchItem getItem(Searchable item) {`



#### `for (var item in held) {`



#### `if (includeChildren) {`



#### `if (!validityCheck(seim)) {`



#### `indexWhere((si) {`


