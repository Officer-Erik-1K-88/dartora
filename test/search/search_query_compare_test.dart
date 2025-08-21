import 'package:test/test.dart';
import 'package:dartora/search.dart';

void main() {
  group('SearchQuery.compare()', () {
    final engine = QueryEngine.defaultEngine;

    test('scores required, optional, and cannot correctly', () {
      final q = engine.buildQuery('"hello world" foo -bad #cool');
      // Title contains required and optional
      final comp1 = q.compare('say hello world to foo');
      expect(comp1.hasRequired, isTrue);
      expect(comp1.containsNotAllowed, isFalse);
      expect(comp1.points.total, greaterThan(0));

      // Contains cannot
      final comp2 = q.compare('this has bad things');
      expect(comp2.containsNotAllowed, isTrue);

      // Tags considered when asTag is true
      final tagComp = q.compare('cool', asTag: true);
      expect(tagComp.points.total, greaterThan(0));
    });
  });
}
