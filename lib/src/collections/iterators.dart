import 'iteration.dart' show TransformingIteration;

class IteratorBuild<E> implements Iterator<E> {
  /// The function used to get the elements
  /// at the index position of [current].
  final E Function(int) elementAt;
  /// The index position that this [Iterator]
  /// starts at on the first call to [moveNext].
  ///
  /// This is inclusive.
  final int startIndex;
  /// The index position that this [Iterator]
  /// ends at.
  ///
  /// This is exclusive.
  final int endIndex;

  IteratorBuild({
    required this.elementAt,
    this.startIndex=0,
    required this.endIndex
  });

  int _index=-1;

  @override
  E get current => elementAt(_index);

  @override
  bool moveNext() {
    if (_index == -1) {
      _index = startIndex;
    } else {
      _index += 1;
    }
    return _index < endIndex;
  }
  
}

class IndexBaseIterator<E> extends IteratorBuild<E> {
  IndexBaseIterator({
    required Iterable<E> iterable
  }):
    super(
      elementAt: iterable.elementAt,
      endIndex: iterable.length
    )
  ;
}

class HolderIterator<E> implements Iterator<E> {
  final Iterable<Iterable<E>> _holder;

  HolderIterator({required Iterable<Iterable<E>> holder}): _holder = holder;

  int _outerIndex=0;
  int _innerIndex=-1;

  Iterable<E> get _outer => _holder.elementAt(_outerIndex);

  @override
  E get current => _outer.elementAt(_innerIndex);

  @override
  bool moveNext() {
    if (_outerIndex >= _holder.length) return false;
    _innerIndex += 1;
    if (_innerIndex >= _outer.length) {
      _outerIndex += 1;
      _innerIndex = 0;
      if (_outerIndex >= _holder.length) return false;
    }
    return true;
  }
}

class TransformingIterator<S, T, V, R> implements Iterator<R> {
  final TransformingIteration<S, T, V, R> _iterable;
  final Iterator<S> _iterator;
  final Iterator<R>? _follower;

  // Initialize _currentExpansion to an empty iterable. A null value
  // marks the end of iteration, and we don't want to call _f before
  // the first moveNext call.
  Iterator<T>? _currentExpansion = const EmptyIterator<Never>();
  V? _current;
  R? _endingCurrent;

  TransformingIterator(this._iterable, this._iterator): _follower = _iterable.followingIterator;

  V get curr => _current as V;

  @override
  bool moveNext() {
    if (_currentExpansion == null) {
      _endingCurrent = null;
      if (_follower != null) {
        if (_follower.moveNext()) {
          _endingCurrent = _follower.current;
          return true;
        }
      }
      return false;
    }
    while (!_currentExpansion!.moveNext()) {
      _current = null;
      if (_iterator.moveNext()) {
        // If _f throws, this ends iteration. Otherwise _currentExpansion and
        // _current will be set again below.
        _currentExpansion = null;
        _currentExpansion = _iterable.expander(_iterator.current).iterator;
      } else {
        return false;
      }
    }
    _current = _iterable.transformer(_currentExpansion!.current);
    if (!_iterable.allowed(curr)) return moveNext();
    return true;
  }

  @override
  R get current => _endingCurrent ?? (curr as R);
}

/// The always empty iterator.
class EmptyIterator<E> implements Iterator<E> {
  const EmptyIterator();
  @override
  bool moveNext() => false;
  @override
  E get current {
    throw StateError("No element");
  }
}