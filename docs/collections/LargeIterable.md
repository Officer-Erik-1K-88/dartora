# LargeIterable

_No summary provided in source._

_Defined in: `src/collections/lists.dart`_

_Import_: `package:dartora/collections/lists.dart`

---

### Constructors

#### `if (keyLength == 0) throw StateError('The LargeIterable has no keys.');`



#### `offset(index);`



#### `throw IndexError.withLength(index - startIndex, keyLength);`



#### `_keys.indexOf(key, startIndex);`



#### `if (m == null) throw KeyException(key: key);`



#### `return modifier(m);`



#### `elementAt(sourceIndex-_keys.length);`



#### `if (m == null) throw BaseException("Value at `$sourceIndex` doesn't exist.");`



#### `return modifier(m);`



#### `_keys.indexOf(key, startIndex);`



#### `return toElement(modifier(e));`



#### `additional.add(_extras.elementAt(i+(startIndex-_keys.length)));`



#### `additional.add(_extras.elementAt(i));`



#### `additional.addAll(other);`



#### `return LargeIterable(mapped: _mapped, keys: _keys, extras: _extras, modifier: modifier, startIndex: offset(count), indexTake: indexTake);`



#### `return LargeIterable(mapped: _mapped, keys: _keys, extras: _extras, modifier: modifier, startIndex: startIndex, indexTake: indexTake+count);`



### Fields

#### `final Map\<String, VT\> _mapped;`



#### `final List\<String\> _keys;`



#### `_extras;`



#### `modifier;`



#### `mapped
  ;`



#### `override
  final int startIndex;`



#### `override
  final int indexTake;`



#### `indexTake;`



#### `kl;`



#### `m;`



#### `dynamic m;`



#### `return m as E;`



#### `return true;`



#### `return false;`



#### `length;`



#### `length;`



#### `length;`



#### `as R;`





### Methods

#### `Element retrieval

  String getKey(int index) {`



#### `if (index \>= startIndex && index \< offset(keyLength)) {`



#### `E getItem(String key) {`



#### `if (index != -1 && index \< offset(keyLength)) {`



#### `override
  E sourceGet(int sourceIndex) {`



#### `if (sourceIndex \>= startIndex && sourceIndex \< offset(length)) {`



#### `if (sourceIndex \< _keys.length) {`



#### `if (m is VT) {`



#### `validation checks

  bool containsKey(Object? key) {`



#### `if (key is String) {`



#### `if (index != -1 && index \< offset(keyLength)) {`



#### `T Function(E e) toElement) {`



#### `return LargeIterable(mapped: _mapped, keys: _keys, extras: _extras, modifier: (e) {`



#### `override
  Iteration\<E\> followedBy(Iterable\<E\> other) {`



#### `if (_extras != null) {`



#### `if (startIndex \>= _keys.length) {`



#### `Iterable\<T\> Function(E element) toElements) {`



#### `i\<length; i++) {
      listed.addAll(toElements(elementAt(i)));
    }
    return IterationItem(source: listed);
  }

  @override
  Iteration\<E\> skip(int count) {`



#### `override
  Iteration\<E\> take(int count) {`



#### `return LargeIterable(
      mapped: _mapped,
      keys: _keys,
      extras: _extras,
      modifier: (e) {`


