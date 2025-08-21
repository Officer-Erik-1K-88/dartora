# IterationBase

This class `IterationBase` is part of the `collections` module of the Dartora library. It defines behavior and data structures as implemented in the source code.

_Defined in: `src/collections/iteration.dart`_

_Import_: `package:dartora/collections/iteration.dart`


---


### Constructors

#### `set sourceLength(int newLength);`

Constructs a new instance of `IterationBase`.



#### `void sourceLengthBeenModified(int amount);`

Constructs a new instance of `IterationBase`.



#### `abs();`

Constructs a new instance of `IterationBase`.



#### `clear();`

Constructs a new instance of `IterationBase`.



#### `Random();`

Constructs a new instance of `IterationBase`.



#### `return (a as Comparable).compareTo(b);`

Constructs a new instance of `IterationBase`.



#### `throw ArgumentError(
          'Elements must be Comparable if no compare function is provided.');`

Constructs a new instance of `IterationBase`.



#### `Left side of pivot1
      dualPivotQuickSort(left, less - 1);`

Constructs a new instance of `IterationBase`.



#### `Between pivot1 and pivot2
      dualPivotQuickSort(less + 1, great - 1);`

Constructs a new instance of `IterationBase`.



#### `Right side of pivot2
      dualPivotQuickSort(great + 1, right);`

Constructs a new instance of `IterationBase`.



#### `dualPivotQuickSort(0, length - 1);`

Constructs a new instance of `IterationBase`.



#### `insert(length, element);`

Constructs a new instance of `IterationBase`.



#### `insertAll(length, iterable);`

Constructs a new instance of `IterationBase`.



#### `insertAll(index, [element]);`

Constructs a new instance of `IterationBase`.



#### `throw IndexError.withLength(index, length);`

Constructs a new instance of `IterationBase`.



#### `sourceInsertAll(offset(index), iterable);`

Constructs a new instance of `IterationBase`.



#### `sourceLengthBeenModified(iterable.length);`

Constructs a new instance of `IterationBase`.



#### `void sourceInsertAll(int index, Iterable<E> iterable);`

Constructs a new instance of `IterationBase`.



#### `set(index, value);`

Constructs a new instance of `IterationBase`.



#### `set(0, value);`

Constructs a new instance of `IterationBase`.



#### `set(length-1, value);`

Constructs a new instance of `IterationBase`.



#### `void set(int index, E element);`

Constructs a new instance of `IterationBase`.



#### `assert(iterable.length < (length - index));`

Constructs a new instance of `IterationBase`.



#### `set(index+i, iterable.elementAt(i));`

Constructs a new instance of `IterationBase`.



#### `assert(
      start >= 0 &&
      end >= start &&
      length >= end &&
      (iterable.length-skipCount) == (end - start)
    );`

Constructs a new instance of `IterationBase`.



#### `set(i, iterable.elementAt(j));`

Constructs a new instance of `IterationBase`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationBase`.



#### `assert(fillValue != null || null is E);`

Constructs a new instance of `IterationBase`.



#### `set(i, fillValue as E);`

Constructs a new instance of `IterationBase`.



#### `removeAction(value:value);`

Constructs a new instance of `IterationBase`.



#### `sourceLengthBeenModified(-remd);`

Constructs a new instance of `IterationBase`.



#### `IndexError.check(index, length);`

Constructs a new instance of `IterationBase`.



#### `elementAt(index);`

Constructs a new instance of `IterationBase`.



#### `removeAction(removeAll: [index]);`

Constructs a new instance of `IterationBase`.



#### `sourceLengthBeenModified(-remd);`

Constructs a new instance of `IterationBase`.



#### `throw StateError('No element at index $index was removed.');`

Constructs a new instance of `IterationBase`.



#### `return removeAt(length-1);`

Constructs a new instance of `IterationBase`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationBase`.



#### `removeAction(start: offset(start), end: offset(end));`

Constructs a new instance of `IterationBase`.



#### `sourceLengthBeenModified(-remd);`

Constructs a new instance of `IterationBase`.



#### `elementAt(i);`

Constructs a new instance of `IterationBase`.



#### `indexes.add(offset(i));`

Constructs a new instance of `IterationBase`.



#### `removeAction(removeAll: indexes);`

Constructs a new instance of `IterationBase`.



#### `sourceLengthBeenModified(-remd);`

Constructs a new instance of `IterationBase`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationBase`.



#### `removeAction(start: offset(start), end: offset(end), replacements: replacements);`

Constructs a new instance of `IterationBase`.



#### `sourceLengthBeenModified(-remd);`

Constructs a new instance of `IterationBase`.



#### `removeWhere((elm) => !test(elm));`

Constructs a new instance of `IterationBase`.



