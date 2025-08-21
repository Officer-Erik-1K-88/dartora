class BaseException implements Exception {
  final String name;
  final String info;
  /// A message describing the exception.
  final String? message;

  BaseException(
    this.info,
    {
      this.name='BaseException',
      this.message,
    }
  );

  @override
  String toString() {
    String msg = "$name: $info";
    if (message != null) msg += "\n\tLocal Message: $message";
    return msg;
  }
}

class TypeException extends BaseException {
  TypeException(
    this.types,
    {
      this.object,
      super.message,
    }
  ):
    super(
      "The type of `${object.runtimeType}` isn't of a valid type.\n\tValid Types: ${types.join(', ')}",
      name: 'TypeException'
    )
  ;
  /// The object that doesn't meet the type requirements.
  final Object? object;
  /// The list of types that are allowed.
  final List<Type> types;
}

class KeyException extends BaseException {
  KeyException(
    {
      required this.key,
      super.message,
    }
  ): super("The key of `${key.toString()}` isn't a valid key.", name: 'KeyException');

  /// The object that doesn't meet the type requirements.
  final Object key;
}