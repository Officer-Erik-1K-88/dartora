import 'package:test/test.dart';
import 'package:dartora/search.dart';

void main() {
  group('QueryEngine & QueryBuilder', () {
    final engine = QueryEngine.defaultEngine;

    test('splits optional words by space', () {
      final q = engine.buildQuery('alpha beta');
      expect(q.optional.map((p) => p.word).toList(), equals(['alpha', 'beta']));
      expect(q.require, isEmpty);
      expect(q.cannot, isEmpty);
      expect(q.tags, isEmpty);
    });

    test('quoted block becomes required', () {
      final q = engine.buildQuery('"hello world" foo');
      expect(q.require.map((p) => p.word).toList(), equals(['hello world']));
      expect(q.optional.map((p) => p.word).toList(), contains('foo'));
    });

    test('dash prefixes cannot list (negative points)', () {
      final q = engine.buildQuery('-bad good');
      expect(q.cannot.map((p) => p.word).toList(), equals(['bad']));
      expect(q.cannot.first.points, lessThan(0));
      expect(q.optional.map((p) => p.word).toList(), equals(['good']));
    });

    test('hash prefixes tags list', () {
      final q = engine.buildQuery('#cool stuff');
      expect(q.tags.map((p) => p.word).toList(), equals(['cool']));
      expect(q.optional.map((p) => p.word).toList(), equals(['stuff']));
    });

    test('escape prevents special meaning', () {
      final q = engine.buildQuery(r'\#notatag'); // backslash escapes '#'
      // Note: Dart string: \\ becomes two characters: '' then '#'
      // After engine parsing, there should be no tags, and the word retains '#'
      expect(q.tags, isEmpty);
      expect(q.optional.single.word.contains('#'), isTrue);
    });

    test('wildcard * maps to . in regex via getExpression()', () {
      final exp = engine.getExpression('f @-Wild- o'); // how builder encodes '*' into pattern
      expect(exp.hasMatch('fao'), isTrue);
      expect(exp.hasMatch('fZZZo'), isFalse);
    });
  });
}