#### `return IterationList(
      iterable: toList().map(toElement),
    );`

Constructs a new instance of `IterationBase`.



#### `toList();`

Constructs a new instance of `IterationBase`.



#### `newI.addAll(other);`

Constructs a new instance of `IterationBase`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `IterationBase`.



#### `toList().expand<T>(toElements);`

Constructs a new instance of `IterationBase`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `IterationBase`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `IterationBase`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `IterationBase`.



#### `assert(start >= 0 && length >= start && (end == null || (end >= start && length >= end)));`

Constructs a new instance of `IterationBase`.



#### `return IterationList(
      iterable: this,
      startIndex: count,
    );`

Constructs a new instance of `IterationBase`.



#### `return IterationList(
      iterable: this,
      indexTake: count,
    );`

Constructs a new instance of `IterationBase`.



#### `return IterationList(
      iterable: toList().whereType<T>(),
    );`

Constructs a new instance of `IterationBase`.



#### `return IterationList(
      iterable: toList().cast<R>(),
    );`

Constructs a new instance of `IterationBase`.



#### `List.from(iterable)
  ;`

Constructs a new instance of `IterationBase`.



#### `_listSource.clear();`

Constructs a new instance of `IterationBase`.



#### `return _listSource.elementAt(sourceIndex);`

Constructs a new instance of `IterationBase`.



#### `_listSource.shuffle(random);`

Constructs a new instance of `IterationBase`.



#### `_listSource.insert(offset(index), iterable.single);`

Constructs a new instance of `IterationBase`.



#### `_listSource.insertAll(offset(index), iterable);`

Constructs a new instance of `IterationBase`.



#### `offset(length);`

Constructs a new instance of `IterationBase`.



#### `_listSource.replaceRange(start, end, replacements);`

Constructs a new instance of `IterationBase`.



#### `_listSource.removeRange(start, end);`

Constructs a new instance of `IterationBase`.



#### `removeAll.sort();`

Constructs a new instance of `IterationBase`.



#### `_listSource.removeAt(index-removed);`

Constructs a new instance of `IterationBase`.



#### `_listSource.indexOf(element, offset(start));`

Constructs a new instance of `IterationBase`.



#### `_listSource.indexWhere(test, offset(start));`

Constructs a new instance of `IterationBase`.



#### `_listSource.lastIndexOf(element, offset(start ?? length));`

Constructs a new instance of `IterationBase`.



#### `_listSource.lastIndexWhere(test, offset(start ?? length));`

Constructs a new instance of `IterationBase`.



#### `return IterationList(
      iterable: _listSource.map(toElement),
      startIndex: startIndex,
      indexTake: indexTake,
    );`

Constructs a new instance of `IterationBase`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationBase`.



#### `_listSource.getRange(offset(start), offset(end));`

Constructs a new instance of `IterationBase`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `IterationBase`.



#### `assert(start >= 0 && length >= start && (end == null || (end >= start && length >= end)));`

Constructs a new instance of `IterationBase`.



#### `_listSource.sublist(offset(start), offset(end ?? length));`

Constructs a new instance of `IterationBase`.



