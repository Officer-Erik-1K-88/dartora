# IterationItem

This class `IterationItem` is part of the `collections` module of the Dartora library. It defines behavior and data structures as implemented in the source code.

_Defined in: `src/collections/iteration.dart`_

_Import_: `package:dartora/collections/iteration.dart`


---


### Constructors

#### `return source.elementAt(sourceIndex);`

Constructs a new instance of `IterationItem`.



#### `items.fold(0, (i, item) => i + item.length)
  ;`

Constructs a new instance of `IterationItem`.



#### `return item.elementAt(actualIndex);`

Constructs a new instance of `IterationItem`.



#### `throw IndexError.withLength(sourceIndex, length);`

Constructs a new instance of `IterationItem`.



#### `set sourceLength(int newLength);`

Constructs a new instance of `IterationItem`.



#### `void sourceLengthBeenModified(int amount);`

Constructs a new instance of `IterationItem`.



#### `abs();`

Constructs a new instance of `IterationItem`.



#### `clear();`

Constructs a new instance of `IterationItem`.



#### `Random();`

Constructs a new instance of `IterationItem`.



#### `return (a as Comparable).compareTo(b);`

Constructs a new instance of `IterationItem`.



#### `throw ArgumentError(
          'Elements must be Comparable if no compare function is provided.');`

Constructs a new instance of `IterationItem`.



#### `Left side of pivot1
      dualPivotQuickSort(left, less - 1);`

Constructs a new instance of `IterationItem`.



#### `Between pivot1 and pivot2
      dualPivotQuickSort(less + 1, great - 1);`

Constructs a new instance of `IterationItem`.



#### `Right side of pivot2
      dualPivotQuickSort(great + 1, right);`

Constructs a new instance of `IterationItem`.



#### `dualPivotQuickSort(0, length - 1);`

Constructs a new instance of `IterationItem`.



#### `insert(length, element);`

Constructs a new instance of `IterationItem`.



#### `insertAll(length, iterable);`

Constructs a new instance of `IterationItem`.



#### `insertAll(index, [element]);`

Constructs a new instance of `IterationItem`.



#### `throw IndexError.withLength(index, length);`

Constructs a new instance of `IterationItem`.



#### `sourceInsertAll(offset(index), iterable);`

Constructs a new instance of `IterationItem`.



#### `sourceLengthBeenModified(iterable.length);`

Constructs a new instance of `IterationItem`.



#### `void sourceInsertAll(int index, Iterable<E> iterable);`

Constructs a new instance of `IterationItem`.



#### `set(index, value);`

Constructs a new instance of `IterationItem`.



#### `set(0, value);`

Constructs a new instance of `IterationItem`.



#### `set(length-1, value);`

Constructs a new instance of `IterationItem`.



#### `void set(int index, E element);`

Constructs a new instance of `IterationItem`.



#### `assert(iterable.length < (length - index));`

Constructs a new instance of `IterationItem`.



#### `set(index+i, iterable.elementAt(i));`

Constructs a new instance of `IterationItem`.



#### `assert(
      start >= 0 &&
      end >= start &&
      length >= end &&
      (iterable.length-skipCount) == (end - start)
    );`

Constructs a new instance of `IterationItem`.



#### `set(i, iterable.elementAt(j));`

Constructs a new instance of `IterationItem`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationItem`.



#### `assert(fillValue != null || null is E);`

Constructs a new instance of `IterationItem`.



#### `set(i, fillValue as E);`

Constructs a new instance of `IterationItem`.



#### `removeAction(value:value);`

Constructs a new instance of `IterationItem`.



#### `sourceLengthBeenModified(-remd);`

Constructs a new instance of `IterationItem`.



#### `IndexError.check(index, length);`

Constructs a new instance of `IterationItem`.



#### `elementAt(index);`

Constructs a new instance of `IterationItem`.



#### `removeAction(removeAll: [index]);`

Constructs a new instance of `IterationItem`.



#### `sourceLengthBeenModified(-remd);`

Constructs a new instance of `IterationItem`.



#### `throw StateError('No element at index $index was removed.');`

Constructs a new instance of `IterationItem`.



#### `return removeAt(length-1);`

Constructs a new instance of `IterationItem`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationItem`.



#### `removeAction(start: offset(start), end: offset(end));`

Constructs a new instance of `IterationItem`.



#### `sourceLengthBeenModified(-remd);`

Constructs a new instance of `IterationItem`.



#### `elementAt(i);`

Constructs a new instance of `IterationItem`.



#### `indexes.add(offset(i));`

Constructs a new instance of `IterationItem`.



#### `removeAction(removeAll: indexes);`

Constructs a new instance of `IterationItem`.



#### `sourceLengthBeenModified(-remd);`

Constructs a new instance of `IterationItem`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationItem`.



#### `removeAction(start: offset(start), end: offset(end), replacements: replacements);`

Constructs a new instance of `IterationItem`.



#### `sourceLengthBeenModified(-remd);`

Constructs a new instance of `IterationItem`.



#### `removeWhere((elm) => !test(elm));`

Constructs a new instance of `IterationItem`.



