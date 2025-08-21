import '../../collections.dart';

class Tag<E> {
  /// The name of this [Tag].
  final String name;
  /// The data value of this [Tag].
  ///
  /// If [isTag] is true then this value must be a [bool]
  /// that represents whether the [Tag] will be actively used.
  ///
  /// This value may only be of type [bool] if [isTag] is true.
  E value;

  /// Defines whether this [Tag] should behave as a tag or just a named data holder.
  ///
  /// If this value is true, then [value] must be a [bool].
  final bool isTag;

  /// The string representation that will be forced onto [toString].
  final String Function(Tag<E>)? searchString;

  Tag({
    required this.name,
    required this.value,
    required this.isTag,
    this.searchString,
  }):
    assert(E is bool? isTag: true)
  ;

  /// Allows for toggling [value] between true and false given [isTag] true.
  bool toggle() {
    E oldV = value;
    if (isTag) {
      value = (!(value as bool)) as E;
    }
    return value != oldV;
  }

  /// A string representation of this [Tag].
  /// The value returned here is used to match in a [Search].
  ///
  /// If [searchString] isn't null, then it will be the return of
  /// this method. Otherwise, if [isTag] is true,
  /// then [name] is returned as this value, but if false,
  /// then the string representation of [value] is returned.
  @override
  String toString() {
    if (searchString != null) return searchString!(this);
    if (isTag) return name;
    return value.toString();
  }
}

class Tags extends OrderedMap<String, Tag> {
  final List<Tag> tags;
  Tags(
    this.tags,
  ):
    super(
      map: LinkedHashMap.fromIterable(
        tags,
        key: (tag) => tag.name,
        value: (tag) => tag,
      ),
    )
  ;

  @override
  void set(String key, Tag value) {
    assert(key == value.name);
    super.set(key, value);
  }

  void add(Tag tag) {
    set(tag.name, tag);
  }
}