#### `return IterationList(
      iterable: newI,
    );`

Constructs a new instance of `IterationBase`.



#### `return IterationList(
      iterable: _listSource,
      startIndex: startIndex+count,
      indexTake: indexTake,
    );`

Constructs a new instance of `IterationBase`.



#### `return IterationList(
      iterable: _listSource,
      startIndex: startIndex,
      indexTake: indexTake+count,
    );`

Constructs a new instance of `IterationBase`.



#### `return IterationList(
      iterable: _listSource.whereType<T>(),
      startIndex: startIndex,
      indexTake: indexTake,
    );`

Constructs a new instance of `IterationBase`.



#### `return IterationList(
      iterable: _listSource.cast<R>(),
      startIndex: startIndex,
      indexTake: indexTake,
    );`

Constructs a new instance of `IterationBase`.



#### `items.fold(0, (i, item) => i + item.length);`

Constructs a new instance of `IterationBase`.



#### `HolderIterator(holder: items);`

Constructs a new instance of `IterationBase`.



#### `items.clear();`

Constructs a new instance of `IterationBase`.



#### `items.add(IterationList(iterable: List.filled(newLength-_sourceLength, null as E)));`

Constructs a new instance of `IterationBase`.



#### `throw StateError("Cannot have a sourceLength bigger than current when E isn't nullable.");`

Constructs a new instance of `IterationBase`.



#### `item.removeLast();`

Constructs a new instance of `IterationBase`.



#### `items.removeLast();`

Constructs a new instance of `IterationBase`.



#### `items.fold(0, (i, item) => i + item.length);`

Constructs a new instance of `IterationBase`.



#### `return item.elementAt(actualIndex);`

Constructs a new instance of `IterationBase`.



#### `throw IndexError.withLength(sourceIndex, length);`

Constructs a new instance of `IterationBase`.



#### `offset(length);`

Constructs a new instance of `IterationBase`.



#### `item.removeRange(actualStart, itemLen);`

Constructs a new instance of `IterationBase`.



#### `item.replaceRange(actualStart, actualEnd, replacements);`

Constructs a new instance of `IterationBase`.



#### `item.removeRange(actualStart, actualEnd);`

Constructs a new instance of `IterationBase`.



#### `items.removeRange(removeRangeStart, removeRangeEnd);`

Constructs a new instance of `IterationBase`.



#### `if (repPos == null) throw StateError('Cannot replace items in bad range.');`

Constructs a new instance of `IterationBase`.



#### `Replacements inserted as independent list
          items.insert(repPos, IterationList(
            iterable: replacements
          ));`

Constructs a new instance of `IterationBase`.



#### `removeAll.removeWhere((index) => index <=-1);`

Constructs a new instance of `IterationBase`.



#### `item.insertAll(actualIndex, iterable);`

Constructs a new instance of `IterationBase`.



#### `item.set(actualIndex, element);`

Constructs a new instance of `IterationBase`.



#### `action(entry.key, entry.value);`

Constructs a new instance of `IterationBase`.



#### `IterationItem(
    source: sourceEntries,
    startIndex: startIndex,
    indexTake: indexTake,
  );`

Constructs a new instance of `IterationBase`.



#### `entries.map((entry) => entry.key);`

Constructs a new instance of `IterationBase`.



#### `entries.map((entry) => entry.value);`

Constructs a new instance of `IterationBase`.



#### `return get(key);`

Constructs a new instance of `IterationBase`.



#### `get(Object? key);`

Constructs a new instance of `IterationBase`.



#### `IndexError.check(index, length);`

Constructs a new instance of `IterationBase`.



#### `return sourceEntries.elementAt(offset(index));`

Constructs a new instance of `IterationBase`.



#### `return keys.contains(key);`

Constructs a new instance of `IterationBase`.



#### `return values.contains(value);`

Constructs a new instance of `IterationBase`.



#### `set(key, value);`

Constructs a new instance of `IterationBase`.



#### `indexOfKey(key);`

Constructs a new instance of `IterationBase`.



#### `insert(index, key, value);`

Constructs a new instance of `IterationBase`.



#### `insert(length, key, value);`

Constructs a new instance of `IterationBase`.



#### `void insert(int index, K key, V element);`

Constructs a new instance of `IterationBase`.



#### `throw IndexError.withLength(index, length);`

Constructs a new instance of `IterationBase`.



#### `iterable.elementAt(i);`

Constructs a new instance of `IterationBase`.



#### `insert(index+i, entry.key, entry.value);`

Constructs a new instance of `IterationBase`.



#### `other.forEach(set);`

Constructs a new instance of `IterationBase`.



#### `set(entry.key, entry.value);`

Constructs a new instance of `IterationBase`.



#### `set(key, ifAbsent());`

Constructs a new instance of `IterationBase`.



#### `set(key, update(get(key) as V));`

Constructs a new instance of `IterationBase`.



#### `assert(ifAbsent != null);`

Constructs a new instance of `IterationBase`.



#### `set(key, ifAbsent!());`

Constructs a new instance of `IterationBase`.



#### `set(entry.key, update(entry.key, entry.value));`

Constructs a new instance of `IterationBase`.



#### `get(key as K);`

Constructs a new instance of `IterationBase`.



#### `removeAction(removeKeys: [key]);`

Constructs a new instance of `IterationBase`.



#### `getKey(indexOf(value as V));`

Constructs a new instance of `IterationBase`.



#### `removeAction(removeKeys: [remd as K]);`

Constructs a new instance of `IterationBase`.



#### `IndexError.check(index, length);`

Constructs a new instance of `IterationBase`.



#### `getEntry(index);`

Constructs a new instance of `IterationBase`.



#### `removeAction(removeAll: [index]);`

Constructs a new instance of `IterationBase`.



#### `throw StateError('No element at index $index was removed.');`

Constructs a new instance of `IterationBase`.



#### `return removeAt(length-1);`

Constructs a new instance of `IterationBase`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationBase`.



#### `removeAction(start: offset(start), end: offset(end));`

Constructs a new instance of `IterationBase`.



#### `keys.add(entry.key);`

Constructs a new instance of `IterationBase`.



#### `removeAction(removeKeys: keys);`

Constructs a new instance of `IterationBase`.



#### `assert(start >= 0 && end >= start && length >= end);`

Constructs a new instance of `IterationBase`.



#### `removeAction(start: offset(start), end: offset(end), replacements: replacements);`

Constructs a new instance of `IterationBase`.



#### `removeWhere((key, value) => !test(key, value));`

Constructs a new instance of `IterationBase`.



#### `removeAction(start: startIndex, end: offset(length));`

Constructs a new instance of `IterationBase`.



#### `mapList.add(convert(entry.key, entry.value));`

Constructs a new instance of `IterationBase`.



#### `return Map.fromEntries(mapList);`

Constructs a new instance of `IterationBase`.