#### `return IterationList(
      iterable: toList().map(toElement),
    );`

Constructs a new instance of `IterationItem`.



#### `toList();`

Constructs a new instance of `IterationItem`.



#### `newI.addAll(other);`

Constructs a new instance of `IterationItem`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `IterationItem`.



#### `toList().expand<T>(toElements);`

Constructs a new instance of `IterationItem`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `IterationItem`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `IterationItem`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `IterationItem`.



#### `assert(start >= 0 && length >= start && (end == null || (end >= start && length >= end)));`

Constructs a new instance of `IterationItem`.



#### `return IterationList(
      iterable: this,
      startIndex: count,
    );`

Constructs a new instance of `IterationItem`.



#### `return IterationList(
      iterable: this,
      indexTake: count,
    );`

Constructs a new instance of `IterationItem`.



#### `return IterationList(
      iterable: toList().whereType<T>(),
    );`

Constructs a new instance of `IterationItem`.



#### `return IterationList(
      iterable: toList().cast<R>(),
    );`

Constructs a new instance of `IterationItem`.



#### `List.from(iterable)
  ;`

Constructs a new instance of `IterationItem`.



#### `_listSource.clear();`

Constructs a new instance of `IterationItem`.



#### `return _listSource.elementAt(sourceIndex);`

Constructs a new instance of `IterationItem`.



#### `_listSource.shuffle(random);`

Constructs a new instance of `IterationItem`.



#### `_listSource.insert(offset(index), iterable.single);`

Constructs a new instance of `IterationItem`.



#### `_listSource.insertAll(offset(index), iterable);`

Constructs a new instance of `IterationItem`.



#### `offset(length);`

Constructs a new instance of `IterationItem`.



#### `_listSource.replaceRange(start, end, replacements);`

Constructs a new instance of `IterationItem`.



#### `_listSource.removeRange(start, end);`

Constructs a new instance of `IterationItem`.



#### `removeAll.sort();`

Constructs a new instance of `IterationItem`.



#### `_listSource.removeAt(index-removed);`

Constructs a new instance of `IterationItem`.



#### `_listSource.indexOf(element, offset(start));`

Constructs a new instance of `IterationItem`.



#### `_listSource.indexWhere(test, offset(start));`

Constructs a new instance of `IterationItem`.



#### `_listSource.lastIndexOf(element, offset(start ?? length));`

Constructs a new instance of `IterationItem`.



#### `_listSource.lastIndexWhere(test, offset(start ?? length));`

Constructs a new instance of `IterationItem`.



#### `return IterationList(
      iterable: _listSource.map(toElement),
      startIndex: startIndex,
      indexTake: indexTake,
    );`

Constructs a new instance of `IterationItem`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationItem`.



#### `_listSource.getRange(offset(start), offset(end));`

Constructs a new instance of `IterationItem`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `IterationItem`.



#### `assert(start >= 0 && length >= start && (end == null || (end >= start && length >= end)));`

Constructs a new instance of `IterationItem`.



#### `_listSource.sublist(offset(start), offset(end ?? length));`

Constructs a new instance of `IterationItem`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `IterationItem`.



