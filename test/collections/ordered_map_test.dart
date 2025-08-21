import 'package:test/test.dart';
import 'package:dartora/collections.dart';

void main() {
  group('OrderedMap', () {
    test('preserves specified key order on iteration', () {
      final map = {'b': 2, 'a': 1, 'c': 3};
      final ordered = OrderedMap<String, int>(map: map, keys: ['a','b','c']);
      expect(ordered.keys.toList(), equals(['a','b','c']));
      expect(ordered.values.toList(), equals([1,2,3]));
      expect(ordered.entries.map((e)=>e.key).toList(), equals(['a','b','c']));
    });

    test('putIfAbsent respects order list', () {
      final map = {'x': 1};
      final ordered = OrderedMap<String, int>(map: map, keys: ['x']);
      ordered.putIfAbsent('y', () => 2);
      expect(ordered['y'], 2);
      // Default behavior places new keys at end of order
      expect(ordered.keys.last, 'y');
    });

    test('remove updates order', () {
      final map = {'a': 1, 'b': 2, 'c': 3};
      final ordered = OrderedMap<String, int>(map: map, keys: ['a','b','c']);
      ordered.remove('b');
      expect(ordered.keys.toList(), equals(['a','c']));
    });
  });
}