#### `return IterationItemMap(
      map: this,
      startIndex: start,
      indexTake: length - end,
    );`

Constructs a new instance of `IterationBase`.



#### `LinkedHashMap();`

Constructs a new instance of `IterationBase`.



#### `getEntry(i);`

Constructs a new instance of `IterationBase`.



#### `return IterationItemMap(
      map: newMap,
      startIndex: 0,
      indexTake: 0,
    );`

Constructs a new instance of `IterationBase`.



#### `IterationItemMap(
    map: LinkedHashMap.fromEntries((entries as Iteration<MapEntry<K, V>>).reversed)
  );`

Constructs a new instance of `IterationBase`.



#### `return IterationItemMap(
      map: this,
      startIndex: count,
      indexTake: 0,
    );`

Constructs a new instance of `IterationBase`.



#### `return IterationItemMap(
      map: this,
      startIndex: 0,
      indexTake: count,
    );`

Constructs a new instance of `IterationBase`.



#### `keys.toList()
  ;`

Constructs a new instance of `IterationBase`.



#### `_keys.map((key) => MapEntry(key, _map[key] as V));`

Constructs a new instance of `IterationBase`.



#### `if (!_keys.contains(key)) _keys.add(key);`

Constructs a new instance of `IterationBase`.



#### `_insertCheck(index, key, element);`

Constructs a new instance of `IterationBase`.



#### `_keys.indexOf(key);`

Constructs a new instance of `IterationBase`.



#### `_keys.removeAt(i);`

Constructs a new instance of `IterationBase`.



#### `_keys.add(key);`

Constructs a new instance of `IterationBase`.



#### `_keys.insert(index, key);`

Constructs a new instance of `IterationBase`.



#### `offset(length);`

Constructs a new instance of `IterationBase`.



#### `_keys.getRange(start, end);`

Constructs a new instance of `IterationBase`.



#### `_keys.removeRange(start, end);`

Constructs a new instance of `IterationBase`.



#### `_map.removeWhere((key, val) => keys.contains(key));`

Constructs a new instance of `IterationBase`.



#### `removeAll.sort();`

Constructs a new instance of `IterationBase`.



#### `_map.remove(_keys.removeAt(index-removed));`

Constructs a new instance of `IterationBase`.



#### `_map.remove(key);`

Constructs a new instance of `IterationBase`.



### Fields

#### `indexTake
  ;`

Stores the value of `indexTake` for this instance of `IterationBase`.



#### `int _startIndex;`

Stores the value of `_startIndex` for this instance of `IterationBase`.



#### `_startIndex;`

Stores the value of `_startIndex` for this instance of `IterationBase`.



#### `int _indexTake;`

Stores the value of `_indexTake` for this instance of `IterationBase`.



#### `_indexTake;`

Stores the value of `_indexTake` for this instance of `IterationBase`.



#### `newLength;`

Stores the value of `newLength` for this instance of `IterationBase`.



#### `return;`

Stores the value of `return` for this instance of `IterationBase`.



#### `right;`

Stores the value of `right` for this instance of `IterationBase`.



#### `temp;`

Stores the value of `temp` for this instance of `IterationBase`.



#### `return;`

Stores the value of `return` for this instance of `IterationBase`.



#### `third;`

Stores the value of `third` for this instance of `IterationBase`.



#### `third;`

Stores the value of `third` for this instance of `IterationBase`.



#### `tmp;`

Stores the value of `tmp` for this instance of `IterationBase`.



#### `pivot1;`

Stores the value of `pivot1` for this instance of `IterationBase`.



#### `tmp1;`

Stores the value of `tmp1` for this instance of `IterationBase`.



#### `pivot2;`

Stores the value of `pivot2` for this instance of `IterationBase`.



#### `tmp2;`

Stores the value of `tmp2` for this instance of `IterationBase`.



#### `less;`

Stores the value of `less` for this instance of `IterationBase`.



#### `great;`

Stores the value of `great` for this instance of `IterationBase`.



#### `tmp;`

Stores the value of `tmp` for this instance of `IterationBase`.



#### `tmp;`

Stores the value of `tmp` for this instance of `IterationBase`.



#### `tmp;`

Stores the value of `tmp` for this instance of `IterationBase`.



#### `tmp;`

Stores the value of `tmp` for this instance of `IterationBase`.



#### `tmp;`

Stores the value of `tmp` for this instance of `IterationBase`.



#### `length;`

Stores the value of `length` for this instance of `IterationBase`.



#### `skipCount;`

Stores the value of `skipCount` for this instance of `IterationBase`.



#### `start;`

Stores the value of `start` for this instance of `IterationBase`.



#### `end;`

Stores the value of `end` for this instance of `IterationBase`.



#### `start;`

Stores the value of `start` for this instance of `IterationBase`.



#### `end;`

Stores the value of `end` for this instance of `IterationBase`.



#### `return true;`

Stores the value of `true` for this instance of `IterationBase`.



#### `return false;`

Stores the value of `false` for this instance of `IterationBase`.



#### `return removed;`

Stores the value of `removed` for this instance of `IterationBase`.



#### `length;`

Stores the value of `length` for this instance of `IterationBase`.



#### `other;`

Stores the value of `other` for this instance of `IterationBase`.



#### `reversed;`

Stores the value of `reversed` for this instance of `IterationBase`.



#### `length;`

Stores the value of `length` for this instance of `IterationBase`.



#### `start;`

Stores the value of `start` for this instance of `IterationBase`.



#### `final List<E> _listSource;`

Stores the value of `_listSource` for this instance of `IterationBase`.



#### `final Iterable<E> source;`

Stores the value of `source` for this instance of `IterationBase`.



#### `iterator;`

Stores the value of `iterator` for this instance of `IterationBase`.



#### `length;`

Stores the value of `length` for this instance of `IterationBase`.



#### `newLength;`

Stores the value of `newLength` for this instance of `IterationBase`.



#### `element;`

Stores the value of `element` for this instance of `IterationBase`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationBase`.



#### `length;`

Stores the value of `length` for this instance of `IterationBase`.



#### `start;`

Stores the value of `start` for this instance of `IterationBase`.



#### `removed;`

Stores the value of `removed` for this instance of `IterationBase`.



#### `return count;`

