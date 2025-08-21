# IterationBase

_No summary provided in source._

_Defined in: `src/collections/iteration.dart`_

_Import_: `package:dartora/collections/iteration.dart`

---

### Constructors

#### `set sourceLength(int newLength);`



#### `void sourceLengthBeenModified(int amount);`



#### `abs();`



#### `clear();`



#### `Random();`



#### `return (a as Comparable).compareTo(b);`



#### `throw ArgumentError(
          'Elements must be Comparable if no compare function is provided.');`



#### `Left side of pivot1
      dualPivotQuickSort(left, less - 1);`



#### `Between pivot1 and pivot2
      dualPivotQuickSort(less + 1, great - 1);`



#### `Right side of pivot2
      dualPivotQuickSort(great + 1, right);`



#### `dualPivotQuickSort(0, length - 1);`



#### `insert(length, element);`



#### `insertAll(length, iterable);`



#### `insertAll(index, [element]);`



#### `throw IndexError.withLength(index, length);`



#### `sourceInsertAll(offset(index), iterable);`



#### `sourceLengthBeenModified(iterable.length);`



#### `void sourceInsertAll(int index, Iterable\<E\> iterable);`



#### `set(index, value);`



#### `set(0, value);`



#### `set(length-1, value);`



#### `void set(int index, E element);`



#### `assert(iterable.length \< (length - index));`



#### `set(index+i, iterable.elementAt(i));`



#### `assert(
      start \>= 0 &&
      end \>= start &&
      length \>= end &&
      (iterable.length-skipCount) == (end - start)
    );`



#### `set(i, iterable.elementAt(j));`



#### `assert(start \>= 0 && end \>= start && length \>= end);`



#### `assert(fillValue != null || null is E);`



#### `set(i, fillValue as E);`



#### `removeAction(value:value);`



#### `sourceLengthBeenModified(-remd);`



#### `IndexError.check(index, length);`



#### `elementAt(index);`



#### `removeAction(removeAll: [index]);`



#### `sourceLengthBeenModified(-remd);`



#### `throw StateError('No element at index $index was removed.');`



#### `return removeAt(length-1);`



#### `assert(start \>= 0 && end \>= start && length \>= end);`



#### `removeAction(start: offset(start), end: offset(end));`



#### `sourceLengthBeenModified(-remd);`



#### `elementAt(i);`



#### `indexes.add(offset(i));`



#### `removeAction(removeAll: indexes);`



#### `sourceLengthBeenModified(-remd);`



#### `assert(start \>= 0 && end \>= start && length \>= end);`



#### `removeAction(start: offset(start), end: offset(end), replacements: replacements);`



#### `sourceLengthBeenModified(-remd);`



#### `removeWhere((elm) =\> !test(elm));`



#### `return IterationList(
      iterable: toList().map(toElement),
    );`



#### `toList();`



#### `newI.addAll(other);`



#### `return IterationList(
      iterable: newI,
    );`



#### `toList().expand\<T\>(toElements);`



#### `return IterationList(
      iterable: newI,
    );`



#### `return IterationList(
      iterable: newI,
    );`



#### `return IterationList(
      iterable: newI,
    );`



#### `assert(start \>= 0 && length \>= start && (end == null || (end \>= start && length \>= end)));`



#### `return IterationList(
      iterable: this,
      startIndex: count,
    );`



#### `return IterationList(
      iterable: this,
      indexTake: count,
    );`



#### `return IterationList(
      iterable: toList().whereType\<T\>(),
    );`



#### `return IterationList(
      iterable: toList().cast\<R\>(),
    );`



### Fields

#### `indexTake
  ;`



#### `int _startIndex;`



#### `_startIndex;`



#### `int _indexTake;`



#### `_indexTake;`



#### `newLength;`



#### `return;`



#### `right;`



#### `temp;`



#### `return;`



#### `third;`



#### `third;`



#### `tmp;`



#### `pivot1;`



#### `tmp1;`



#### `pivot2;`



#### `tmp2;`



#### `less;`



#### `great;`



#### `tmp;`



#### `tmp;`



#### `tmp;`



#### `tmp;`



#### `tmp;`



#### `length;`



#### `skipCount;`



#### `start;`



#### `end;`



#### `start;`



#### `end;`



#### `return true;`



#### `return false;`



#### `return removed;`



#### `length;`



#### `other;`



#### `reversed;`



#### `length;`



#### `start;`





### Methods

#### `override
  set length(int newLength) {`



#### `if (newLength != 0) {`



#### `if (newLength \> sourceLength) {`



#### `override
  void shuffle([Random? random]) {`



#### `sort((a, b) {`



#### `override
  void sort([int Function(E a, E b)? compare]) {`



#### `if (a is Comparable && b is Comparable) {`



#### `void dualPivotQuickSort(int left, int right) {`



#### `if (right - left \< threshold) {`



#### `while (j \>= left && compare!(this[j], temp) \> 0) {`



#### `if (compare!(this[m1], this[m2]) \> 0) {`



#### `if (compare(this[k], pivot1) \< 0) {`



#### `else if (compare(this[k], pivot2) \> 0) {`



#### `while (k \< great && compare(this[great], pivot2) \> 0) {`



#### `if (compare(this[k], pivot1) \< 0) {`



#### `if (length \> 1) {`



#### `override
  void add(E element) {`



#### `override
  void addAll(Iterable\<E\> iterable) {`



#### `override
  void insert(int index, E element) {`



#### `override
  void insertAll(int index, Iterable\<E\> iterable) {`



#### `if (index \< 0 || index \> length) {`



#### `override
  set first(E value) {`



#### `override
  set last(E value) {`



#### `override
  void setAll(int index, Iterable\<E\> iterable) {`



#### `override
  void setRange(int start, int end, Iterable\<E\> iterable, [int skipCount = 0]) {`



#### `override
  void fillRange(int start, int end, [E? fillValue]) {`



#### `override
  bool remove(Object? value) {`



#### `if (remd != 0) {`



#### `override
  E removeAt(int index) {`



#### `if (remd != 0) {`



#### `override
  E removeLast() {`



#### `override
  void removeRange(int start, int end) {`



#### `if (remd != 0) {`



#### `override
  void removeWhere(bool Function(E element) test) {`



#### `if (test(elm)) {`



#### `if (remd != 0) {`



#### `override
  void replaceRange(int start, int end, Iterable\<E\> replacements) {`



#### `if (remd != 0) {`



#### `override
  void retainWhere(bool Function(E element) test) {`



#### `override
  void clear() {`



#### `T Function(E e) toElement) {`



#### `override
  Iteration\<E\> followedBy(Iterable\<E\> other) {`



#### `Iterable\<T\> Function(E element) toElements) {`



#### `override
  IterationBase\<E\> sublist(int start, [int? end]) {`



#### `i\<end; i++) {
      newI.add(elementAt(i));
    }
    return IterationList(
      iterable: newI,
    );
  }
  
  @override
  Iteration\<E\> skip(int count) {`



#### `override
  Iteration\<E\> take(int count) {`


