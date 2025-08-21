# IterationHolder

_No summary provided in source._

_Defined in: `src/collections/iteration.dart`_

_Import_: `package:dartora/collections/iteration.dart`

---

### Constructors

#### `items.fold(0, (i, item) =\> i + item.length);`



#### `HolderIterator(holder: items);`



#### `items.clear();`



#### `items.add(IterationList(iterable: List.filled(newLength-_sourceLength, null as E)));`



#### `throw StateError("Cannot have a sourceLength bigger than current when E isn't nullable.");`



#### `item.removeLast();`



#### `items.removeLast();`



#### `items.fold(0, (i, item) =\> i + item.length);`



#### `return item.elementAt(actualIndex);`



#### `throw IndexError.withLength(sourceIndex, length);`



#### `offset(length);`



#### `item.removeRange(actualStart, itemLen);`



#### `item.replaceRange(actualStart, actualEnd, replacements);`



#### `item.removeRange(actualStart, actualEnd);`



#### `items.removeRange(removeRangeStart, removeRangeEnd);`



#### `if (repPos == null) throw StateError('Cannot replace items in bad range.');`



#### `Replacements inserted as independent list
          items.insert(repPos, IterationList(
            iterable: replacements
          ));`



#### `removeAll.removeWhere((index) =\> index \<=-1);`



#### `item.insertAll(actualIndex, iterable);`



#### `item.set(actualIndex, element);`



### Fields

#### `items;`



#### `_sourceLength;`



#### `newLength;`



#### `break;`



#### `break;`



#### `amount;`



#### `sourceIndex;`



#### `length;`



#### `continue;`



#### `break;`



#### `startIndex;`



#### `start;`



#### `end;`



#### `repPos;`



#### `false;`



#### `removeRangeStart;`



#### `removeRangeEnd;`



#### `length;`



#### `length;`



#### `itemLen;`



#### `itemLen;`



#### `continue;`



#### `i;`



#### `i;`



#### `itemLen;`



#### `continue;`



#### `true;`



#### `break;`



#### `length;`



#### `length;`



#### `start;`



#### `length;`



#### `length;`



#### `continue;`



#### `removed;`



#### `return count;`



#### `index;`



#### `length;`



#### `continue;`



#### `break;`



#### `index;`



#### `length;`



#### `continue;`



#### `break;`





### Methods

#### `override
  set sourceLength(int newLength) {`



#### `if (newLength == 0) {`



#### `else if (newLength \> _sourceLength) {`



#### `if (null is E) {`



#### `else if (newLength \< _sourceLength && newLength \>= 0) {`



#### `while (count != 0) {`



#### `if (item.isEmpty) {`



#### `if (remove != 0) {`



#### `while (remove != 0) {`



#### `override
  void sourceLengthBeenModified(int amount) {`



#### `override
  E sourceGet(int sourceIndex) {`



#### `for (var item in items) {`



#### `if (actualIndex \>= item.length || item.isEmpty) {`



#### `if (value is E) {`



#### `for (var lis in items) {`



#### `if (lis.remove(value)) {`



#### `if (start != null || end != null || replacements != null) {`



#### `skip it
        if (actualStart \>= itemLen || item.isEmpty) {`



#### `if (repPos == null) {`



#### `If the removal range extends beyond this sublist
        if (actualEnd \>= itemLen) {`



#### `Partial removal from actualStart to end of sublist
          if (removeRangeStart == null) {`



#### `if (actualEnd != 0) {`



#### `if (replacements != null && internalReplace) {`



#### `Remove any sublists fully covered by the range
      if (removeRangeStart != null) {`



#### `Apply replacements if provided
      if (replacements != null) {`



#### `if (!internalReplace) {`



#### `if (removeAll != null) {`



#### `for (var item in items) {`



#### `if (removeAll[i] \>= item.length || item.isEmpty) {`



#### `if (item.remove(removeAll[i])) {`



#### `override
  void sourceInsertAll(int index, Iterable\<E\> iterable) {`



#### `for (var item in items) {`



#### `if (actualIndex \>= item.length || item.isEmpty) {`



#### `override
  void set(int index, E element) {`



#### `for (var item in items) {`



#### `if (actualIndex \>= item.length || item.isEmpty) {`