Stores the value of `count` for this instance of `IterationBase`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationBase`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationBase`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationBase`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationBase`.



#### `items;`

Stores the value of `items` for this instance of `IterationBase`.



#### `_sourceLength;`

Stores the value of `_sourceLength` for this instance of `IterationBase`.



#### `newLength;`

Stores the value of `newLength` for this instance of `IterationBase`.



#### `break;`

Stores the value of `break` for this instance of `IterationBase`.



#### `break;`

Stores the value of `break` for this instance of `IterationBase`.



#### `amount;`

Stores the value of `amount` for this instance of `IterationBase`.



#### `sourceIndex;`

Stores the value of `sourceIndex` for this instance of `IterationBase`.



#### `length;`

Stores the value of `length` for this instance of `IterationBase`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationBase`.



#### `break;`

Stores the value of `break` for this instance of `IterationBase`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationBase`.



#### `start;`

Stores the value of `start` for this instance of `IterationBase`.



#### `end;`

Stores the value of `end` for this instance of `IterationBase`.



#### `repPos;`

Stores the value of `repPos` for this instance of `IterationBase`.



#### `false;`

Stores the value of `false` for this instance of `IterationBase`.



#### `removeRangeStart;`

Stores the value of `removeRangeStart` for this instance of `IterationBase`.



#### `removeRangeEnd;`

Stores the value of `removeRangeEnd` for this instance of `IterationBase`.



#### `length;`

Stores the value of `length` for this instance of `IterationBase`.



#### `length;`

Stores the value of `length` for this instance of `IterationBase`.



#### `itemLen;`

Stores the value of `itemLen` for this instance of `IterationBase`.



#### `itemLen;`

Stores the value of `itemLen` for this instance of `IterationBase`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationBase`.



#### `i;`

Stores the value of `i` for this instance of `IterationBase`.



#### `i;`

Stores the value of `i` for this instance of `IterationBase`.



#### `itemLen;`

Stores the value of `itemLen` for this instance of `IterationBase`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationBase`.



#### `true;`

Stores the value of `true` for this instance of `IterationBase`.



#### `break;`

Stores the value of `break` for this instance of `IterationBase`.



#### `length;`

Stores the value of `length` for this instance of `IterationBase`.



#### `length;`

Stores the value of `length` for this instance of `IterationBase`.



#### `start;`

Stores the value of `start` for this instance of `IterationBase`.



#### `length;`

Stores the value of `length` for this instance of `IterationBase`.



#### `length;`

Stores the value of `length` for this instance of `IterationBase`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationBase`.



#### `removed;`

Stores the value of `removed` for this instance of `IterationBase`.



#### `return count;`

Stores the value of `count` for this instance of `IterationBase`.



#### `index;`

Stores the value of `index` for this instance of `IterationBase`.



#### `length;`

Stores the value of `length` for this instance of `IterationBase`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationBase`.



#### `break;`

Stores the value of `break` for this instance of `IterationBase`.



#### `index;`

Stores the value of `index` for this instance of `IterationBase`.



#### `length;`

Stores the value of `length` for this instance of `IterationBase`.



#### `continue;`

Stores the value of `continue` for this instance of `IterationBase`.



#### `break;`

Stores the value of `break` for this instance of `IterationBase`.



#### `indexTake
  ;`

Stores the value of `indexTake` for this instance of `IterationBase`.



#### `int _startIndex;`

Stores the value of `_startIndex` for this instance of `IterationBase`.



#### `_startIndex;`

Stores the value of `_startIndex` for this instance of `IterationBase`.



#### `int _indexTake;`

Stores the value of `_indexTake` for this instance of `IterationBase`.



#### `_indexTake;`

Stores the value of `_indexTake` for this instance of `IterationBase`.



#### `get sourceEntries;`

Stores the value of `sourceEntries` for this instance of `IterationBase`.



#### `length;`

Stores the value of `length` for this instance of `IterationBase`.



#### `length;`

Stores the value of `length` for this instance of `IterationBase`.



#### `value;`

Stores the value of `value` for this instance of `IterationBase`.



#### `key;`

Stores the value of `key` for this instance of `IterationBase`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationBase`.



#### `indexTake;`

Stores the value of `indexTake` for this instance of `IterationBase`.



#### `return i;`

Stores the value of `i` for this instance of `IterationBase`.



#### `length;`

Stores the value of `length` for this instance of `IterationBase`.



#### `old;`

Stores the value of `old` for this instance of `IterationBase`.



#### `return old;`

Stores the value of `old` for this instance of `IterationBase`.



#### `remd;`

Stores the value of `remd` for this instance of `IterationBase`.



#### `return remd;`

Stores the value of `remd` for this instance of `IterationBase`.



#### `return removed;`

Stores the value of `removed` for this instance of `IterationBase`.



#### `start;`

Stores the value of `start` for this instance of `IterationBase`.



#### `itake;`

Stores the value of `itake` for this instance of `IterationBase`.



#### `value;`

Stores the value of `value` for this instance of `IterationBase`.



#### `final Map<K, V> _map;`

Stores the value of `_map` for this instance of `IterationBase`.



#### `final List<K> _keys;`

Stores the value of `_keys` for this instance of `IterationBase`.



#### `value;`