#### `return IterationList(
      iterable: _listSource,
      startIndex: startIndex+count,
      indexTake: indexTake,
    );`

Constructs a new instance of `IterationItem`.



#### `return IterationList(
      iterable: _listSource,
      startIndex: startIndex,
      indexTake: indexTake+count,
    );`

Constructs a new instance of `IterationItem`.



#### `return IterationList(
      iterable: _listSource.whereType<T>(),
      startIndex: startIndex,
      indexTake: indexTake,
    );`

Constructs a new instance of `IterationItem`.



#### `return IterationList(
      iterable: _listSource.cast<R>(),
      startIndex: startIndex,
      indexTake: indexTake,
    );`

Constructs a new instance of `IterationItem`.



#### `items.fold(0, (i, item) => i + item.length);`

Constructs a new instance of `IterationItem`.



#### `HolderIterator(holder: items);`

Constructs a new instance of `IterationItem`.



#### `items.clear();`

Constructs a new instance of `IterationItem`.



#### `items.add(IterationList(iterable: List.filled(newLength-_sourceLength, null as E)));`

Constructs a new instance of `IterationItem`.



#### `throw StateError("Cannot have a sourceLength bigger than current when E isn't nullable.");`

Constructs a new instance of `IterationItem`.



#### `item.removeLast();`

Constructs a new instance of `IterationItem`.



#### `items.removeLast();`

Constructs a new instance of `IterationItem`.



#### `items.fold(0, (i, item) => i + item.length);`

Constructs a new instance of `IterationItem`.



#### `return item.elementAt(actualIndex);`

Constructs a new instance of `IterationItem`.



#### `throw IndexError.withLength(sourceIndex, length);`

Constructs a new instance of `IterationItem`.



#### `offset(length);`

Constructs a new instance of `IterationItem`.



#### `item.removeRange(actualStart, itemLen);`

Constructs a new instance of `IterationItem`.



#### `item.replaceRange(actualStart, actualEnd, replacements);`

Constructs a new instance of `IterationItem`.



#### `item.removeRange(actualStart, actualEnd);`

Constructs a new instance of `IterationItem`.



#### `items.removeRange(removeRangeStart, removeRangeEnd);`

Constructs a new instance of `IterationItem`.



#### `if (repPos == null) throw StateError('Cannot replace items in bad range.');`

Constructs a new instance of `IterationItem`.



#### `Replacements inserted as independent list
          items.insert(repPos, IterationList(
            iterable: replacements
          ));`

Constructs a new instance of `IterationItem`.



#### `removeAll.removeWhere((index) => index <=-1);`

Constructs a new instance of `IterationItem`.



#### `item.insertAll(actualIndex, iterable);`

Constructs a new instance of `IterationItem`.



#### `item.set(actualIndex, element);`

Constructs a new instance of `IterationItem`.



#### `action(entry.key, entry.value);`

Constructs a new instance of `IterationItem`.



#### `IterationItem(
    source: sourceEntries,
    startIndex: startIndex,
    indexTake: indexTake,
  );`

Constructs a new instance of `IterationItem`.



#### `entries.map((entry) => entry.key);`

Constructs a new instance of `IterationItem`.



#### `entries.map((entry) => entry.value);`

Constructs a new instance of `IterationItem`.



#### `return get(key);`

Constructs a new instance of `IterationItem`.



#### `get(Object? key);`

Constructs a new instance of `IterationItem`.



#### `IndexError.check(index, length);`

Constructs a new instance of `IterationItem`.



#### `return sourceEntries.elementAt(offset(index));`

Constructs a new instance of `IterationItem`.



#### `return keys.contains(key);`

Constructs a new instance of `IterationItem`.



#### `return values.contains(value);`

Constructs a new instance of `IterationItem`.



#### `set(key, value);`

Constructs a new instance of `IterationItem`.



#### `indexOfKey(key);`

Constructs a new instance of `IterationItem`.



#### `insert(index, key, value);`

Constructs a new instance of `IterationItem`.



#### `insert(length, key, value);`

Constructs a new instance of `IterationItem`.



#### `void insert(int index, K key, V element);`

Constructs a new instance of `IterationItem`.



#### `throw IndexError.withLength(index, length);`

Constructs a new instance of `IterationItem`.



#### `iterable.elementAt(i);`

Constructs a new instance of `IterationItem`.



#### `insert(index+i, entry.key, entry.value);`

Constructs a new instance of `IterationItem`.



#### `other.forEach(set);`

Constructs a new instance of `IterationItem`.



#### `set(entry.key, entry.value);`

Constructs a new instance of `IterationItem`.



#### `set(key, ifAbsent());`

Constructs a new instance of `IterationItem`.



#### `set(key, update(get(key) as V));`

Constructs a new instance of `IterationItem`.



#### `assert(ifAbsent != null);`

Constructs a new instance of `IterationItem`.



#### `set(key, ifAbsent!());`

Constructs a new instance of `IterationItem`.



#### `set(entry.key, update(entry.key, entry.value));`

Constructs a new instance of `IterationItem`.



#### `get(key as K);`

Constructs a new instance of `IterationItem`.



#### `removeAction(removeKeys: [key]);`

Constructs a new instance of `IterationItem`.



#### `getKey(indexOf(value as V));`

Constructs a new instance of `IterationItem`.



#### `removeAction(removeKeys: [remd as K]);`

Constructs a new instance of `IterationItem`.



#### `IndexError.check(index, length);`

Constructs a new instance of `IterationItem`.



#### `getEntry(index);`

Constructs a new instance of `IterationItem`.



#### `removeAction(removeAll: [index]);`

Constructs a new instance of `IterationItem`.



#### `throw StateError('No element at index $index was removed.');`

Constructs a new instance of `IterationItem`.



#### `return removeAt(length-1);`

Constructs a new instance of `IterationItem`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationItem`.



#### `removeAction(start: offset(start), end: offset(end));`

Constructs a new instance of `IterationItem`.



#### `keys.add(entry.key);`

Constructs a new instance of `IterationItem`.



#### `removeAction(removeKeys: keys);`

