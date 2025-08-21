# BaseException

`BaseException` is the common base class for all custom exceptions in the Dartora package.  It holds a *name*, *info* and an optional *message*, and overrides `toString()` to produce a human‑readable description.

### Constructor

```dart
BaseException(
  String info, {
  String name = 'BaseException',
  String? message,
})
```

- `info` – a short description of what went wrong.  This is included in the first line of the exception message.
- `name` – the class name used in `toString()` (defaults to `'BaseException'`).
- `message` – an optional second line providing additional context.

### `toString()`

The `toString()` method builds a string in the form `"<name>: <info>"` and, if `message` is non‑null, appends `"\n\tLocal Message: <message>"`.  This allows you to embed one more explanatory line while keeping the primary info concise.

### Usage

`BaseException` should not be thrown directly.  Instead, subclass it to provide more specific error types (e.g. [`TypeException`](TypeException.md), [`KeyException`](KeyException.md)).  When throwing a `BaseException`, always supply an informative `info` string and, optionally, a `message` for local debugging.