Stores the value of `value` for this instance of `IterationBase`.



#### `element;`

Stores the value of `element` for this instance of `IterationBase`.



#### `startIndex;`

Stores the value of `startIndex` for this instance of `IterationBase`.



#### `start;`

Stores the value of `start` for this instance of `IterationBase`.



#### `start;`

Stores the value of `start` for this instance of `IterationBase`.



#### `removed;`

Stores the value of `removed` for this instance of `IterationBase`.



#### `return count;`

Stores the value of `count` for this instance of `IterationBase`.





### Methods

#### `override
  set length(int newLength) {`

Executes the `length` operation defined in `IterationBase`.



#### `if (newLength != 0) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (newLength > sourceLength) {`

Executes the `if` operation defined in `IterationBase`.



#### `override
  void shuffle([Random? random]) {`

Executes the `shuffle` operation defined in `IterationBase`.



#### `sort((a, b) {`

Executes the `sort` operation defined in `IterationBase`.



#### `override
  void sort([int Function(E a, E b)? compare]) {`

Executes the `sort` operation defined in `IterationBase`.



#### `if (a is Comparable && b is Comparable) {`

Executes the `if` operation defined in `IterationBase`.



#### `void dualPivotQuickSort(int left, int right) {`

Executes the `dualPivotQuickSort` operation defined in `IterationBase`.



#### `if (right - left < threshold) {`

Executes the `if` operation defined in `IterationBase`.



#### `while (j >= left && compare!(this[j], temp) > 0) {`

Executes the `while` operation defined in `IterationBase`.



#### `if (compare!(this[m1], this[m2]) > 0) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (compare(this[k], pivot1) < 0) {`

Executes the `if` operation defined in `IterationBase`.



#### `else if (compare(this[k], pivot2) > 0) {`

Executes the `if` operation defined in `IterationBase`.



#### `while (k < great && compare(this[great], pivot2) > 0) {`

Executes the `while` operation defined in `IterationBase`.



#### `if (compare(this[k], pivot1) < 0) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (length > 1) {`

Executes the `if` operation defined in `IterationBase`.



#### `override
  void add(E element) {`

Executes the `add` operation defined in `IterationBase`.



#### `override
  void addAll(Iterable<E> iterable) {`

Executes the `addAll` operation defined in `IterationBase`.



#### `override
  void insert(int index, E element) {`

Executes the `insert` operation defined in `IterationBase`.



#### `override
  void insertAll(int index, Iterable<E> iterable) {`

Executes the `insertAll` operation defined in `IterationBase`.



#### `if (index < 0 || index > length) {`

Executes the `if` operation defined in `IterationBase`.



#### `override
  set first(E value) {`

Executes the `first` operation defined in `IterationBase`.



#### `override
  set last(E value) {`

Executes the `last` operation defined in `IterationBase`.



#### `override
  void setAll(int index, Iterable<E> iterable) {`

Executes the `setAll` operation defined in `IterationBase`.



#### `override
  void setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0]) {`

Executes the `setRange` operation defined in `IterationBase`.



#### `override
  void fillRange(int start, int end, [E? fillValue]) {`

Executes the `fillRange` operation defined in `IterationBase`.



#### `override
  bool remove(Object? value) {`

Executes the `remove` operation defined in `IterationBase`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `IterationBase`.



#### `override
  E removeAt(int index) {`

Executes the `removeAt` operation defined in `IterationBase`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `IterationBase`.



#### `override
  E removeLast() {`

Executes the `removeLast` operation defined in `IterationBase`.



#### `override
  void removeRange(int start, int end) {`

Executes the `removeRange` operation defined in `IterationBase`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `IterationBase`.



#### `override
  void removeWhere(bool Function(E element) test) {`

Executes the `removeWhere` operation defined in `IterationBase`.



#### `if (test(elm)) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `IterationBase`.



#### `override
  void replaceRange(int start, int end, Iterable<E> replacements) {`

Executes the `replaceRange` operation defined in `IterationBase`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `IterationBase`.



#### `override
  void retainWhere(bool Function(E element) test) {`

Executes the `retainWhere` operation defined in `IterationBase`.



#### `override
  void clear() {`

Executes the `clear` operation defined in `IterationBase`.



#### `T Function(E e) toElement) {`

Executes the `Function` operation defined in `IterationBase`.



#### `override
  Iteration<E> followedBy(Iterable<E> other) {`

Executes the `followedBy` operation defined in `IterationBase`.



#### `Iterable<T> Function(E element) toElements) {`

Executes the `Function` operation defined in `IterationBase`.



#### `override
  IterationBase<E> sublist(int start, [int? end]) {`

Executes the `sublist` operation defined in `IterationBase`.



#### `i<end; i++) {
      newI.add(elementAt(i));
    }
    return IterationList(
      iterable: newI,
    );
  }
  
  @override
  Iteration<E> skip(int count) {`

Executes the `skip` operation defined in `IterationBase`.



#### `override
  Iteration<E> take(int count) {`

Executes the `take` operation defined in `IterationBase`.



#### `override
  set sourceLength(int newLength) {`

Executes the `sourceLength` operation defined in `IterationBase`.



#### `if (newLength == 0) {`

Executes the `if` operation defined in `IterationBase`.



#### `override
  void sourceLengthBeenModified(int amount) {`

Executes the `sourceLengthBeenModified` operation defined in `IterationBase`.



#### `override
  E sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `IterationBase`.



#### `override
  void shuffle([Random? random]) {`

Executes the `shuffle` operation defined in `IterationBase`.



#### `override
  void set(int index, E element) {`

Executes the `set` operation defined in `IterationBase`.



#### `override
  void sourceInsertAll(int index, Iterable<E> iterable) {`

Executes the `sourceInsertAll` operation defined in `IterationBase`.



#### `if (iterable.length == 1) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (_listSource.remove(value)) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (start != null || end != null || replacements != null) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (replacements != null) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (removeAll != null) {`

Executes the `if` operation defined in `IterationBase`.



#### `for (var index in removeAll) {`

Executes the `for` operation defined in `IterationBase`.



#### `override
  int indexOf(E element, [int start = 0]) {`

Executes the `indexOf` operation defined in `IterationBase`.



#### `override
  int indexWhere(bool Function(E element) test, [int start = 0]) {`

Executes the `indexWhere` operation defined in `IterationBase`.



#### `override
  int lastIndexOf(E element, [int? start]) {`

Executes the `lastIndexOf` operation defined in `IterationBase`.



#### `override
  int lastIndexWhere(bool Function(E element) test, [int? start]) {`

Executes the `lastIndexWhere` operation defined in `IterationBase`.



#### `T Function(E e) toElement) {`

Executes the `Function` operation defined in `IterationBase`.



#### `override
  IterationBase<E> getRange(int start, int end) {`

Executes the `getRange` operation defined in `IterationBase`.



#### `override
  IterationBase<E> sublist(int start, [int? end]) {`

Executes the `sublist` operation defined in `IterationBase`.



#### `override
  Iteration<E> skip(int count) {`

Executes the `skip` operation defined in `IterationBase`.



#### `override
  Iteration<E> take(int count) {`

Executes the `take` operation defined in `IterationBase`.



#### `override
  set sourceLength(int newLength) {`

Executes the `sourceLength` operation defined in `IterationBase`.



#### `if (newLength == 0) {`

Executes the `if` operation defined in `IterationBase`.



#### `else if (newLength > _sourceLength) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (null is E) {`

Executes the `if` operation defined in `IterationBase`.



#### `else if (newLength < _sourceLength && newLength >= 0) {`

Executes the `if` operation defined in `IterationBase`.



#### `while (count != 0) {`

Executes the `while` operation defined in `IterationBase`.



#### `if (item.isEmpty) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (remove != 0) {`

Executes the `if` operation defined in `IterationBase`.



#### `while (remove != 0) {`

Executes the `while` operation defined in `IterationBase`.



#### `override
  void sourceLengthBeenModified(int amount) {`

Executes the `sourceLengthBeenModified` operation defined in `IterationBase`.



#### `override
  E sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `IterationBase`.



#### `for (var item in items) {`

Executes the `for` operation defined in `IterationBase`.



#### `if (actualIndex >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (value is E) {`

Executes the `if` operation defined in `IterationBase`.



#### `for (var lis in items) {`

Executes the `for` operation defined in `IterationBase`.



#### `if (lis.remove(value)) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (start != null || end != null || replacements != null) {`

Executes the `if` operation defined in `IterationBase`.



#### `skip it
        if (actualStart >= itemLen || item.isEmpty) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (repPos == null) {`

Executes the `if` operation defined in `IterationBase`.



#### `If the removal range extends beyond this sublist
        if (actualEnd >= itemLen) {`

Executes the `if` operation defined in `IterationBase`.



#### `Partial removal from actualStart to end of sublist
          if (removeRangeStart == null) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (actualEnd != 0) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (replacements != null && internalReplace) {`

Executes the `if` operation defined in `IterationBase`.



#### `Remove any sublists fully covered by the range
      if (removeRangeStart != null) {`

Executes the `if` operation defined in `IterationBase`.



#### `Apply replacements if provided
      if (replacements != null) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (!internalReplace) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (removeAll != null) {`

Executes the `if` operation defined in `IterationBase`.



#### `for (var item in items) {`

Executes the `for` operation defined in `IterationBase`.



#### `if (removeAll[i] >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (item.remove(removeAll[i])) {`

Executes the `if` operation defined in `IterationBase`.



#### `override
  void sourceInsertAll(int index, Iterable<E> iterable) {`

Executes the `sourceInsertAll` operation defined in `IterationBase`.



#### `for (var item in items) {`

Executes the `for` operation defined in `IterationBase`.



#### `if (actualIndex >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `IterationBase`.



#### `override
  void set(int index, E element) {`

Executes the `set` operation defined in `IterationBase`.



#### `for (var item in items) {`

Executes the `for` operation defined in `IterationBase`.



#### `if (actualIndex >= item.length || item.isEmpty) {`

Executes the `if` operation defined in `IterationBase`.



#### `override
  void forEach(void Function(K key, V value) action) {`

Executes the `forEach` operation defined in `IterationBase`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationBase`.



#### `MapEntry<K, V> getEntry(int index) {`

Executes the `getEntry` operation defined in `IterationBase`.



#### `override
  V sourceGet(int sourceIndex) {`

Executes the `sourceGet` operation defined in `IterationBase`.



#### `K getKey(int index) {`

Executes the `getKey` operation defined in `IterationBase`.



#### `int indexOfKey(K key, [int start=0]) {`

Executes the `indexOfKey` operation defined in `IterationBase`.



#### `override
  bool containsKey(Object? key) {`

Executes the `containsKey` operation defined in `IterationBase`.



#### `override
  bool containsValue(Object? value) {`

Executes the `containsValue` operation defined in `IterationBase`.



#### `void set(K key, V value) {`

Executes the `set` operation defined in `IterationBase`.



#### `if (index != -1) {`

Executes the `if` operation defined in `IterationBase`.



#### `void insertAll(int index, Iterable<MapEntry<K, V>> iterable) {`

Executes the `insertAll` operation defined in `IterationBase`.



#### `if (index < 0 || index > length) {`

Executes the `if` operation defined in `IterationBase`.



#### `override
  void addAll(Map<K, V> other) {`

Executes the `addAll` operation defined in `IterationBase`.



#### `override
  void addEntries(Iterable<MapEntry<K, V>> newEntries) {`

Executes the `addEntries` operation defined in `IterationBase`.



#### `for (var entry in newEntries) {`

Executes the `for` operation defined in `IterationBase`.



#### `override
  V putIfAbsent(K key, V Function() ifAbsent) {`

Executes the `putIfAbsent` operation defined in `IterationBase`.



#### `if (!containsKey(key)) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (containsKey(key)) {`

Executes the `if` operation defined in `IterationBase`.



#### `override
  void updateAll(V Function(K key, V value) update) {`

Executes the `updateAll` operation defined in `IterationBase`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationBase`.



#### `remove(Object? key) {`

Executes the `remove` operation defined in `IterationBase`.



#### `if (containsKey(key)) {`

Executes the `if` operation defined in `IterationBase`.



#### `removeValue(Object? value) {`

Executes the `removeValue` operation defined in `IterationBase`.



#### `if (containsValue(value)) {`

Executes the `if` operation defined in `IterationBase`.



#### `MapEntry<K, V> removeAt(int index) {`

Executes the `removeAt` operation defined in `IterationBase`.



#### `if (remd != 0) {`

Executes the `if` operation defined in `IterationBase`.



#### `MapEntry<K, V> removeLast() {`

Executes the `removeLast` operation defined in `IterationBase`.



#### `An empty range (with `end == start`) is valid.
  void removeRange(int start, int end) {`

Executes the `range` operation defined in `IterationBase`.



#### `override
  void removeWhere(bool Function(K key, V value) test) {`

Executes the `removeWhere` operation defined in `IterationBase`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationBase`.



#### `if (test(entry.key, entry.value)) {`

Executes the `if` operation defined in `IterationBase`.



#### `An empty range (with `end == start`) is valid.
  void replaceRange(int start, int end, Iterable<MapEntry<K, V>> replacements) {`

Executes the `range` operation defined in `IterationBase`.



#### `void retainWhere(bool Function(K key, V value) test) {`

Executes the `retainWhere` operation defined in `IterationBase`.



#### `override
  void clear() {`

Executes the `clear` operation defined in `IterationBase`.



#### `MapEntry<K2, V2> Function(K key, V value) convert) {`

Executes the `Function` operation defined in `IterationBase`.



#### `for (var entry in entries) {`

Executes the `for` operation defined in `IterationBase`.



#### `override
  IterationMap<K, V> getRange(int start, int end) {`

Executes the `getRange` operation defined in `IterationBase`.



#### `override
  IterationMap<K, V> sublist(int start, [int? end]) {`

Executes the `sublist` operation defined in `IterationBase`.



#### `override
  IterationMap<K, V> skip(int count) {`

Executes the `skip` operation defined in `IterationBase`.



#### `override
  IterationMap<K, V> take(int count) {`

Executes the `take` operation defined in `IterationBase`.



#### `override
  void set(K key, V value) {`

Executes the `set` operation defined in `IterationBase`.



#### `override
  void insert(int index, K key, V element) {`

Executes the `insert` operation defined in `IterationBase`.



#### `bool _insertCheck(int index, K key, V element) {`

Executes the `_insertCheck` operation defined in `IterationBase`.



#### `if (i > -1 && index > i) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (index == _keys.length) {`

Executes the `if` operation defined in `IterationBase`.



#### `get(Object? key) {`

Executes the `get` operation defined in `IterationBase`.



#### `if (start != null || end != null || replacements != null) {`

Executes the `if` operation defined in `IterationBase`.



#### `if (replacements != null) {`

Executes the `if` operation defined in `IterationBase`.



#### `for (var replacement in replacements) {`

Executes the `for` operation defined in `IterationBase`.



#### `if (removeAll != null) {`

Executes the `if` operation defined in `IterationBase`.



#### `for (var index in removeAll) {`

Executes the `for` operation defined in `IterationBase`.



#### `if (removeKeys != null) {`

Executes the `if` operation defined in `IterationBase`.



#### `for (var key in removeKeys) {`

Executes the `for` operation defined in `IterationBase`.



#### `if (_keys.remove(key)) {`

Executes the `if` operation defined in `IterationBase`.