Constructs a new instance of `IterationItem`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationItem`.



#### `removeAction(start: offset(start), end: offset(end), replacements: replacements);`

Constructs a new instance of `IterationItem`.



#### `removeWhere((key, value) => !test(key, value));`

Constructs a new instance of `IterationItem`.



#### `removeAction(start: startIndex, end: offset(length));`

Constructs a new instance of `IterationItem`.



#### `mapList.add(convert(entry.key, entry.value));`

Constructs a new instance of `IterationItem`.



#### `return Map.fromEntries(mapList);`

Constructs a new instance of `IterationItem`.



#### `return IterationItemMap(
      map: this,
      startIndex: start,
      indexTake: length - end,
    );`

Constructs a new instance of `IterationItem`.



#### `LinkedHashMap();`

Constructs a new instance of `IterationItem`.



#### `getEntry(i);`

Constructs a new instance of `IterationItem`.



#### `return IterationItemMap(
      map: newMap,
      startIndex: 0,
      indexTake: 0,
    );`

Constructs a new instance of `IterationItem`.



#### `IterationItemMap(
    map: LinkedHashMap.fromEntries((entries as Iteration<MapEntry<K, V>>).reversed)
  );`

Constructs a new instance of `IterationItem`.



#### `return IterationItemMap(
      map: this,
      startIndex: count,
      indexTake: 0,
    );`

Constructs a new instance of `IterationItem`.



#### `return IterationItemMap(
      map: this,
      startIndex: 0,
      indexTake: count,
    );`

Constructs a new instance of `IterationItem`.



#### `keys.toList()
  ;`

Constructs a new instance of `IterationItem`.



#### `_keys.map((key) => MapEntry(key, _map[key] as V));`

Constructs a new instance of `IterationItem`.



#### `if (!_keys.contains(key)) _keys.add(key);`

Constructs a new instance of `IterationItem`.



#### `_insertCheck(index, key, element);`

Constructs a new instance of `IterationItem`.



#### `_keys.indexOf(key);`

Constructs a new instance of `IterationItem`.



#### `_keys.removeAt(i);`

Constructs a new instance of `IterationItem`.



#### `_keys.add(key);`

Constructs a new instance of `IterationItem`.



#### `_keys.insert(index, key);`

Constructs a new instance of `IterationItem`.



#### `offset(length);`

Constructs a new instance of `IterationItem`.



#### `_keys.getRange(start, end);`

Constructs a new instance of `IterationItem`.



#### `_keys.removeRange(start, end);`

Constructs a new instance of `IterationItem`.



#### `_map.removeWhere((key, val) => keys.contains(key));`

Constructs a new instance of `IterationItem`.



#### `removeAll.sort();`

Constructs a new instance of `IterationItem`.



#### `_map.remove(_keys.removeAt(index-removed));`

Constructs a new instance of `IterationItem`.



#### `_map.remove(key);`

Constructs a new instance of `IterationItem`.



### Fields

#### `final Iterable<E> source;`

Stores the value of `source` for this instance of `IterationItem`.



#### `override
  final int startIndex;`

Stores the value of `startIndex` for this instance of `IterationItem`.



#### `override
  final int indexTake;`

Stores the value of `indexTake` for this instance of `IterationItem`.



#### `iterator;`

Stores the value of `iterator` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `items;`

Stores the value of `items` for this instance of `IterationItem`.



#### `override
  final int startIndex;`

Stores the value of `startIndex` for this instance of `IterationItem`.



#### `override
  final int indexTake;`

Stores the value of `indexTake` for this instance of `IterationItem`.



#### `override
  final int sourceLength;`

Stores the value of `sourceLength` for this instance of `IterationItem`.



#### `sourceIndex;`

Stores the value of `sourceIndex` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationItem`.



#### `indexTake
  ;`

Stores the value of `indexTake` for this instance of `IterationItem`.



#### `int _startIndex;`

Stores the value of `_startIndex` for this instance of `IterationItem`.



#### `_startIndex;`

Stores the value of `_startIndex` for this instance of `IterationItem`.



#### `int _indexTake;`

Stores the value of `_indexTake` for this instance of `IterationItem`.



#### `_indexTake;`

Stores the value of `_indexTake` for this instance of `IterationItem`.



#### `newLength;`

Stores the value of `newLength` for this instance of `IterationItem`.



#### `return;`

Stores the value of `return` for this instance of `IterationItem`.



#### `right;`

Stores the value of `right` for this instance of `IterationItem`.



#### `temp;`

Stores the value of `temp` for this instance of `IterationItem`.



#### `return;`

Stores the value of `return` for this instance of `IterationItem`.



#### `third;`

Stores the value of `third` for this instance of `IterationItem`.



#### `third;`

Stores the value of `third` for this instance of `IterationItem`.



#### `tmp;`

Stores the value of `tmp` for this instance of `IterationItem`.



#### `pivot1;`

Stores the value of `pivot1` for this instance of `IterationItem`.



#### `tmp1;`

Stores the value of `tmp1` for this instance of `IterationItem`.



#### `pivot2;`

Stores the value of `pivot2` for this instance of `IterationItem`.



#### `tmp2;`

Stores the value of `tmp2` for this instance of `IterationItem`.



#### `less;`

Stores the value of `less` for this instance of `IterationItem`.



#### `great;`

Stores the value of `great` for this instance of `IterationItem`.



#### `tmp;`

Stores the value of `tmp` for this instance of `IterationItem`.



#### `tmp;`

Stores the value of `tmp` for this instance of `IterationItem`.



#### `tmp;`

Stores the value of `tmp` for this instance of `IterationItem`.



#### `tmp;`

Stores the value of `tmp` for this instance of `IterationItem`.



#### `tmp;`

Stores the value of `tmp` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `skipCount;`

Stores the value of `skipCount` for this instance of `IterationItem`.



#### `start;`

Stores the value of `start` for this instance of `IterationItem`.



#### `end;`

Stores the value of `end` for this instance of `IterationItem`.



#### `start;`

Stores the value of `start` for this instance of `IterationItem`.



#### `end;`

Stores the value of `end` for this instance of `IterationItem`.



#### `return true;`

Stores the value of `true` for this instance of `IterationItem`.



#### `return false;`

Stores the value of `false` for this instance of `IterationItem`.



#### `return removed;`

Stores the value of `removed` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `other;`

Stores the value of `other` for this instance of `IterationItem`.



#### `reversed;`

Stores the value of `reversed` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `start;`

Stores the value of `start` for this instance of `IterationItem`.



#### `final List<E> _listSource;`

Stores the value of `_listSource` for this instance of `IterationItem`.



#### `final Iterable<E> source;`

Stores the value of `source` for this instance of `IterationItem`.



#### `iterator;`

Stores the value of `iterator` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `newLength;`

Stores the value of `newLength` for this instance of `IterationItem`.



#### `element;`

Stores the value of `element` for this instance of `IterationItem`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `start;`

Stores the value of `start` for this instance of `IterationItem`.



#### `removed;`

Stores the value of `removed` for this instance of `IterationItem`.



#### `return count;`

Stores the value of `count` for this instance of `IterationItem`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationItem`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationItem`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationItem`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationItem`.



#### `items;`

Stores the value of `items` for this instance of `IterationItem`.



#### `_sourceLength;`

Stores the value of `_sourceLength` for this instance of `IterationItem`.



#### `newLength;`

Stores the value of `newLength` for this instance of `IterationItem`.



#### `break;`

Stores the value of `break` for this instance of `IterationItem`.



#### `break;`

Stores the value of `break` for this instance of `IterationItem`.



#### `amount;`

Stores the value of `amount` for this instance of `IterationItem`.



#### `sourceIndex;`

Stores the value of `sourceIndex` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationItem`.



