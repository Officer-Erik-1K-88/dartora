class ModificationAction {
  final ModificationListener listener;
  final ModLevel level;

  ModificationAction({
    required this.listener,
    required this.level,
  });
}

class _ModCatch {
  final ModLevel level;
  final ModificationAction Function(_ModCatch) checker;

  bool _ended = false;
  bool get ended => _ended;

  int _points = 0;
  int get points => _points;

  _ModCatch({
    required this.level,
    required this.checker,
  });

  /// Defines an action that is taken if this catch hasn't [ended].
  bool step(
    bool Function(ModificationAction) action,
  ) {
    if (_ended) return false;
    int pointsStart = _points;
    if (action(checker(this))) {
      _points += 1;
    }
    return pointsStart != _points;
  }

  /// Defines the end of modification of some object.
  void end(void Function(_ModCatch) action) {
    if (!_ended) {
      _ended = true;
      action(this);
    }
  }
}

enum ModLevel {
  zero,
  one;

  const ModLevel();

  /// Gives a new name to [index] for simplicity.
  int get level => index;
}
ModLevel getModLevelAt(int index) {
  return ModLevel.values[index];
}

enum ModResetType {
  modified,
  unmodified,
}

class ModificationListener {
  final void Function(ModificationListener, ModResetType) onReset;

  ModificationListener({
    required this.onReset,
  });

  bool get inModification => _catches.isNotEmpty;

  bool get beenModified => _points != 0;

  int _modCount = 0;
  int get modCount => _modCount;
  int _points = 0;

  final List<_ModCatch> _catches = [];

  /// Creates the handler that [ModificationListener] needs to function.
  _ModCatch _buildCatch(int level) {
    return _ModCatch(level: getModLevelAt(level), checker: (c) {
      return ModificationAction(listener: this, level: c.level);
    });
  }

  /// Defines the beginning of modification of some object.
  void start() {
    if (_catches.length != ModLevel.values.length) {
      _catches.add(_buildCatch(_catches.length));
    }
  }

  /// Defines an action that is taken if [inModification] is true.
  bool step(bool Function(ModificationAction) action) {
    if (inModification) {
      return _catches.last.step(action);
    }
    return false;
  }

  /// Defines the end of modification of some object.
  void end() {
    if (inModification) {
      _catches.removeLast().end((c) {
        _points += c._points;
        _modCount += 1;
      });
    }
  }

  void reset() {
    if (!inModification) {
      onReset(this, beenModified?ModResetType.modified:ModResetType.unmodified);
    }
  }
}