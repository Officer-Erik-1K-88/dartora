# KeyException

`KeyException` indicates that a key used to access a map or another keyed data structure is invalid or not present.  It extends [`BaseException`](BaseException.md) and provides the offending key in its message.

### Constructor

```dart
KeyException({ required Object key, String? message })
```

- `key` – the object used as a key that failed validation.  It is stored in the `key` field and its `toString()` is included in the error message.
- `message` – optional additional context (passed through to `BaseException`).

### Message format

The `info` string passed to `BaseException` is:

```
"The key of `<key.toString()>` isn't a valid key."
```

`name` is set to `'KeyException'`, so the default `toString()` prints:

```
KeyException: The key of `<key>` isn't a valid key.
	Local Message: <message>
```

### Usage

`KeyException` is thrown in `LargeIterable.getItem()` and `LargeList.getItem()` when a key does not exist within the current view.  It can also be thrown by any custom code that validates keys before performing an operation.
