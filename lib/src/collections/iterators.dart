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