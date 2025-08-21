## ImmutableIterationHolder<E>

`ImmutableIterationHolder` is a concrete subclass of the `Iteration<E>` mixin that exposes a **read‑only concatenation** of multiple `Iteration<E>` sequences.  It differs from `IterationHolder` in that it does not allow mutation of the underlying segments; it simply presents the items one after another as a single iterable view.

### Constructor

```
ImmutableIterationHolder({
  required Iterable<Iteration<E>> items,
  int startIndex = 0,
  int indexTake = 0,
})
```

* **`items`** – the list of child iterations to concatenate.  Each entry may itself be a view into some larger collection, and all their lengths are summed to form the total source length.
* **`startIndex`**, **`indexTake`** – offsets that hide a number of elements at the start and/or end of the concatenated sequence (see [`Iteration`](Iteration.md)).  These offsets apply across the entire concatenation, not per child.

On construction the class pre‑computes `sourceLength` by folding the lengths of all `items`.  If you modify the lengths of those items after construction, the `ImmutableIterationHolder` will *not* update its cached length; it is intended to be used with immutable children.

### Fields

| Field | Description |
|------|-------------|
| `items` | The ordered collection of child `Iteration<E>` objects being concatenated. |
| `startIndex` | Inherited from `Iteration`; number of elements at the beginning of the concatenation that are not visible. |
| `indexTake` | Inherited from `Iteration`; number of elements at the end of the concatenation that are hidden. |
| `sourceLength` | Total number of elements across all child iterations (computed once at construction). |

### Implementation details

* **Iteration** – `ImmutableIterationHolder` extends the `Iteration<E>` mixin.  As such it inherits default implementations for `length`, `isEmpty`, `isNotEmpty`, element look‑up (`first`, `last`, `single`, `elementAt`), searching (`indexOf`, `indexWhere`, etc.), reduction, mapping and slicing.  These operations respect `startIndex` and `indexTake` across the concatenated view.
* **`sourceIterator`** – overrides the getter to return a `HolderIterator<E>` constructed with the `items` iterable.  The iterator yields all elements of the first child, then the second, and so on.
* **`sourceGet(int sourceIndex)`** – when an element at a raw source index is requested, the method walks through `items` subtracting each child’s length until it finds the segment that contains `sourceIndex`.  It then forwards to that child’s `elementAt()` to retrieve the element.  If the index is out of range, an `IndexError` is thrown.

### Usage

Use `ImmutableIterationHolder` when you need to present several `Iteration` sequences as a single read‑only iterable.  Because it caches `sourceLength` and does not expose any mutating methods, it is lightweight and suitable for building composite views.
