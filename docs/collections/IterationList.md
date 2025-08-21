# IterationList

_No summary provided in source._

_Defined in: `src/collections/iteration.dart`_

_Import_: `package:dartora/collections/iteration.dart`

---

### Constructors

#### `List.from(iterable)
  ;`



#### `_listSource.clear();`



#### `return _listSource.elementAt(sourceIndex);`



#### `_listSource.shuffle(random);`



#### `_listSource.insert(offset(index), iterable.single);`



#### `_listSource.insertAll(offset(index), iterable);`



#### `offset(length);`



#### `_listSource.replaceRange(start, end, replacements);`



#### `_listSource.removeRange(start, end);`



#### `removeAll.sort();`



#### `_listSource.removeAt(index-removed);`



#### `_listSource.indexOf(element, offset(start));`



#### `_listSource.indexWhere(test, offset(start));`



#### `_listSource.lastIndexOf(element, offset(start ?? length));`



#### `_listSource.lastIndexWhere(test, offset(start ?? length));`



#### `return IterationList(
      iterable: _listSource.map(toElement),
      startIndex: startIndex,
      indexTake: indexTake,
    );`



#### `assert(start \>= 0 && end \>= start && length \>= end);`



#### `_listSource.getRange(offset(start), offset(end));`



#### `return IterationList(
      iterable: newI,
    );`



#### `assert(start \>= 0 && length \>= start && (end == null || (end \>= start && length \>= end)));`



#### `_listSource.sublist(offset(start), offset(end ?? length));`



#### `return IterationList(
      iterable: newI,
    );`



#### `return IterationList(
      iterable: _listSource,
      startIndex: startIndex+count,
      indexTake: indexTake,
    );`



#### `return IterationList(
      iterable: _listSource,
      startIndex: startIndex,
      indexTake: indexTake+count,
    );`



#### `return IterationList(
      iterable: _listSource.whereType\<T\>(),
      startIndex: startIndex,
      indexTake: indexTake,
    );`



#### `return IterationList(
      iterable: _listSource.cast\<R\>(),
      startIndex: startIndex,
      indexTake: indexTake,
    );`



### Fields

#### `final List\<E\> _listSource;`



#### `final Iterable\<E\> source;`



#### `iterator;`



#### `length;`



#### `newLength;`



#### `element;`



#### `startIndex;`



#### `length;`



#### `start;`



#### `removed;`



#### `return count;`



#### `startIndex;`



#### `startIndex;`



#### `startIndex;`



#### `startIndex;`





### Methods

#### `override
  set sourceLength(int newLength) {`



#### `if (newLength == 0) {`



#### `override
  void sourceLengthBeenModified(int amount) {`



#### `override
  E sourceGet(int sourceIndex) {`



#### `override
  void shuffle([Random? random]) {`



#### `override
  void set(int index, E element) {`



#### `override
  void sourceInsertAll(int index, Iterable\<E\> iterable) {`



#### `if (iterable.length == 1) {`



#### `if (_listSource.remove(value)) {`



#### `if (start != null || end != null || replacements != null) {`



#### `if (replacements != null) {`



#### `if (removeAll != null) {`



#### `for (var index in removeAll) {`



#### `override
  int indexOf(E element, [int start = 0]) {`



#### `override
  int indexWhere(bool Function(E element) test, [int start = 0]) {`



#### `override
  int lastIndexOf(E element, [int? start]) {`



#### `override
  int lastIndexWhere(bool Function(E element) test, [int? start]) {`



#### `T Function(E e) toElement) {`



#### `override
  IterationBase\<E\> getRange(int start, int end) {`



#### `override
  IterationBase\<E\> sublist(int start, [int? end]) {`



#### `override
  Iteration\<E\> skip(int count) {`



#### `override
  Iteration\<E\> take(int count) {`


