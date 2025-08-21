# TypeException

`TypeException` indicates that an object is not of an expected type.  It extends [`BaseException`](BaseException.md) and formats a helpful error message that lists the allowed types.

### Constructor

```dart
TypeException(List<Type> types, { Object? object, String? message })
```

- `types` – a list of allowed types.  The exception reports these in its `info` string.
- `object` – the offending object whose type did not match.  If provided, its runtime type is included in the error.  If `object` is `null`, the type is reported as `null`.
- `message` – optional local message (passed through to `BaseException`).

### Message format

`TypeException` calls `super(info, name: 'TypeException', message: message)`, where `info` is:

```
"The type of `<object.runtimeType>` isn't of a valid type.\n\tValid Types: <types.join(', ')>"
```

This results in a message such as:

```
TypeException: The type of `String` isn't of a valid type.
	Valid Types: int, double
```

### Usage

`TypeException` should be thrown when a function receives an argument that does not match any of the expected types.  This helps developers quickly identify what kind of value is allowed.
