# ModificationListener

Tracks *begin / action / end* of modifications on an object at discrete levels (`ModLevel`).

## Usage
```dart
final ml = ModificationListener();
ml.start();           // begin a modification scope
final act = ml.action(ModLevel.content); // record an action
ml.end();             // end scope
```

- `action(ModLevel)` returns a `ModificationAction` snapshot you can store or compare.
- `reset(ModResetType)` resets bookkeeping; used to coalesce or discard prior actions.