#### `break;`

Stores the value of `break` for this instance of `IterationItem`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationItem`.



#### `start;`

Stores the value of `start` for this instance of `IterationItem`.



#### `end;`

Stores the value of `end` for this instance of `IterationItem`.



#### `repPos;`

Stores the value of `repPos` for this instance of `IterationItem`.



#### `false;`

Stores the value of `false` for this instance of `IterationItem`.



#### `removeRangeStart;`

Stores the value of `removeRangeStart` for this instance of `IterationItem`.



#### `removeRangeEnd;`

Stores the value of `removeRangeEnd` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `itemLen;`

Stores the value of `itemLen` for this instance of `IterationItem`.



#### `itemLen;`

Stores the value of `itemLen` for this instance of `IterationItem`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationItem`.



#### `i;`

Stores the value of `i` for this instance of `IterationItem`.



#### `i;`

Stores the value of `i` for this instance of `IterationItem`.



#### `itemLen;`

Stores the value of `itemLen` for this instance of `IterationItem`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationItem`.



#### `true;`

Stores the value of `true` for this instance of `IterationItem`.



#### `break;`

Stores the value of `break` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `start;`

Stores the value of `start` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationItem`.



#### `removed;`

Stores the value of `removed` for this instance of `IterationItem`.



#### `return count;`

Stores the value of `count` for this instance of `IterationItem`.



#### `index;`

Stores the value of `index` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationItem`.



#### `break;`

Stores the value of `break` for this instance of `IterationItem`.



#### `index;`

Stores the value of `index` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationItem`.



#### `break;`

Stores the value of `break` for this instance of `IterationItem`.



#### `indexTake
  ;`

Stores the value of `indexTake` for this instance of `IterationItem`.



#### `int _startIndex;`

Stores the value of `_startIndex` for this instance of `IterationItem`.



#### `_startIndex;`

Stores the value of `_startIndex` for this instance of `IterationItem`.



#### `int _indexTake;`

Stores the value of `_indexTake` for this instance of `IterationItem`.



#### `_indexTake;`

Stores the value of `_indexTake` for this instance of `IterationItem`.



#### `get sourceEntries;`

Stores the value of `sourceEntries` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `value;`

Stores the value of `value` for this instance of `IterationItem`.



#### `key;`

Stores the value of `key` for this instance of `IterationItem`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationItem`.



#### `indexTake;`

Stores the value of `indexTake` for this instance of `IterationItem`.



#### `return i;`

Stores the value of `i` for this instance of `IterationItem`.



#### `length;`

Stores the value of `length` for this instance of `IterationItem`.



#### `old;`

Stores the value of `old` for this instance of `IterationItem`.



#### `return old;`

Stores the value of `old` for this instance of `IterationItem`.



#### `remd;`

Stores the value of `remd` for this instance of `IterationItem`.



#### `return remd;`

Stores the value of `remd` for this instance of `IterationItem`.



#### `return removed;`

Stores the value of `removed` for this instance of `IterationItem`.



#### `start;`

Stores the value of `start` for this instance of `IterationItem`.



#### `itake;`

Stores the value of `itake` for this instance of `IterationItem`.



#### `value;`

Stores the value of `value` for this instance of `IterationItem`.



#### `final Map<K, V> _map;`

Stores the value of `_map` for this instance of `IterationItem`.



#### `final List<K> _keys;`

Stores the value of `_keys` for this instance of `IterationItem`.



#### `value;`

Stores the value of `value` for this instance of `IterationItem`.



#### `element;`

