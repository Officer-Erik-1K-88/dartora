## IterableItems<E>

`IterableItems` is a convenience class that adapts a keyed map of values into a lazy sequence of those values without any transformation.  It extends `LargeIterable<E,E>` and simply passes through each value unchanged.

### Purpose

In many parts of Dartora, data is stored in a `Map<String, VT>` but is consumed as a sequence in a specific order defined by a list of keys.  `LargeIterable<VT,E>` allows you to provide a transformation function (`modifier`) that maps from the underlying type `VT` to the desired type `E`.  When the underlying type and the desired type are the same, you can use `IterableItems<E>` to avoid writing an identity function.

### Constructor

```
IterableItems({
  required Map<String, E> mapped,
  required List<String> keys,
})
```

* **`mapped`** – a map of string keys to values of type `E`.  This is the backing store for the data.
* **`keys`** – the order in which keys should appear in the iteration.  Only keys present in this list will be yielded, and they are yielded in the order given.  Extra keys in `mapped` that are not in `keys` are ignored.

Internally, `IterableItems` simply calls the `LargeIterable` constructor with `mapped`, `keys`, no extras, and `modifier: (e) => e`.  The `startIndex` and `indexTake` parameters of `LargeIterable` default to zero, meaning that the entire key list is visible.

### Behaviour

`IterableItems` inherits all the features of `LargeIterable`:

* **Windowing** – you can call `skip` or `take` on an `IterableItems` instance to hide or limit the number of visible elements without copying the underlying map or list of keys.
* **Mapping and concatenation** – methods like `map`, `followedBy`, and `expand` return new `Iteration` views that apply transformations or append other sequences.  In the case of `IterableItems`, `map` composes the new function on top of the identity mapping.
* **Access methods** – `getKey(index)` returns the key at a given index within the window; `getItem(key)` returns the value for a specific key.  `containsKey(key)` checks whether a key is present in the visible window.

Since `IterableItems` uses an identity modifier, it does not allocate new objects when iterated; it simply returns references to the existing values in the map.  If you mutate the values in `mapped`, those mutations are visible through `IterableItems`.
