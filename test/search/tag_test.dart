import 'package:test/test.dart' hide Tags;
import 'package:dartora/search.dart';

void main() {
  group('Tag & Tags', () {
    test('bool tags must be isTag', () {
      final t = Tag<bool>(name: 'active', value: true, isTag: true);
      expect(t.isTag, isTrue);
      expect(t.value, isTrue);
    });

    test('non-bool data tags', () {
      final t = Tag<int>(name: 'count', value: 3, isTag: false);
      expect(t.value, 3);
      expect(t.isTag, isFalse);
    });

    test('Tags add/get/keys', () {
      final tags = Tags([
        Tag<bool>(name: 'x', value: true, isTag: true),
        Tag<int>(name: 'y', value: 7, isTag: false),
      ]);
      // Index by name
      expect(tags['x']!.value, isTrue);
      expect(tags['y']!.value, 7);

      // Add and retrieve
      tags.add(Tag<String>(name: 'label', value: 'ok', isTag: false));
      expect(tags['label']!.value, 'ok');

      // Keys contain the tag names
      expect(tags.keys.toSet(), containsAll(['x', 'y', 'label']));
    });
  });
}