Stores the value of `element` for this instance of `IterationItem`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationItem`.



#### `start;`

Stores the value of `start` for this instance of `IterationItem`.



#### `start;`

Stores the value of `start` for this instance of `IterationItem`.



#### `removed;`

Stores the value of `removed` for this instance of `IterationItem`.



#### `return count;`

Stores the value of `count` for this instance of `IterationItem`.





### Methods

#### `override
  E sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `IterationItem`.



#### `override
  E sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `IterationItem`.



#### `for (var item in items) {`

Executes the `for` operation defined in `IterationItem`.



#### `if (actualIndex >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `IterationItem`.



#### `override
  set length(int newLength) {`

Executes the `length` operation defined in `IterationItem`.



#### `if (newLength != 0) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (newLength > sourceLength) {`

Executes the `if` operation defined in `IterationItem`.



#### `override
  void shuffle([Random? random]) {`

Executes the `shuffle` operation defined in `IterationItem`.



#### `sort((a, b) {`

Executes the `sort` operation defined in `IterationItem`.



#### `override
  void sort([int Function(E a, E b)? compare]) {`

Executes the `sort` operation defined in `IterationItem`.



#### `if (a is Comparable && b is Comparable) {`

Executes the `if` operation defined in `IterationItem`.



#### `void dualPivotQuickSort(int left, int right) {`

Executes the `dualPivotQuickSort` operation defined in `IterationItem`.



#### `if (right - left < threshold) {`

Executes the `if` operation defined in `IterationItem`.



#### `while (j >= left && compare!(this[j], temp) > 0) {`

Executes the `while` operation defined in `IterationItem`.



#### `if (compare!(this[m1], this[m2]) > 0) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (compare(this[k], pivot1) < 0) {`

Executes the `if` operation defined in `IterationItem`.



#### `else if (compare(this[k], pivot2) > 0) {`

Executes the `if` operation defined in `IterationItem`.



#### `while (k < great && compare(this[great], pivot2) > 0) {`

Executes the `while` operation defined in `IterationItem`.



#### `if (compare(this[k], pivot1) < 0) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (length > 1) {`

Executes the `if` operation defined in `IterationItem`.



#### `override
  void add(E element) {`

Executes the `add` operation defined in `IterationItem`.



#### `override
  void addAll(Iterable<E> iterable) {`

Executes the `addAll` operation defined in `IterationItem`.



#### `override
  void insert(int index, E element) {`

Executes the `insert` operation defined in `IterationItem`.



#### `override
  void insertAll(int index, Iterable<E> iterable) {`

Executes the `insertAll` operation defined in `IterationItem`.



#### `if (index < 0 || index > length) {`

Executes the `if` operation defined in `IterationItem`.



#### `override
  set first(E value) {`

Executes the `first` operation defined in `IterationItem`.



#### `override
  set last(E value) {`

Executes the `last` operation defined in `IterationItem`.



#### `override
  void setAll(int index, Iterable<E> iterable) {`

Executes the `setAll` operation defined in `IterationItem`.



#### `override
  void setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0]) {`

Executes the `setRange` operation defined in `IterationItem`.



#### `override
  void fillRange(int start, int end, [E? fillValue]) {`

Executes the `fillRange` operation defined in `IterationItem`.



#### `override
  bool remove(Object? value) {`

Executes the `remove` operation defined in `IterationItem`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `IterationItem`.



#### `override
  E removeAt(int index) {`

Executes the `removeAt` operation defined in `IterationItem`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `IterationItem`.



#### `override
  E removeLast() {`

Executes the `removeLast` operation defined in `IterationItem`.



#### `override
  void removeRange(int start, int end) {`

Executes the `removeRange` operation defined in `IterationItem`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `IterationItem`.



#### `override
  void removeWhere(bool Function(E element) test) {`

Executes the `removeWhere` operation defined in `IterationItem`.



#### `if (test(elm)) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `IterationItem`.



#### `override
  void replaceRange(int start, int end, Iterable<E> replacements) {`

Executes the `replaceRange` operation defined in `IterationItem`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `IterationItem`.



#### `override
  void retainWhere(bool Function(E element) test) {`

Executes the `retainWhere` operation defined in `IterationItem`.



#### `override
  void clear() {`

Executes the `clear` operation defined in `IterationItem`.



#### `T Function(E e) toElement) {`

Executes the `Function` operation defined in `IterationItem`.



#### `override
  Iteration<E> followedBy(Iterable<E> other) {`

Executes the `followedBy` operation defined in `IterationItem`.



#### `Iterable<T> Function(E element) toElements) {`

Executes the `Function` operation defined in `IterationItem`.



#### `override
  IterationBase<E> sublist(int start, [int? end]) {`

Executes the `sublist` operation defined in `IterationItem`.



#### `i<end; i++) {
      newI.add(elementAt(i));
    }
    return IterationList(
      iterable: newI,
    );
  }
  
  @override
  Iteration<E> skip(int count) {`

Executes the `skip` operation defined in `IterationItem`.



#### `override
  Iteration<E> take(int count) {`

Executes the `take` operation defined in `IterationItem`.



#### `override
  set sourceLength(int newLength) {`

Executes the `sourceLength` operation defined in `IterationItem`.



#### `if (newLength == 0) {`

Executes the `if` operation defined in `IterationItem`.



#### `override
  void sourceLengthBeenModified(int amount) {`

Executes the `sourceLengthBeenModified` operation defined in `IterationItem`.



#### `override
  E sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `IterationItem`.



#### `override
  void shuffle([Random? random]) {`

Executes the `shuffle` operation defined in `IterationItem`.



#### `override
  void set(int index, E element) {`

Executes the `set` operation defined in `IterationItem`.



#### `override
  void sourceInsertAll(int index, Iterable<E> iterable) {`

Executes the `sourceInsertAll` operation defined in `IterationItem`.



#### `if (iterable.length == 1) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (_listSource.remove(value)) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (start != null || end != null || replacements != null) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (replacements != null) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (removeAll != null) {`

Executes the `if` operation defined in `IterationItem`.



#### `for (var index in removeAll) {`

Executes the `for` operation defined in `IterationItem`.



#### `override
  int indexOf(E element, [int start = 0]) {`

Executes the `indexOf` operation defined in `IterationItem`.



#### `override
  int indexWhere(bool Function(E element) test, [int start = 0]) {`

Executes the `indexWhere` operation defined in `IterationItem`.



#### `override
  int lastIndexOf(E element, [int? start]) {`

Executes the `lastIndexOf` operation defined in `IterationItem`.



#### `override
  int lastIndexWhere(bool Function(E element) test, [int? start]) {`

Executes the `lastIndexWhere` operation defined in `IterationItem`.



#### `T Function(E e) toElement) {`

Executes the `Function` operation defined in `IterationItem`.



#### `override
  IterationBase<E> getRange(int start, int end) {`

Executes the `getRange` operation defined in `IterationItem`.



#### `override
  IterationBase<E> sublist(int start, [int? end]) {`

Executes the `sublist` operation defined in `IterationItem`.



#### `override
  Iteration<E> skip(int count) {`

Executes the `skip` operation defined in `IterationItem`.



#### `override
  Iteration<E> take(int count) {`

Executes the `take` operation defined in `IterationItem`.



#### `override
  set sourceLength(int newLength) {`

Executes the `sourceLength` operation defined in `IterationItem`.



#### `if (newLength == 0) {`

Executes the `if` operation defined in `IterationItem`.



#### `else if (newLength > _sourceLength) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (null is E) {`

Executes the `if` operation defined in `IterationItem`.



#### `else if (newLength < _sourceLength && newLength >= 0) {`

Executes the `if` operation defined in `IterationItem`.



#### `while (count != 0) {`

Executes the `while` operation defined in `IterationItem`.



#### `if (item.isEmpty) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (remove != 0) {`

Executes the `if` operation defined in `IterationItem`.



#### `while (remove != 0) {`

Executes the `while` operation defined in `IterationItem`.



#### `override
  void sourceLengthBeenModified(int amount) {`

Executes the `sourceLengthBeenModified` operation defined in `IterationItem`.



#### `override
  E sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `IterationItem`.



#### `for (var item in items) {`

Executes the `for` operation defined in `IterationItem`.



#### `if (actualIndex >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (value is E) {`

Executes the `if` operation defined in `IterationItem`.



#### `for (var lis in items) {`

Executes the `for` operation defined in `IterationItem`.



#### `if (lis.remove(value)) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (start != null || end != null || replacements != null) {`

Executes the `if` operation defined in `IterationItem`.



#### `skip it
        if (actualStart >= itemLen || item.isEmpty) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (repPos == null) {`

Executes the `if` operation defined in `IterationItem`.



#### `If the removal range extends beyond this sublist
        if (actualEnd >= itemLen) {`

Executes the `if` operation defined in `IterationItem`.



#### `Partial removal from actualStart to end of sublist
          if (removeRangeStart == null) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (actualEnd != 0) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (replacements != null && internalReplace) {`

Executes the `if` operation defined in `IterationItem`.



#### `Remove any sublists fully covered by the range
      if (removeRangeStart != null) {`

Executes the `if` operation defined in `IterationItem`.



#### `Apply replacements if provided
      if (replacements != null) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (!internalReplace) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (removeAll != null) {`

Executes the `if` operation defined in `IterationItem`.



#### `for (var item in items) {`

Executes the `for` operation defined in `IterationItem`.



#### `if (removeAll[i] >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (item.remove(removeAll[i])) {`

Executes the `if` operation defined in `IterationItem`.



#### `override
  void sourceInsertAll(int index, Iterable<E> iterable) {`

Executes the `sourceInsertAll` operation defined in `IterationItem`.



#### `for (var item in items) {`

Executes the `for` operation defined in `IterationItem`.



#### `if (actualIndex >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `IterationItem`.



#### `override
  void set(int index, E element) {`

Executes the `set` operation defined in `IterationItem`.



#### `for (var item in items) {`

Executes the `for` operation defined in `IterationItem`.



#### `if (actualIndex >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `IterationItem`.



#### `override
  void forEach(void Function(K key, V value) action) {`

Executes the `forEach` operation defined in `IterationItem`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationItem`.



#### `MapEntry<K, V> getEntry(int index) {`

Executes the `getEntry` operation defined in `IterationItem`.



#### `override
  V sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `IterationItem`.



#### `K getKey(int index) {`

Executes the `getKey` operation defined in `IterationItem`.



#### `int indexOfKey(K key, [int start=0]) {`

Executes the `indexOfKey` operation defined in `IterationItem`.



#### `override
  bool containsKey(Object? key) {`

Executes the `containsKey` operation defined in `IterationItem`.



#### `override
  bool containsValue(Object? value) {`

Executes the `containsValue` operation defined in `IterationItem`.



#### `void set(K key, V value) {`

Executes the `set` operation defined in `IterationItem`.



#### `if (index != -1) {`

Executes the `if` operation defined in `IterationItem`.



#### `void insertAll(int index, Iterable<MapEntry<K, V>> iterable) {`

Executes the `insertAll` operation defined in `IterationItem`.



#### `if (index < 0 || index > length) {`

Executes the `if` operation defined in `IterationItem`.



#### `override
  void addAll(Map<K, V> other) {`

Executes the `addAll` operation defined in `IterationItem`.



#### `override
  void addEntries(Iterable<MapEntry<K, V>> newEntries) {`

Executes the `addEntries` operation defined in `IterationItem`.



#### `for (var entry in newEntries) {`

Executes the `for` operation defined in `IterationItem`.



#### `override
  V putIfAbsent(K key, V Function() ifAbsent) {`

Executes the `putIfAbsent` operation defined in `IterationItem`.



#### `if (!containsKey(key)) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (containsKey(key)) {`

Executes the `if` operation defined in `IterationItem`.



#### `override
  void updateAll(V Function(K key, V value) update) {`

Executes the `updateAll` operation defined in `IterationItem`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationItem`.



#### `remove(Object? key) {`

Executes the `remove` operation defined in `IterationItem`.



#### `if (containsKey(key)) {`

Executes the `if` operation defined in `IterationItem`.



#### `removeValue(Object? value) {`

Executes the `removeValue` operation defined in `IterationItem`.



#### `if (containsValue(value)) {`

Executes the `if` operation defined in `IterationItem`.



#### `MapEntry<K, V> removeAt(int index) {`

Executes the `removeAt` operation defined in `IterationItem`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `IterationItem`.



#### `MapEntry<K, V> removeLast() {`

Executes the `removeLast` operation defined in `IterationItem`.



#### `An empty range (with `end == start`) is valid.
  void removeRange(int start, int end) {`

Executes the `range` operation defined in `IterationItem`.



#### `override
  void removeWhere(bool Function(K key, V value) test) {`

Executes the `removeWhere` operation defined in `IterationItem`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationItem`.



#### `if (test(entry.key, entry.value)) {`

Executes the `if` operation defined in `IterationItem`.



#### `An empty range (with `end == start`) is valid.
  void replaceRange(int start, int end, Iterable<MapEntry<K, V>> replacements) {`

Executes the `range` operation defined in `IterationItem`.



#### `void retainWhere(bool Function(K key, V value) test) {`

Executes the `retainWhere` operation defined in `IterationItem`.



#### `override
  void clear() {`

Executes the `clear` operation defined in `IterationItem`.



#### `MapEntry<K2, V2> Function(K key, V value) convert) {`

Executes the `Function` operation defined in `IterationItem`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationItem`.



#### `override
  IterationMap<K, V> getRange(int start, int end) {`

Executes the `getRange` operation defined in `IterationItem`.



#### `override
  IterationMap<K, V> sublist(int start, [int? end]) {`

Executes the `sublist` operation defined in `IterationItem`.



#### `override
  IterationMap<K, V> skip(int count) {`

Executes the `skip` operation defined in `IterationItem`.



#### `override
  IterationMap<K, V> take(int count) {`

Executes the `take` operation defined in `IterationItem`.



#### `override
  void set(K key, V value) {`

Executes the `set` operation defined in `IterationItem`.



#### `override
  void insert(int index, K key, V element) {`

Executes the `insert` operation defined in `IterationItem`.



#### `bool _insertCheck(int index, K key, V element) {`

Executes the `_insertCheck` operation defined in `IterationItem`.



#### `if (i > -1 && index > i) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (index == _keys.length) {`

Executes the `if` operation defined in `IterationItem`.



#### `get(Object? key) {`

Executes the `get` operation defined in `IterationItem`.



#### `if (start != null || end != null || replacements != null) {`

Executes the `if` operation defined in `IterationItem`.



#### `if (replacements != null) {`

Executes the `if` operation defined in `IterationItem`.



#### `for (var replacement in replacements) {`

Executes the `for` operation defined in `IterationItem`.



#### `if (removeAll != null) {`

Executes the `if` operation defined in `IterationItem`.



#### `for (var index in removeAll) {`

Executes the `for` operation defined in `IterationItem`.



#### `if (removeKeys != null) {`

Executes the `if` operation defined in `IterationItem`.



#### `for (var key in removeKeys) {`

Executes the `for` operation defined in `IterationItem`.



#### `if (_keys.remove(key)) {`

Executes the `if` operation defined in `IterationItem`.


