# Iteration

This class `Iteration` is part of the `collections` module of the Dartora library. It defines behavior and data structures as implemented in the source code.

_Defined in: `src/collections/iteration.dart`_

_Import_: `package:dartora/collections/iteration.dart`


---


### Constructors

#### `IndexBaseIterator(iterable: this);`

Constructs a new instance of `Iteration`.



#### `numbers.forEach(print);`

Constructs a new instance of `Iteration`.



#### `action(elementAt(i));`

Constructs a new instance of `Iteration`.



#### `elementAt(0) : throw StateError("IterationBuild has no elements.");`

Constructs a new instance of `Iteration`.



#### `elementAt(length-1) : throw StateError("IterationBuild has no elements.");`

Constructs a new instance of `Iteration`.



#### `throw StateError("IterationBuild has more or less than one element.");`

Constructs a new instance of `Iteration`.



#### `return elementAt(index);`

Constructs a new instance of `Iteration`.



#### `RangeError.checkNotNegative(index, "index");`

Constructs a new instance of `Iteration`.



#### `return sourceGet(offset(index));`

Constructs a new instance of `Iteration`.



#### `throw IndexError.withLength(
      sourceIndex,
      sourceIndex - skipCount,
      indexable: this,
      name: "index",
    );`

Constructs a new instance of `Iteration`.



#### `return indexWhere((elm) => elm == element, start);`

Constructs a new instance of `Iteration`.



#### `return lastIndexWhere((elm) => elm == element, start);`

Constructs a new instance of `Iteration`.



#### `for (int i=start ?? (length-1);`

Constructs a new instance of `Iteration`.



#### `elementAt(i);`

Constructs a new instance of `Iteration`.



#### `if (orElse != null) return orElse();`

Constructs a new instance of `Iteration`.



#### `throw StateError('No elements in IterationList meet test.');`

Constructs a new instance of `Iteration`.



#### `elementAt(i);`

Constructs a new instance of `Iteration`.



#### `if (orElse != null) return orElse();`

Constructs a new instance of `Iteration`.



#### `throw StateError('No elements in IterationItem meet test.');`

Constructs a new instance of `Iteration`.



#### `elementAt(i);`

Constructs a new instance of `Iteration`.



#### `if (ret != null) throw StateError('Too many elements in IterationItem meet test.');`

Constructs a new instance of `Iteration`.



#### `if (orElse != null) return orElse();`

Constructs a new instance of `Iteration`.



#### `throw StateError('No elements in IterationList meet test.');`

Constructs a new instance of `Iteration`.



#### `elementAt(i);`

Constructs a new instance of `Iteration`.



#### `elementAt(i);`

Constructs a new instance of `Iteration`.



#### `return any((e) => element == e);`

Constructs a new instance of `Iteration`.



#### `if (s.isEmpty) return elm.toString();`

Constructs a new instance of `Iteration`.



#### `combine(value, elementAt(i));`

Constructs a new instance of `Iteration`.



#### `combine(value, elementAt(i));`

Constructs a new instance of `Iteration`.



#### `return IterationItem(
      source: toList().map<T>(toElement),
    );`

Constructs a new instance of `Iteration`.



#### `return IterationItem(
      source: toList().followedBy(other),
    );`

Constructs a new instance of `Iteration`.



#### `return IterationItem(
      source: toList().expand<T>(toElements),
    );`

Constructs a new instance of `Iteration`.



#### `return IterationItem(
      source: toList().reversed,
    );`

Constructs a new instance of `Iteration`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `Iteration`.



#### `return IterationItem(
      source: this,
      startIndex: start,
      indexTake: length - end,
    );`

Constructs a new instance of `Iteration`.



#### `assert(start >= 0 && length >= start && (end == null || (end >= start && length >= end)));`

Constructs a new instance of `Iteration`.



#### `newI.add(elementAt(i));`

Constructs a new instance of `Iteration`.



#### `return IterationItem(
      source: newI,
    );`

Constructs a new instance of `Iteration`.



#### `return IterationItem(
      source: this,
      startIndex: count,
    );`

Constructs a new instance of `Iteration`.



#### `return IterationItem(
      source: this,
      indexTake: count,
    );`

Constructs a new instance of `Iteration`.



#### `elementAt(i);`

Constructs a new instance of `Iteration`.



#### `newI.add(elm);`

Constructs a new instance of `Iteration`.



#### `return IterationItem(
      source: newI,
    );`

Constructs a new instance of `Iteration`.



#### `return IterationItem(
      source: toList().whereType<T>(),
    );`

Constructs a new instance of `Iteration`.



#### `return IterationItem(
      source: toList().cast<R>(),
    );`

Constructs a new instance of `Iteration`.



#### `return List.of(this, growable: growable);`

Constructs a new instance of `Iteration`.



#### `return Set.of(this);`

Constructs a new instance of `Iteration`.



#### `LinkedHashMap();`

Constructs a new instance of `Iteration`.



#### `elementAt(i);`

Constructs a new instance of `Iteration`.



#### `return source.elementAt(sourceIndex);`

Constructs a new instance of `Iteration`.



#### `items.fold(0, (i, item) => i + item.length)
  ;`

Constructs a new instance of `Iteration`.



#### `return item.elementAt(actualIndex);`

Constructs a new instance of `Iteration`.



#### `throw IndexError.withLength(sourceIndex, length);`

Constructs a new instance of `Iteration`.



#### `set sourceLength(int newLength);`

Constructs a new instance of `Iteration`.



#### `void sourceLengthBeenModified(int amount);`

Constructs a new instance of `Iteration`.



#### `abs();`

Constructs a new instance of `Iteration`.



#### `clear();`

Constructs a new instance of `Iteration`.



#### `Random();`

Constructs a new instance of `Iteration`.



#### `return (a as Comparable).compareTo(b);`

Constructs a new instance of `Iteration`.



#### `throw ArgumentError(
          'Elements must be Comparable if no compare function is provided.');`

Constructs a new instance of `Iteration`.



#### `Left side of pivot1
      dualPivotQuickSort(left, less - 1);`

Constructs a new instance of `Iteration`.



#### `Between pivot1 and pivot2
      dualPivotQuickSort(less + 1, great - 1);`

Constructs a new instance of `Iteration`.



#### `Right side of pivot2
      dualPivotQuickSort(great + 1, right);`

Constructs a new instance of `Iteration`.



#### `dualPivotQuickSort(0, length - 1);`

Constructs a new instance of `Iteration`.



#### `insert(length, element);`

Constructs a new instance of `Iteration`.



#### `insertAll(length, iterable);`

Constructs a new instance of `Iteration`.



#### `insertAll(index, [element]);`

Constructs a new instance of `Iteration`.



#### `throw IndexError.withLength(index, length);`

Constructs a new instance of `Iteration`.



#### `sourceInsertAll(offset(index), iterable);`

Constructs a new instance of `Iteration`.



#### `sourceLengthBeenModified(iterable.length);`

Constructs a new instance of `Iteration`.



#### `void sourceInsertAll(int index, Iterable<E> iterable);`

Constructs a new instance of `Iteration`.



#### `set(index, value);`

Constructs a new instance of `Iteration`.



#### `set(0, value);`

Constructs a new instance of `Iteration`.



#### `set(length-1, value);`

Constructs a new instance of `Iteration`.



#### `void set(int index, E element);`

Constructs a new instance of `Iteration`.



#### `assert(iterable.length < (length - index));`

Constructs a new instance of `Iteration`.



#### `set(index+i, iterable.elementAt(i));`

Constructs a new instance of `Iteration`.



#### `assert(
      start >= 0 &&
      end >= start &&
      length >= end &&
      (iterable.length-skipCount) == (end - start)
    );`

Constructs a new instance of `Iteration`.



#### `set(i, iterable.elementAt(j));`

Constructs a new instance of `Iteration`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `Iteration`.



#### `assert(fillValue != null || null is E);`

Constructs a new instance of `Iteration`.



#### `set(i, fillValue as E);`

Constructs a new instance of `Iteration`.



#### `removeAction(value:value);`

Constructs a new instance of `Iteration`.



#### `sourceLengthBeenModified(-remd);`

Constructs a new instance of `Iteration`.



#### `IndexError.check(index, length);`

Constructs a new instance of `Iteration`.



#### `elementAt(index);`

Constructs a new instance of `Iteration`.



#### `removeAction(removeAll: [index]);`

Constructs a new instance of `Iteration`.



#### `sourceLengthBeenModified(-remd);`

Constructs a new instance of `Iteration`.



#### `throw StateError('No element at index $index was removed.');`

Constructs a new instance of `Iteration`.



#### `return removeAt(length-1);`

Constructs a new instance of `Iteration`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `Iteration`.



#### `removeAction(start: offset(start), end: offset(end));`

Constructs a new instance of `Iteration`.



#### `sourceLengthBeenModified(-remd);`

Constructs a new instance of `Iteration`.



#### `elementAt(i);`

Constructs a new instance of `Iteration`.



#### `indexes.add(offset(i));`

Constructs a new instance of `Iteration`.



#### `removeAction(removeAll: indexes);`

Constructs a new instance of `Iteration`.



#### `sourceLengthBeenModified(-remd);`

Constructs a new instance of `Iteration`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `Iteration`.



#### `removeAction(start: offset(start), end: offset(end), replacements: replacements);`

Constructs a new instance of `Iteration`.



#### `sourceLengthBeenModified(-remd);`

Constructs a new instance of `Iteration`.



#### `removeWhere((elm) => !test(elm));`

Constructs a new instance of `Iteration`.



#### `return IterationList(
      iterable: toList().map(toElement),
    );`

Constructs a new instance of `Iteration`.



#### `toList();`

Constructs a new instance of `Iteration`.



#### `newI.addAll(other);`

Constructs a new instance of `Iteration`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `Iteration`.



#### `toList().expand<T>(toElements);`

Constructs a new instance of `Iteration`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `Iteration`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `Iteration`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `Iteration`.



#### `assert(start >= 0 && length >= start && (end == null || (end >= start && length >= end)));`

Constructs a new instance of `Iteration`.



#### `return IterationList(
      iterable: this,
      startIndex: count,
    );`

Constructs a new instance of `Iteration`.



#### `return IterationList(
      iterable: this,
      indexTake: count,
    );`

Constructs a new instance of `Iteration`.



#### `return IterationList(
      iterable: toList().whereType<T>(),
    );`

Constructs a new instance of `Iteration`.



#### `return IterationList(
      iterable: toList().cast<R>(),
    );`

Constructs a new instance of `Iteration`.



#### `List.from(iterable)
  ;`

Constructs a new instance of `Iteration`.



#### `_listSource.clear();`

Constructs a new instance of `Iteration`.



#### `return _listSource.elementAt(sourceIndex);`

Constructs a new instance of `Iteration`.



#### `_listSource.shuffle(random);`

Constructs a new instance of `Iteration`.



#### `_listSource.insert(offset(index), iterable.single);`

Constructs a new instance of `Iteration`.



#### `_listSource.insertAll(offset(index), iterable);`

Constructs a new instance of `Iteration`.



#### `offset(length);`

Constructs a new instance of `Iteration`.



#### `_listSource.replaceRange(start, end, replacements);`

Constructs a new instance of `Iteration`.



#### `_listSource.removeRange(start, end);`

Constructs a new instance of `Iteration`.



#### `removeAll.sort();`

Constructs a new instance of `Iteration`.



#### `_listSource.removeAt(index-removed);`

Constructs a new instance of `Iteration`.



#### `_listSource.indexOf(element, offset(start));`

Constructs a new instance of `Iteration`.



#### `_listSource.indexWhere(test, offset(start));`

Constructs a new instance of `Iteration`.



#### `_listSource.lastIndexOf(element, offset(start ?? length));`

Constructs a new instance of `Iteration`.



#### `_listSource.lastIndexWhere(test, offset(start ?? length));`

Constructs a new instance of `Iteration`.



#### `return IterationList(
      iterable: _listSource.map(toElement),
      startIndex: startIndex,
      indexTake: indexTake,
    );`

Constructs a new instance of `Iteration`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `Iteration`.



#### `_listSource.getRange(offset(start), offset(end));`

Constructs a new instance of `Iteration`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `Iteration`.



#### `assert(start >= 0 && length >= start && (end == null || (end >= start && length >= end)));`

Constructs a new instance of `Iteration`.



#### `_listSource.sublist(offset(start), offset(end ?? length));`

Constructs a new instance of `Iteration`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `Iteration`.



#### `return IterationList(
      iterable: _listSource,
      startIndex: startIndex+count,
      indexTake: indexTake,
    );`

Constructs a new instance of `Iteration`.



#### `return IterationList(
      iterable: _listSource,
      startIndex: startIndex,
      indexTake: indexTake+count,
    );`

Constructs a new instance of `Iteration`.



#### `return IterationList(
      iterable: _listSource.whereType<T>(),
      startIndex: startIndex,
      indexTake: indexTake,
    );`

Constructs a new instance of `Iteration`.



#### `return IterationList(
      iterable: _listSource.cast<R>(),
      startIndex: startIndex,
      indexTake: indexTake,
    );`

Constructs a new instance of `Iteration`.



#### `items.fold(0, (i, item) => i + item.length);`

Constructs a new instance of `Iteration`.



#### `HolderIterator(holder: items);`

Constructs a new instance of `Iteration`.



#### `items.clear();`

Constructs a new instance of `Iteration`.



#### `items.add(IterationList(iterable: List.filled(newLength-_sourceLength, null as E)));`

Constructs a new instance of `Iteration`.



#### `throw StateError("Cannot have a sourceLength bigger than current when E isn't nullable.");`

Constructs a new instance of `Iteration`.



#### `item.removeLast();`

Constructs a new instance of `Iteration`.



#### `items.removeLast();`

Constructs a new instance of `Iteration`.



#### `items.fold(0, (i, item) => i + item.length);`

Constructs a new instance of `Iteration`.



#### `return item.elementAt(actualIndex);`

Constructs a new instance of `Iteration`.



#### `throw IndexError.withLength(sourceIndex, length);`

Constructs a new instance of `Iteration`.



#### `offset(length);`

Constructs a new instance of `Iteration`.



#### `item.removeRange(actualStart, itemLen);`

Constructs a new instance of `Iteration`.



#### `item.replaceRange(actualStart, actualEnd, replacements);`

Constructs a new instance of `Iteration`.



#### `item.removeRange(actualStart, actualEnd);`

Constructs a new instance of `Iteration`.



#### `items.removeRange(removeRangeStart, removeRangeEnd);`

Constructs a new instance of `Iteration`.



#### `if (repPos == null) throw StateError('Cannot replace items in bad range.');`

Constructs a new instance of `Iteration`.



#### `Replacements inserted as independent list
          items.insert(repPos, IterationList(
            iterable: replacements
          ));`

Constructs a new instance of `Iteration`.



#### `removeAll.removeWhere((index) => index <=-1);`

Constructs a new instance of `Iteration`.



#### `item.insertAll(actualIndex, iterable);`

Constructs a new instance of `Iteration`.



#### `item.set(actualIndex, element);`

Constructs a new instance of `Iteration`.



#### `action(entry.key, entry.value);`

Constructs a new instance of `Iteration`.



#### `IterationItem(
    source: sourceEntries,
    startIndex: startIndex,
    indexTake: indexTake,
  );`

Constructs a new instance of `Iteration`.



#### `entries.map((entry) => entry.key);`

Constructs a new instance of `Iteration`.



#### `entries.map((entry) => entry.value);`

Constructs a new instance of `Iteration`.



#### `return get(key);`

Constructs a new instance of `Iteration`.



#### `get(Object? key);`

Constructs a new instance of `Iteration`.



#### `IndexError.check(index, length);`

Constructs a new instance of `Iteration`.



#### `return sourceEntries.elementAt(offset(index));`

Constructs a new instance of `Iteration`.



#### `return keys.contains(key);`

Constructs a new instance of `Iteration`.



#### `return values.contains(value);`

Constructs a new instance of `Iteration`.



#### `set(key, value);`

Constructs a new instance of `Iteration`.



#### `indexOfKey(key);`

Constructs a new instance of `Iteration`.



#### `insert(index, key, value);`

Constructs a new instance of `Iteration`.



#### `insert(length, key, value);`

Constructs a new instance of `Iteration`.



#### `void insert(int index, K key, V element);`

Constructs a new instance of `Iteration`.



#### `throw IndexError.withLength(index, length);`

Constructs a new instance of `Iteration`.



#### `iterable.elementAt(i);`

Constructs a new instance of `Iteration`.



#### `insert(index+i, entry.key, entry.value);`

Constructs a new instance of `Iteration`.



#### `other.forEach(set);`

Constructs a new instance of `Iteration`.



#### `set(entry.key, entry.value);`

Constructs a new instance of `Iteration`.



#### `set(key, ifAbsent());`

Constructs a new instance of `Iteration`.



#### `set(key, update(get(key) as V));`

Constructs a new instance of `Iteration`.



#### `assert(ifAbsent != null);`

Constructs a new instance of `Iteration`.



#### `set(key, ifAbsent!());`

Constructs a new instance of `Iteration`.



#### `set(entry.key, update(entry.key, entry.value));`

Constructs a new instance of `Iteration`.



#### `get(key as K);`

Constructs a new instance of `Iteration`.



#### `removeAction(removeKeys: [key]);`

Constructs a new instance of `Iteration`.



#### `getKey(indexOf(value as V));`

Constructs a new instance of `Iteration`.



#### `removeAction(removeKeys: [remd as K]);`

Constructs a new instance of `Iteration`.



#### `IndexError.check(index, length);`

Constructs a new instance of `Iteration`.



#### `getEntry(index);`

Constructs a new instance of `Iteration`.



#### `removeAction(removeAll: [index]);`

Constructs a new instance of `Iteration`.



#### `throw StateError('No element at index $index was removed.');`

Constructs a new instance of `Iteration`.



#### `return removeAt(length-1);`

Constructs a new instance of `Iteration`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `Iteration`.



#### `removeAction(start: offset(start), end: offset(end));`

Constructs a new instance of `Iteration`.



#### `keys.add(entry.key);`

Constructs a new instance of `Iteration`.



#### `removeAction(removeKeys: keys);`

Constructs a new instance of `Iteration`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `Iteration`.



#### `removeAction(start: offset(start), end: offset(end), replacements: replacements);`

Constructs a new instance of `Iteration`.



#### `removeWhere((key, value) => !test(key, value));`

Constructs a new instance of `Iteration`.



#### `removeAction(start: startIndex, end: offset(length));`

Constructs a new instance of `Iteration`.



#### `mapList.add(convert(entry.key, entry.value));`

Constructs a new instance of `Iteration`.



#### `return Map.fromEntries(mapList);`

Constructs a new instance of `Iteration`.



#### `return IterationItemMap(
      map: this,
      startIndex: start,
      indexTake: length - end,
    );`

Constructs a new instance of `Iteration`.



#### `LinkedHashMap();`

Constructs a new instance of `Iteration`.



#### `getEntry(i);`

Constructs a new instance of `Iteration`.



#### `return IterationItemMap(
      map: newMap,
      startIndex: 0,
      indexTake: 0,
    );`

Constructs a new instance of `Iteration`.



#### `IterationItemMap(
    map: LinkedHashMap.fromEntries((entries as Iteration<MapEntry<K, V>>).reversed)
  );`

Constructs a new instance of `Iteration`.



#### `return IterationItemMap(
      map: this,
      startIndex: count,
      indexTake: 0,
    );`

Constructs a new instance of `Iteration`.



#### `return IterationItemMap(
      map: this,
      startIndex: 0,
      indexTake: count,
    );`

Constructs a new instance of `Iteration`.



#### `keys.toList()
  ;`

Constructs a new instance of `Iteration`.



#### `_keys.map((key) => MapEntry(key, _map[key] as V));`

Constructs a new instance of `Iteration`.



#### `if (!_keys.contains(key)) _keys.add(key);`

Constructs a new instance of `Iteration`.



#### `_insertCheck(index, key, element);`

Constructs a new instance of `Iteration`.



#### `_keys.indexOf(key);`

Constructs a new instance of `Iteration`.



#### `_keys.removeAt(i);`

Constructs a new instance of `Iteration`.



#### `_keys.add(key);`

Constructs a new instance of `Iteration`.



#### `_keys.insert(index, key);`

Constructs a new instance of `Iteration`.



#### `offset(length);`

Constructs a new instance of `Iteration`.



#### `_keys.getRange(start, end);`

Constructs a new instance of `Iteration`.



#### `_keys.removeRange(start, end);`

Constructs a new instance of `Iteration`.



#### `_map.removeWhere((key, val) => keys.contains(key));`

Constructs a new instance of `Iteration`.



#### `removeAll.sort();`

Constructs a new instance of `Iteration`.



#### `_map.remove(_keys.removeAt(index-removed));`

Constructs a new instance of `Iteration`.



#### `_map.remove(key);`

Constructs a new instance of `Iteration`.



### Fields

#### `startIndex;`

Stores the value of `startIndex` for this instance of `Iteration`.



#### `Iterator<E> get sourceIterator;`

Stores the value of `sourceIterator` for this instance of `Iteration`.



#### `sourceIterator;`

Stores the value of `sourceIterator` for this instance of `Iteration`.



#### `return count;`

Stores the value of `count` for this instance of `Iteration`.



#### `indexTake;`

Stores the value of `indexTake` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `iterator;`

Stores the value of `iterator` for this instance of `Iteration`.



#### `sourceIndex;`

Stores the value of `sourceIndex` for this instance of `Iteration`.



#### `current;`

Stores the value of `current` for this instance of `Iteration`.



#### `start;`

Stores the value of `start` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `return i;`

Stores the value of `i` for this instance of `Iteration`.



#### `return i;`

Stores the value of `i` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `return elm;`

Stores the value of `elm` for this instance of `Iteration`.



#### `return elm;`

Stores the value of `elm` for this instance of `Iteration`.



#### `ret;`

Stores the value of `ret` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `elm;`

Stores the value of `elm` for this instance of `Iteration`.



#### `return ret;`

Stores the value of `ret` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `return true;`

Stores the value of `true` for this instance of `Iteration`.



#### `return false;`

Stores the value of `false` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `return false;`

Stores the value of `false` for this instance of `Iteration`.



#### `return true;`

Stores the value of `true` for this instance of `Iteration`.



#### `return false;`

Stores the value of `false` for this instance of `Iteration`.



#### `first;`

Stores the value of `first` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `return value;`

Stores the value of `value` for this instance of `Iteration`.



#### `initialValue;`

Stores the value of `initialValue` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `return value;`

Stores the value of `value` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `start;`

Stores the value of `start` for this instance of `Iteration`.



#### `end;`

Stores the value of `end` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `return ret;`

Stores the value of `ret` for this instance of `Iteration`.



#### `final Iterable<E> source;`

Stores the value of `source` for this instance of `Iteration`.



#### `override
  final int startIndex;`

Stores the value of `startIndex` for this instance of `Iteration`.



#### `override
  final int indexTake;`

Stores the value of `indexTake` for this instance of `Iteration`.



#### `iterator;`

Stores the value of `iterator` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `items;`

Stores the value of `items` for this instance of `Iteration`.



#### `override
  final int startIndex;`

Stores the value of `startIndex` for this instance of `Iteration`.



#### `override
  final int indexTake;`

Stores the value of `indexTake` for this instance of `Iteration`.



#### `override
  final int sourceLength;`

Stores the value of `sourceLength` for this instance of `Iteration`.



#### `sourceIndex;`

Stores the value of `sourceIndex` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `continue;`

Stores the value of `continue` for this instance of `Iteration`.



#### `indexTake
  ;`

Stores the value of `indexTake` for this instance of `Iteration`.



#### `int _startIndex;`

Stores the value of `_startIndex` for this instance of `Iteration`.



#### `_startIndex;`

Stores the value of `_startIndex` for this instance of `Iteration`.



#### `int _indexTake;`

Stores the value of `_indexTake` for this instance of `Iteration`.



#### `_indexTake;`

Stores the value of `_indexTake` for this instance of `Iteration`.



#### `newLength;`

Stores the value of `newLength` for this instance of `Iteration`.



#### `return;`

Stores the value of `return` for this instance of `Iteration`.



#### `right;`

Stores the value of `right` for this instance of `Iteration`.



#### `temp;`

Stores the value of `temp` for this instance of `Iteration`.



#### `return;`

Stores the value of `return` for this instance of `Iteration`.



#### `third;`

Stores the value of `third` for this instance of `Iteration`.



#### `third;`

Stores the value of `third` for this instance of `Iteration`.



#### `tmp;`

Stores the value of `tmp` for this instance of `Iteration`.



#### `pivot1;`

Stores the value of `pivot1` for this instance of `Iteration`.



#### `tmp1;`

Stores the value of `tmp1` for this instance of `Iteration`.



#### `pivot2;`

Stores the value of `pivot2` for this instance of `Iteration`.



#### `tmp2;`

Stores the value of `tmp2` for this instance of `Iteration`.



#### `less;`

Stores the value of `less` for this instance of `Iteration`.



#### `great;`

Stores the value of `great` for this instance of `Iteration`.



#### `tmp;`

Stores the value of `tmp` for this instance of `Iteration`.



#### `tmp;`

Stores the value of `tmp` for this instance of `Iteration`.



#### `tmp;`

Stores the value of `tmp` for this instance of `Iteration`.



#### `tmp;`

Stores the value of `tmp` for this instance of `Iteration`.



#### `tmp;`

Stores the value of `tmp` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `skipCount;`

Stores the value of `skipCount` for this instance of `Iteration`.



#### `start;`

Stores the value of `start` for this instance of `Iteration`.



#### `end;`

Stores the value of `end` for this instance of `Iteration`.



#### `start;`

Stores the value of `start` for this instance of `Iteration`.



#### `end;`

Stores the value of `end` for this instance of `Iteration`.



#### `return true;`

Stores the value of `true` for this instance of `Iteration`.



#### `return false;`

Stores the value of `false` for this instance of `Iteration`.



#### `return removed;`

Stores the value of `removed` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `other;`

Stores the value of `other` for this instance of `Iteration`.



#### `reversed;`

Stores the value of `reversed` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `start;`

Stores the value of `start` for this instance of `Iteration`.



#### `final List<E> _listSource;`

Stores the value of `_listSource` for this instance of `Iteration`.



#### `final Iterable<E> source;`

Stores the value of `source` for this instance of `Iteration`.



#### `iterator;`

Stores the value of `iterator` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `newLength;`

Stores the value of `newLength` for this instance of `Iteration`.



#### `element;`

Stores the value of `element` for this instance of `Iteration`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `start;`

Stores the value of `start` for this instance of `Iteration`.



#### `removed;`

Stores the value of `removed` for this instance of `Iteration`.



#### `return count;`

Stores the value of `count` for this instance of `Iteration`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `Iteration`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `Iteration`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `Iteration`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `Iteration`.



#### `items;`

Stores the value of `items` for this instance of `Iteration`.



#### `_sourceLength;`

Stores the value of `_sourceLength` for this instance of `Iteration`.



#### `newLength;`

Stores the value of `newLength` for this instance of `Iteration`.



#### `break;`

Stores the value of `break` for this instance of `Iteration`.



#### `break;`

Stores the value of `break` for this instance of `Iteration`.



#### `amount;`

Stores the value of `amount` for this instance of `Iteration`.



#### `sourceIndex;`

Stores the value of `sourceIndex` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `continue;`

Stores the value of `continue` for this instance of `Iteration`.



#### `break;`

Stores the value of `break` for this instance of `Iteration`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `Iteration`.



#### `start;`

Stores the value of `start` for this instance of `Iteration`.



#### `end;`

Stores the value of `end` for this instance of `Iteration`.



#### `repPos;`

Stores the value of `repPos` for this instance of `Iteration`.



#### `false;`

Stores the value of `false` for this instance of `Iteration`.



#### `removeRangeStart;`

Stores the value of `removeRangeStart` for this instance of `Iteration`.



#### `removeRangeEnd;`

Stores the value of `removeRangeEnd` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `itemLen;`

Stores the value of `itemLen` for this instance of `Iteration`.



#### `itemLen;`

Stores the value of `itemLen` for this instance of `Iteration`.



#### `continue;`

Stores the value of `continue` for this instance of `Iteration`.



#### `i;`

Stores the value of `i` for this instance of `Iteration`.



#### `i;`

Stores the value of `i` for this instance of `Iteration`.



#### `itemLen;`

Stores the value of `itemLen` for this instance of `Iteration`.



#### `continue;`

Stores the value of `continue` for this instance of `Iteration`.



#### `true;`

Stores the value of `true` for this instance of `Iteration`.



#### `break;`

Stores the value of `break` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `start;`

Stores the value of `start` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `continue;`

Stores the value of `continue` for this instance of `Iteration`.



#### `removed;`

Stores the value of `removed` for this instance of `Iteration`.



#### `return count;`

Stores the value of `count` for this instance of `Iteration`.



#### `index;`

Stores the value of `index` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `continue;`

Stores the value of `continue` for this instance of `Iteration`.



#### `break;`

Stores the value of `break` for this instance of `Iteration`.



#### `index;`

Stores the value of `index` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `continue;`

Stores the value of `continue` for this instance of `Iteration`.



#### `break;`

Stores the value of `break` for this instance of `Iteration`.



#### `indexTake
  ;`

Stores the value of `indexTake` for this instance of `Iteration`.



#### `int _startIndex;`

Stores the value of `_startIndex` for this instance of `Iteration`.



#### `_startIndex;`

Stores the value of `_startIndex` for this instance of `Iteration`.



#### `int _indexTake;`

Stores the value of `_indexTake` for this instance of `Iteration`.



#### `_indexTake;`

Stores the value of `_indexTake` for this instance of `Iteration`.



#### `get sourceEntries;`

Stores the value of `sourceEntries` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `value;`

Stores the value of `value` for this instance of `Iteration`.



#### `key;`

Stores the value of `key` for this instance of `Iteration`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `Iteration`.



#### `indexTake;`

Stores the value of `indexTake` for this instance of `Iteration`.



#### `return i;`

Stores the value of `i` for this instance of `Iteration`.



#### `length;`

Stores the value of `length` for this instance of `Iteration`.



#### `old;`

Stores the value of `old` for this instance of `Iteration`.



#### `return old;`

Stores the value of `old` for this instance of `Iteration`.



#### `remd;`

Stores the value of `remd` for this instance of `Iteration`.



#### `return remd;`

Stores the value of `remd` for this instance of `Iteration`.



#### `return removed;`

Stores the value of `removed` for this instance of `Iteration`.



#### `start;`

Stores the value of `start` for this instance of `Iteration`.



#### `itake;`

Stores the value of `itake` for this instance of `Iteration`.



#### `value;`

Stores the value of `value` for this instance of `Iteration`.



#### `final Map<K, V> _map;`

Stores the value of `_map` for this instance of `Iteration`.



#### `final List<K> _keys;`

Stores the value of `_keys` for this instance of `Iteration`.



#### `value;`

Stores the value of `value` for this instance of `Iteration`.



#### `element;`

Stores the value of `element` for this instance of `Iteration`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `Iteration`.



#### `start;`

Stores the value of `start` for this instance of `Iteration`.



#### `start;`

Stores the value of `start` for this instance of `Iteration`.



#### `removed;`

Stores the value of `removed` for this instance of `Iteration`.



#### `return count;`

Stores the value of `count` for this instance of `Iteration`.





### Methods

#### `override
  int offset(int index) {`

Executes the `offset` operation defined in `Iteration`.



#### `while (it.moveNext()) {`

Executes the `while` operation defined in `Iteration`.



#### `override
  void forEach(void Function(E element) action) {`

Executes the `forEach` operation defined in `Iteration`.



#### `override
  E elementAt(int index) {`

Executes the `elementAt` operation defined in `Iteration`.



#### `override
  E sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `Iteration`.



#### `while (iterator.moveNext()) {`

Executes the `while` operation defined in `Iteration`.



#### `override
  int indexOf(E element, [int start = 0]) {`

Executes the `indexOf` operation defined in `Iteration`.



#### `override
  int indexWhere(bool Function(E element) test, [int start = 0]) {`

Executes the `indexWhere` operation defined in `Iteration`.



#### `if (test(elementAt(i))) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  int lastIndexOf(E element, [int? start]) {`

Executes the `lastIndexOf` operation defined in `Iteration`.



#### `override
  int lastIndexWhere(bool Function(E element) test, [int? start]) {`

Executes the `lastIndexWhere` operation defined in `Iteration`.



#### `if (test(elementAt(i))) {`

Executes the `if` operation defined in `Iteration`.



#### `if (test(elm)) {`

Executes the `if` operation defined in `Iteration`.



#### `if (test(elm)) {`

Executes the `if` operation defined in `Iteration`.



#### `if (test(elm)) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  bool any(bool Function(E element) test) {`

Executes the `any` operation defined in `Iteration`.



#### `if (test(elm)) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  bool every(bool Function(E element) test) {`

Executes the `every` operation defined in `Iteration`.



#### `if (!test(elm)) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  bool contains(Object? element) {`

Executes the `contains` operation defined in `Iteration`.



#### `if (element is E) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  String join([String separator = ""]) {`

Executes the `join` operation defined in `Iteration`.



#### `return fold("", (s, elm) {`

Executes the `fold` operation defined in `Iteration`.



#### `override
  E reduce(E Function(E value, E element) combine) {`

Executes the `reduce` operation defined in `Iteration`.



#### `T Function(T previousValue, E element) combine) {`

Executes the `Function` operation defined in `Iteration`.



#### `T Function(E e) toElement) {`

Executes the `Function` operation defined in `Iteration`.



#### `override
  Iteration<E> followedBy(Iterable<E> other) {`

Executes the `followedBy` operation defined in `Iteration`.



#### `Iterable<T> Function(E element) toElements) {`

Executes the `Function` operation defined in `Iteration`.



#### `override
  Iteration<E> getRange(int start, int end) {`

Executes the `getRange` operation defined in `Iteration`.



#### `override
  Iteration<E> sublist(int start, [int? end]) {`

Executes the `sublist` operation defined in `Iteration`.



#### `override
  Iteration<E> skip(int count) {`

Executes the `skip` operation defined in `Iteration`.



#### `override
  Iteration<E> skipWhile(bool Function(E value) test) {`

Executes the `skipWhile` operation defined in `Iteration`.



#### `i<length; i++) {
      if (!test(elementAt(i))) {
        count = i;
        break;
      }
    }
    return skip(count);
  }
  
  @override
  Iteration<E> take(int count) {`

Executes the `take` operation defined in `Iteration`.



#### `override
  Iteration<E> takeWhile(bool Function(E value) test) {`

Executes the `takeWhile` operation defined in `Iteration`.



#### `i<length; i++) {
      if (!test(elementAt(i))) {
        count = i;
        break;
      }
    }
    return take(length - count);
  }
  
  @override
  Iteration<E> where(bool Function(E element) test) {`

Executes the `where` operation defined in `Iteration`.



#### `if (test(elm)) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  Set<E> toSet() {`

Executes the `toSet` operation defined in `Iteration`.



#### `override
  Map<int, E> asMap() {`

Executes the `asMap` operation defined in `Iteration`.



#### `override
  E sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `Iteration`.



#### `override
  E sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `Iteration`.



#### `for (var item in items) {`

Executes the `for` operation defined in `Iteration`.



#### `if (actualIndex >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  set length(int newLength) {`

Executes the `length` operation defined in `Iteration`.



#### `if (newLength != 0) {`

Executes the `if` operation defined in `Iteration`.



#### `if (newLength > sourceLength) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  void shuffle([Random? random]) {`

Executes the `shuffle` operation defined in `Iteration`.



#### `sort((a, b) {`

Executes the `sort` operation defined in `Iteration`.



#### `override
  void sort([int Function(E a, E b)? compare]) {`

Executes the `sort` operation defined in `Iteration`.



#### `if (a is Comparable && b is Comparable) {`

Executes the `if` operation defined in `Iteration`.



#### `void dualPivotQuickSort(int left, int right) {`

Executes the `dualPivotQuickSort` operation defined in `Iteration`.



#### `if (right - left < threshold) {`

Executes the `if` operation defined in `Iteration`.



#### `while (j >= left && compare!(this[j], temp) > 0) {`

Executes the `while` operation defined in `Iteration`.



#### `if (compare!(this[m1], this[m2]) > 0) {`

Executes the `if` operation defined in `Iteration`.



#### `if (compare(this[k], pivot1) < 0) {`

Executes the `if` operation defined in `Iteration`.



#### `else if (compare(this[k], pivot2) > 0) {`

Executes the `if` operation defined in `Iteration`.



#### `while (k < great && compare(this[great], pivot2) > 0) {`

Executes the `while` operation defined in `Iteration`.



#### `if (compare(this[k], pivot1) < 0) {`

Executes the `if` operation defined in `Iteration`.



#### `if (length > 1) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  void add(E element) {`

Executes the `add` operation defined in `Iteration`.



#### `override
  void addAll(Iterable<E> iterable) {`

Executes the `addAll` operation defined in `Iteration`.



#### `override
  void insert(int index, E element) {`

Executes the `insert` operation defined in `Iteration`.



#### `override
  void insertAll(int index, Iterable<E> iterable) {`

Executes the `insertAll` operation defined in `Iteration`.



#### `if (index < 0 || index > length) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  set first(E value) {`

Executes the `first` operation defined in `Iteration`.



#### `override
  set last(E value) {`

Executes the `last` operation defined in `Iteration`.



#### `override
  void setAll(int index, Iterable<E> iterable) {`

Executes the `setAll` operation defined in `Iteration`.



#### `override
  void setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0]) {`

Executes the `setRange` operation defined in `Iteration`.



#### `override
  void fillRange(int start, int end, [E? fillValue]) {`

Executes the `fillRange` operation defined in `Iteration`.



#### `override
  bool remove(Object? value) {`

Executes the `remove` operation defined in `Iteration`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  E removeAt(int index) {`

Executes the `removeAt` operation defined in `Iteration`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  E removeLast() {`

Executes the `removeLast` operation defined in `Iteration`.



#### `override
  void removeRange(int start, int end) {`

Executes the `removeRange` operation defined in `Iteration`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  void removeWhere(bool Function(E element) test) {`

Executes the `removeWhere` operation defined in `Iteration`.



#### `if (test(elm)) {`

Executes the `if` operation defined in `Iteration`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  void replaceRange(int start, int end, Iterable<E> replacements) {`

Executes the `replaceRange` operation defined in `Iteration`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  void retainWhere(bool Function(E element) test) {`

Executes the `retainWhere` operation defined in `Iteration`.



#### `override
  void clear() {`

Executes the `clear` operation defined in `Iteration`.



#### `T Function(E e) toElement) {`

Executes the `Function` operation defined in `Iteration`.



#### `override
  Iteration<E> followedBy(Iterable<E> other) {`

Executes the `followedBy` operation defined in `Iteration`.



#### `Iterable<T> Function(E element) toElements) {`

Executes the `Function` operation defined in `Iteration`.



#### `override
  IterationBase<E> sublist(int start, [int? end]) {`

Executes the `sublist` operation defined in `Iteration`.



#### `i<end; i++) {
      newI.add(elementAt(i));
    }
    return IterationList(
      iterable: newI,
    );
  }
  
  @override
  Iteration<E> skip(int count) {`

Executes the `skip` operation defined in `Iteration`.



#### `override
  Iteration<E> take(int count) {`

Executes the `take` operation defined in `Iteration`.



#### `override
  set sourceLength(int newLength) {`

Executes the `sourceLength` operation defined in `Iteration`.



#### `if (newLength == 0) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  void sourceLengthBeenModified(int amount) {`

Executes the `sourceLengthBeenModified` operation defined in `Iteration`.



#### `override
  E sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `Iteration`.



#### `override
  void shuffle([Random? random]) {`

Executes the `shuffle` operation defined in `Iteration`.



#### `override
  void set(int index, E element) {`

Executes the `set` operation defined in `Iteration`.



#### `override
  void sourceInsertAll(int index, Iterable<E> iterable) {`

Executes the `sourceInsertAll` operation defined in `Iteration`.



#### `if (iterable.length == 1) {`

Executes the `if` operation defined in `Iteration`.



#### `if (_listSource.remove(value)) {`

Executes the `if` operation defined in `Iteration`.



#### `if (start != null || end != null || replacements != null) {`

Executes the `if` operation defined in `Iteration`.



#### `if (replacements != null) {`

Executes the `if` operation defined in `Iteration`.



#### `if (removeAll != null) {`

Executes the `if` operation defined in `Iteration`.



#### `for (var index in removeAll) {`

Executes the `for` operation defined in `Iteration`.



#### `override
  int indexOf(E element, [int start = 0]) {`

Executes the `indexOf` operation defined in `Iteration`.



#### `override
  int indexWhere(bool Function(E element) test, [int start = 0]) {`

Executes the `indexWhere` operation defined in `Iteration`.



#### `override
  int lastIndexOf(E element, [int? start]) {`

Executes the `lastIndexOf` operation defined in `Iteration`.



#### `override
  int lastIndexWhere(bool Function(E element) test, [int? start]) {`

Executes the `lastIndexWhere` operation defined in `Iteration`.



#### `T Function(E e) toElement) {`

Executes the `Function` operation defined in `Iteration`.



#### `override
  IterationBase<E> getRange(int start, int end) {`

Executes the `getRange` operation defined in `Iteration`.



#### `override
  IterationBase<E> sublist(int start, [int? end]) {`

Executes the `sublist` operation defined in `Iteration`.



#### `override
  Iteration<E> skip(int count) {`

Executes the `skip` operation defined in `Iteration`.



#### `override
  Iteration<E> take(int count) {`

Executes the `take` operation defined in `Iteration`.



#### `override
  set sourceLength(int newLength) {`

Executes the `sourceLength` operation defined in `Iteration`.



#### `if (newLength == 0) {`

Executes the `if` operation defined in `Iteration`.



#### `else if (newLength > _sourceLength) {`

Executes the `if` operation defined in `Iteration`.



#### `if (null is E) {`

Executes the `if` operation defined in `Iteration`.



#### `else if (newLength < _sourceLength && newLength >= 0) {`

Executes the `if` operation defined in `Iteration`.



#### `while (count != 0) {`

Executes the `while` operation defined in `Iteration`.



#### `if (item.isEmpty) {`

Executes the `if` operation defined in `Iteration`.



#### `if (remove != 0) {`

Executes the `if` operation defined in `Iteration`.



#### `while (remove != 0) {`

Executes the `while` operation defined in `Iteration`.



#### `override
  void sourceLengthBeenModified(int amount) {`

Executes the `sourceLengthBeenModified` operation defined in `Iteration`.



#### `override
  E sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `Iteration`.



#### `for (var item in items) {`

Executes the `for` operation defined in `Iteration`.



#### `if (actualIndex >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `Iteration`.



#### `if (value is E) {`

Executes the `if` operation defined in `Iteration`.



#### `for (var lis in items) {`

Executes the `for` operation defined in `Iteration`.



#### `if (lis.remove(value)) {`

Executes the `if` operation defined in `Iteration`.



#### `if (start != null || end != null || replacements != null) {`

Executes the `if` operation defined in `Iteration`.



#### `skip it
        if (actualStart >= itemLen || item.isEmpty) {`

Executes the `if` operation defined in `Iteration`.



#### `if (repPos == null) {`

Executes the `if` operation defined in `Iteration`.



#### `If the removal range extends beyond this sublist
        if (actualEnd >= itemLen) {`

Executes the `if` operation defined in `Iteration`.



#### `Partial removal from actualStart to end of sublist
          if (removeRangeStart == null) {`

Executes the `if` operation defined in `Iteration`.



#### `if (actualEnd != 0) {`

Executes the `if` operation defined in `Iteration`.



#### `if (replacements != null && internalReplace) {`

Executes the `if` operation defined in `Iteration`.



#### `Remove any sublists fully covered by the range
      if (removeRangeStart != null) {`

Executes the `if` operation defined in `Iteration`.



#### `Apply replacements if provided
      if (replacements != null) {`

Executes the `if` operation defined in `Iteration`.



#### `if (!internalReplace) {`

Executes the `if` operation defined in `Iteration`.



#### `if (removeAll != null) {`

Executes the `if` operation defined in `Iteration`.



#### `for (var item in items) {`

Executes the `for` operation defined in `Iteration`.



#### `if (removeAll[i] >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `Iteration`.



#### `if (item.remove(removeAll[i])) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  void sourceInsertAll(int index, Iterable<E> iterable) {`

Executes the `sourceInsertAll` operation defined in `Iteration`.



#### `for (var item in items) {`

Executes the `for` operation defined in `Iteration`.



#### `if (actualIndex >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  void set(int index, E element) {`

Executes the `set` operation defined in `Iteration`.



#### `for (var item in items) {`

Executes the `for` operation defined in `Iteration`.



#### `if (actualIndex >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  void forEach(void Function(K key, V value) action) {`

Executes the `forEach` operation defined in `Iteration`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `Iteration`.



#### `MapEntry<K, V> getEntry(int index) {`

Executes the `getEntry` operation defined in `Iteration`.



#### `override
  V sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `Iteration`.



#### `K getKey(int index) {`

Executes the `getKey` operation defined in `Iteration`.



#### `int indexOfKey(K key, [int start=0]) {`

Executes the `indexOfKey` operation defined in `Iteration`.



#### `override
  bool containsKey(Object? key) {`

Executes the `containsKey` operation defined in `Iteration`.



#### `override
  bool containsValue(Object? value) {`

Executes the `containsValue` operation defined in `Iteration`.



#### `void set(K key, V value) {`

Executes the `set` operation defined in `Iteration`.



#### `if (index != -1) {`

Executes the `if` operation defined in `Iteration`.



#### `void insertAll(int index, Iterable<MapEntry<K, V>> iterable) {`

Executes the `insertAll` operation defined in `Iteration`.



#### `if (index < 0 || index > length) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  void addAll(Map<K, V> other) {`

Executes the `addAll` operation defined in `Iteration`.



#### `override
  void addEntries(Iterable<MapEntry<K, V>> newEntries) {`

Executes the `addEntries` operation defined in `Iteration`.



#### `for (var entry in newEntries) {`

Executes the `for` operation defined in `Iteration`.



#### `override
  V putIfAbsent(K key, V Function() ifAbsent) {`

Executes the `putIfAbsent` operation defined in `Iteration`.



#### `if (!containsKey(key)) {`

Executes the `if` operation defined in `Iteration`.



#### `if (containsKey(key)) {`

Executes the `if` operation defined in `Iteration`.



#### `override
  void updateAll(V Function(K key, V value) update) {`

Executes the `updateAll` operation defined in `Iteration`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `Iteration`.



#### `remove(Object? key) {`

Executes the `remove` operation defined in `Iteration`.



#### `if (containsKey(key)) {`

Executes the `if` operation defined in `Iteration`.



#### `removeValue(Object? value) {`

Executes the `removeValue` operation defined in `Iteration`.



#### `if (containsValue(value)) {`

Executes the `if` operation defined in `Iteration`.



#### `MapEntry<K, V> removeAt(int index) {`

Executes the `removeAt` operation defined in `Iteration`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `Iteration`.



#### `MapEntry<K, V> removeLast() {`

Executes the `removeLast` operation defined in `Iteration`.



#### `An empty range (with `end == start`) is valid.
  void removeRange(int start, int end) {`

Executes the `range` operation defined in `Iteration`.



#### `override
  void removeWhere(bool Function(K key, V value) test) {`

Executes the `removeWhere` operation defined in `Iteration`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `Iteration`.



#### `if (test(entry.key, entry.value)) {`

Executes the `if` operation defined in `Iteration`.



#### `An empty range (with `end == start`) is valid.
  void replaceRange(int start, int end, Iterable<MapEntry<K, V>> replacements) {`

Executes the `range` operation defined in `Iteration`.



#### `void retainWhere(bool Function(K key, V value) test) {`

Executes the `retainWhere` operation defined in `Iteration`.



#### `override
  void clear() {`

Executes the `clear` operation defined in `Iteration`.



#### `MapEntry<K2, V2> Function(K key, V value) convert) {`

Executes the `Function` operation defined in `Iteration`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `Iteration`.



#### `override
  IterationMap<K, V> getRange(int start, int end) {`

Executes the `getRange` operation defined in `Iteration`.



#### `override
  IterationMap<K, V> sublist(int start, [int? end]) {`

Executes the `sublist` operation defined in `Iteration`.



#### `override
  IterationMap<K, V> skip(int count) {`

Executes the `skip` operation defined in `Iteration`.



#### `override
  IterationMap<K, V> take(int count) {`

Executes the `take` operation defined in `Iteration`.



#### `override
  void set(K key, V value) {`

Executes the `set` operation defined in `Iteration`.



#### `override
  void insert(int index, K key, V element) {`

Executes the `insert` operation defined in `Iteration`.



#### `bool _insertCheck(int index, K key, V element) {`

Executes the `_insertCheck` operation defined in `Iteration`.



#### `if (i > -1 && index > i) {`

Executes the `if` operation defined in `Iteration`.



#### `if (index == _keys.length) {`

Executes the `if` operation defined in `Iteration`.



#### `get(Object? key) {`

Executes the `get` operation defined in `Iteration`.



#### `if (start != null || end != null || replacements != null) {`

Executes the `if` operation defined in `Iteration`.



#### `if (replacements != null) {`

Executes the `if` operation defined in `Iteration`.



#### `for (var replacement in replacements) {`

Executes the `for` operation defined in `Iteration`.



#### `if (removeAll != null) {`

Executes the `if` operation defined in `Iteration`.



#### `for (var index in removeAll) {`

Executes the `for` operation defined in `Iteration`.



#### `if (removeKeys != null) {`

Executes the `if` operation defined in `Iteration`.



#### `for (var key in removeKeys) {`

Executes the `for` operation defined in `Iteration`.



#### `if (_keys.remove(key)) {`

Executes the `if` operation defined in `Iteration`.


