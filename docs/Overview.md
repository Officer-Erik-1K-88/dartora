# Dartora Manual Documentation

This folder contains **hand‑written** documentation for each part of the Dartora package.  Rather than relying on automatic doc generation, these pages were written by inspecting the source files and inferring the intent of classes, functions and methods.  Every header has a short description explaining the role of the symbol and how it behaves.

## Contents

### Collections

The collections module defines flexible iteration primitives and data structures for working with large or view‑based sequences.  Key classes include:

| Item | Description |
|------|-------------|
| [LargeIterable](collections/LargeIterable.md) | Presents values from a keyed map and optional extras as a lazy sequence with random access.  Supports windowing via `startIndex`/`indexTake` and transformation methods. |
| [LargeList](collections/LargeList.md) | A random‑access view over the union of a map’s values and an extra `IterationHolder` sequence.  Provides iteration, element lookup, filtering and mapping without copying data. |
| [MultiViewList](collections/MultiViewList.md) | Wraps a list so that multiple views can be created cheaply.  Supports read/write access, iteration, and common list operations. |
| [OrderedMap](collections/OrderedMap.md) | A map that preserves insertion order.  Keys are stored in a `MultiViewList` and values in a normal map.  Provides predictable iteration order and standard map methods. |
| [Iteration](collections/Iteration.md) | An abstract mixin defining the contract for efficient, sliceable iteration.  Subclasses implement `sourceIterator`, `sourceLength` and `sourceGet` to support windowed views. |
| [IterationBase](collections/IterationBase.md) | A mutable list interface built upon `Iteration`.  Provides list operations (insert, remove, shuffle, sort, etc.) and view operations (`map`, `followedBy`, `expand`, `skip`, `take`).  Subclasses supply storage hooks. |
| [IterationHolder](collections/IterationHolder.md) | Concatenates multiple `IterationBase` sequences into a single list.  Handles removal, replacement and insertion across segment boundaries while keeping track of offsets. |
| [IterationItem](collections/IterationItem.md) | A read‑only `Iteration` wrapping any `Iterable` using `elementAt()` for retrieval.  Useful for converting arbitrary iterables into the `Iteration` framework. |
| [IterationList](collections/IterationList.md) | A concrete list implementation backed by a mutable Dart list.  Implements the hooks required by `IterationBase`. |
| [IteratorBuild](collections/IteratorBuild.md) | Builds a standard Dart iterator from an `elementAt` callback with start/end indices. |
| [IndexBaseIterator](collections/IndexBaseIterator.md) | Wraps any `Iterable` to provide an index‑based iterator using `elementAt`. |
| [HolderIterator](collections/HolderIterator.md) | Flattens a list of iterables (such as a matrix) into a single iterator.  Used by `Matrix` and `IterationHolder`. |

### Search

The search module implements a mini search engine with parsing, tagging and scoring.  Important classes include:

