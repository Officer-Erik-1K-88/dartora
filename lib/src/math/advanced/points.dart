
import '../basic/comparison.dart';
import 'curves.dart';

abstract class Points implements Comparable<Points> {
  /// Gets the positive points.
  int get positive;
  /// Gets the negative points.
  int get negative;
  /// Gets the total number of positive occurrences.
  ///
  /// A positive occurrence is defined as the number
  /// of times that some action should have caused
  /// [positive] points to increase by `x` times occurrence,
  /// but only caused [positive] points to increase
  /// by `x` amount.
  int get occurrences;
  /// Gets the [positive] points modifier.
  ///
  /// The modifier modifies [positive] points
  /// in [positiveModded] points so that it
  /// can be defined as the total count of
  /// [positive] points.
  ///
  /// The modifier is defined as a sequence in steps
  /// that is computed based on getting a stepwise output
  /// for each positive occurrence that was found at the time
  /// of increase of [positive] points.
  int get modifier;

  /// Gets the total count of [positive] points.
  ///
  /// The total count of [positive] points is defined
  /// as the product of [modifier] and [positive] points.
  int get positiveModded => modifier * positive;

  /// Gets the total points count.
  ///
  /// The total is defined as the total count of
  /// [positive] points minus [negative] points.
  int get total => positiveModded - negative;

  Points();

  factory Points.from({
    required int positive,
    required int negative,
    required int occurrences,
    required int modifier,
  }) {
    return UnmodifiablePoints(
      positive: positive,
      negative: negative,
      occurrences: occurrences,
      modifier: modifier,
    );
  }

  factory Points.all(int value) = UnmodifiablePoints.all;

  factory Points.empty() = UnmodifiablePoints.empty;

  Points operator +(Points p) {
    return Points.from(
      positive: positive + p.positive,
      negative: negative + p.negative,
      occurrences: occurrences + p.occurrences,
      modifier: modifier + p.modifier
    );
  }

  Points operator -(Points p) {
    return Points.from(
      positive: positive - p.positive,
      negative: negative - p.negative,
      occurrences: occurrences - p.occurrences,
      modifier: modifier - p.modifier
    );
  }

  Points operator *(Points p) {
    return Points.from(
      positive: positive * p.positive,
      negative: negative * p.negative,
      occurrences: occurrences * p.occurrences,
      modifier: modifier * p.modifier
    );
  }

  Points operator /(Points p) {
    return Points.from(
      positive: (positive / p.positive).floor(),
      negative: (negative / p.negative).floor(),
      occurrences: (occurrences / p.occurrences).floor(),
      modifier: (modifier / p.modifier).floor()
    );
  }

  @override
  int compareTo(Points other) {
    return total.compareTo(other.total);
  }

  @override
  bool operator ==(Object other) {
    return total == numberCast(other);
  }

  bool operator >=(dynamic other) {
    return total >= numberCast(other);
  }

  bool operator <=(dynamic other) {
    return total <= numberCast(other);
  }

  bool operator >(dynamic other) {
    return total > numberCast(other);
  }

  bool operator <(dynamic other) {
    return total < numberCast(other);
  }

  @override
  int get hashCode => total.hashCode;

  @override
  String toString() {
    return total.toString();
  }

  /// Gets the [total] points.
  int toInt() {
    return total;
  }

  /// Gets the [total] points as a [double].
  double toDouble() {
    return total.toDouble();
  }

  /// Converts this [Points] to an [UnmodifiablePoints].
  ///
  /// This is useful when needing a static view of
  /// [ModifiablePoints] that has no way of having it's
  /// internal states changed.
  Points toUnmodifiable() {
    return UnmodifiablePoints(
      positive: positive,
      negative: negative,
      occurrences: occurrences,
      modifier: modifier,
    );
  }
}

class UnmodifiablePoints extends Points {
  @override
  final int positive;
  @override
  final int negative;
  @override
  final int occurrences;
  @override
  final int modifier;

  UnmodifiablePoints({
    required this.positive,
    required this.negative,
    required this.occurrences,
    required this.modifier,
  });

  UnmodifiablePoints.all(int value):
    positive=value,
    negative=value,
    occurrences=value,
    modifier=value
  ;

  UnmodifiablePoints.empty(): this.all(0);
}

class ModifiablePoints extends Points {
  int _positive = 0;
  int _negative = 0;
  int _occurrences = 0;
  int _modifier = 0;

  @override
  int get positive => _positive;
  
  @override
  int get negative => _negative;
  
  @override
  int get occurrences => _occurrences;
  
  @override
  int get modifier => _modifier;

  ModifiablePoints();

  void addPositive(int count, int occurrence) {
    assert(count > 0);
    assert(occurrence >= 0);
    if (occurrence != 0) {
      _positive += count;
      _occurrences += occurrence;
      _modifier += max(stepwiseGrowth(occurrence), 1);
    }
  }

  void addNegative(int count) {
    assert(count > 0);
    _negative += count;
  }

  void clear() {
    _positive = 0;
    _negative = 0;
    _occurrences = 0;
    _modifier = 0;
  }

  void addPoints(Points other) {
    _positive += other.positive;
    _negative += other.negative;
    _occurrences += other.occurrences;
    _modifier += other.modifier;
  }

  void subtractPoints(Points other) {
    _positive -= other.positive;
    _negative -= other.negative;
    _occurrences -= other.occurrences;
    _modifier -= other.modifier;
  }
}