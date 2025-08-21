# MultiViewList<E>

A list facade over a backing list that supports **views** (ranges/slices) without copying.

## Highlights
- Exposes `length`, indexed access, and iterators across a dynamic window.
- Building additional views is cheap; data is not duplicated.
- Often used to store a view of `OrderedMap`'s keys.