| Item | Description |
|------|-------------|
| [Searchable](search/Searchable.md) | Base class for objects that can be searched.  Stores id, name, title, description, tags and the type (parent or child).  Provides a `children` holder and a factory for building a default implementation. |
| [ChildHolder](search/ChildHolder.md) | Holds children for a `Searchable`.  Manages keyed storage, typed key lists, and events for adding/removing items.  Provides iteration and common collection methods. |
| [Search](search/Search.md) | Executes a `SearchQuery` against a list of `Searchable` items.  Computes scores using `SearchQueryComparison` and orders results by descending score. |
| [SearchQuery](search/SearchQuery.md) | Compiled representation of a user query with optional, required and forbidden words and tags.  Provides scoring and validity checks. |
| [QueryEngine](search/QueryEngine.md) | Parses strings into `SearchQuery` objects using a set of `PatternItem`s that recognise quotes, negation, tags and wildcards. |
| [QueryBuilder](search/QueryBuilder.md) | A state machine used by the engine to accumulate words and tags into buckets. |
| [PatternItem](search/PatternItem.md) | Defines the behaviour of a single token in the query syntax.  Controls whether the token splits, escapes, defines tags or sets required/forbidden words. |
| [SearchItem](search/SearchItem.md) | Holds a matched `Searchable` and its `SearchQueryComparison`. |
| [PointedWord](search/PointedWord.md) | Pair of a word and the points associated with matching it.  Points are positive for desired words and negative for forbidden words. |
| [SearchQueryComparison](search/SearchQueryComparison.md) | Result of comparing a query against a text.  Holds positive/negative points, occurrence counts and flags for missing required or containing forbidden words. |
| [Tag](search/Tag.md) & [Tags](search/Tags.md) | A named value used for tag search; `Tags` is a map of tag names to `Tag` values. |
| [SearchableType](search/SearchableType.md) | Enum for parent/child `Searchable` roles. |
| [ChildActionType](search/ChildActionType.md) | Enum describing events fired by `ChildHolder`. |
| [QueryType](search/QueryType.md) | Enum indicating whether a query word is optional, required, forbidden, or a combination. |

### Math (basic)

Math basics provide helper functions and constants for numeric operations and rounding:

| Item | Description |
|------|-------------|
| [comparison](math/basic/comparison.md) | Defines `numberCast<T>()` to coerce numbers from dynamic values and wrappers around `min` and `max` for numeric types. |
| [log](math/basic/log.md) | Implements `exp`, natural and base‑10 logarithms (`ln`, `log`, `log2`, `logB`) using ratio and natural logs. |
| [root](math/basic/root.md) | Provides `pow`, `sqrt` and `nthRoot` functions with edge‑case handling. |
| [rounding](math/basic/rounding.md) | Contains the `RoundMode` class for configurable rounding policies and a `round()` function that rounds doubles to a fixed number of decimals using a given mode. |
| [constants](math/basic/constants.md) | Defines mathematical constants `e`, `pi`, and `phi` as doubles. |

### Math (advanced)

Advanced math includes structures and algorithms beyond basic arithmetic:

| Item | Description |
|------|-------------|
| [BaseRadix](math/advanced/BaseRadix.md) | Represents a number in an arbitrary radix with its code (string) and numeric value.  Provides conversion to/from different bases and arithmetic operations that return new `BaseRadix` instances. |
| [Curves](math/advanced/Curves.md) | Functions for growth and smoothing.  `stepwiseGrowth()` returns an integer step with adjustable speed/length/factor parameters; `sigmoidCurve()` maps input through a logistic‑like curve with configurable center and baseline. |
| [Matrix](math/advanced/Matrix.md) | A 2‑D numeric array with matrix operations: addition, subtraction, scalar and matrix multiplication, power, division, determinant, adjoint, cofactor, inverse, transpose, identity and (experimental) row echelon form.  Implements `Iteration` to traverse elements in row‑major order. |
| [Points](math/advanced/Points.md) | Classes for representing positive/negative point tallies and their stepwise modifiers.  `Points` is an abstract base with arithmetic; `UnmodifiablePoints` and `ModifiablePoints` provide concrete implementations for immutable and mutable points. |

### Util

Utility classes provide error handling and modification tracking:

| Item | Description |
|------|-------------|
| [ModificationListener](util/ModificationListener.md) | Tracks nested modification scopes and counts the number of modification steps.  Supports start/step/end/reset operations and reports the level of modification. |
| [ModificationAction](util/ModificationAction.md) & [_ModCatch](util/ModCatch.md) | Records a modification at a specific level; internal helper used by the listener. |
| [ModLevel](util/ModLevel.md) & [ModResetType](util/ModResetType.md) | Enums for modification severity and reset types. |
| [BaseException](util/BaseException.md), [TypeException](util/TypeException.md), [KeyException](util/KeyException.md) | Structured error classes with descriptive messages for generic errors, type mismatches and invalid keys. |
