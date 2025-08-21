# Iteration

_No summary provided in source._

_Defined in: `src/collections/iteration.dart`_

_Import_: `package:dartora/collections/iteration.dart`

---

### Constructors

#### `IndexBaseIterator(iterable: this);`



#### `numbers.forEach(print);`



#### `action(elementAt(i));`



#### `elementAt(0) : throw StateError("IterationBuild has no elements.");`



#### `elementAt(length-1) : throw StateError("IterationBuild has no elements.");`



#### `throw StateError("IterationBuild has more or less than one element.");`



#### `return elementAt(index);`



#### `RangeError.checkNotNegative(index, "index");`



#### `return sourceGet(offset(index));`



#### `throw IndexError.withLength(
      sourceIndex,
      sourceIndex - skipCount,
      indexable: this,
      name: "index",
    );`



#### `return indexWhere((elm) =\> elm == element, start);`



#### `return lastIndexWhere((elm) =\> elm == element, start);`



#### `for (int i=start ?? (length-1);`



#### `elementAt(i);`



#### `if (orElse != null) return orElse();`



#### `throw StateError('No elements in IterationList meet test.');`



#### `elementAt(i);`



#### `if (orElse != null) return orElse();`



#### `throw StateError('No elements in IterationItem meet test.');`



#### `elementAt(i);`



#### `if (ret != null) throw StateError('Too many elements in IterationItem meet test.');`



#### `if (orElse != null) return orElse();`



#### `throw StateError('No elements in IterationList meet test.');`



#### `elementAt(i);`



#### `elementAt(i);`



#### `return any((e) =\> element == e);`



#### `if (s.isEmpty) return elm.toString();`



#### `combine(value, elementAt(i));`



#### `combine(value, elementAt(i));`



#### `return IterationItem(
      source: toList().map\<T\>(toElement),
    );`



#### `return IterationItem(
      source: toList().followedBy(other),
    );`



#### `return IterationItem(
      source: toList().expand\<T\>(toElements),
    );`



#### `return IterationItem(
      source: toList().reversed,
    );`



#### `assert(start \>= 0 && end \>= start && length \>= end);`



#### `return IterationItem(
      source: this,
      startIndex: start,
      indexTake: length - end,
    );`



#### `assert(start \>= 0 && length \>= start && (end == null || (end \>= start && length \>= end)));`



#### `newI.add(elementAt(i));`



#### `return IterationItem(
      source: newI,
    );`



#### `return IterationItem(
      source: this,
      startIndex: count,
    );`



#### `return IterationItem(
      source: this,
      indexTake: count,
    );`



#### `elementAt(i);`



#### `newI.add(elm);`



#### `return IterationItem(
      source: newI,
    );`



#### `return IterationItem(
      source: toList().whereType\<T\>(),
    );`



#### `return IterationItem(
      source: toList().cast\<R\>(),
    );`



#### `return List.of(this, growable: growable);`



#### `return Set.of(this);`



#### `LinkedHashMap();`



#### `elementAt(i);`



### Fields

#### `startIndex;`



#### `Iterator\<E\> get sourceIterator;`



#### `sourceIterator;`



#### `return count;`



#### `indexTake;`



#### `length;`



#### `iterator;`



#### `sourceIndex;`



#### `current;`



#### `start;`



#### `length;`



#### `return i;`



#### `return i;`



#### `length;`



#### `return elm;`



#### `return elm;`



#### `ret;`



#### `length;`



#### `elm;`



#### `return ret;`



#### `length;`



#### `return true;`



#### `return false;`



#### `length;`



#### `return false;`



#### `return true;`



#### `return false;`



#### `first;`



#### `length;`



#### `return value;`



#### `initialValue;`



#### `length;`



#### `return value;`



#### `length;`



#### `start;`



#### `end;`



#### `length;`



#### `length;`



#### `length;`



#### `length;`



#### `return ret;`





### Methods

#### `override
  int offset(int index) {`



#### `while (it.moveNext()) {`



#### `override
  void forEach(void Function(E element) action) {`



#### `override
  E elementAt(int index) {`



#### `override
  E sourceGet(int sourceIndex) {`



#### `while (iterator.moveNext()) {`



#### `override
  int indexOf(E element, [int start = 0]) {`



#### `override
  int indexWhere(bool Function(E element) test, [int start = 0]) {`



#### `if (test(elementAt(i))) {`



#### `override
  int lastIndexOf(E element, [int? start]) {`



#### `override
  int lastIndexWhere(bool Function(E element) test, [int? start]) {`



#### `if (test(elementAt(i))) {`



#### `if (test(elm)) {`



#### `if (test(elm)) {`



#### `if (test(elm)) {`



#### `override
  bool any(bool Function(E element) test) {`



#### `if (test(elm)) {`



#### `override
  bool every(bool Function(E element) test) {`



#### `if (!test(elm)) {`



#### `override
  bool contains(Object? element) {`



#### `if (element is E) {`



#### `override
  String join([String separator = ""]) {`



#### `return fold("", (s, elm) {`



#### `override
  E reduce(E Function(E value, E element) combine) {`



#### `T Function(T previousValue, E element) combine) {`



#### `T Function(E e) toElement) {`



#### `override
  Iteration\<E\> followedBy(Iterable\<E\> other) {`



#### `Iterable\<T\> Function(E element) toElements) {`



#### `override
  Iteration\<E\> getRange(int start, int end) {`



#### `override
  Iteration\<E\> sublist(int start, [int? end]) {`



#### `override
  Iteration\<E\> skip(int count) {`



#### `override
  Iteration\<E\> skipWhile(bool Function(E value) test) {`



#### `i\<length; i++) {
      if (!test(elementAt(i))) {
        count = i;
        break;
      }
    }
    return skip(count);
  }
  
  @override
  Iteration\<E\> take(int count) {`



#### `override
  Iteration\<E\> takeWhile(bool Function(E value) test) {`



#### `i\<length; i++) {
      if (!test(elementAt(i))) {
        count = i;
        break;
      }
    }
    return take(length - count);
  }
  
  @override
  Iteration\<E\> where(bool Function(E element) test) {`



#### `if (test(elm)) {`



#### `override
  Set\<E\> toSet() {`



#### `override
  Map\<int, E\> asMap() {`


