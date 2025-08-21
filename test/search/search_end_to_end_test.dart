import 'package:test/test.dart' hide Tags;
import 'package:dartora/search.dart';

Tags makeTags({bool cool=false, String? label}) {
  final list = <Tag>[];
  if (cool) list.add(Tag<bool>(name: 'cool', value: true, isTag: true));
  if (label != null) list.add(Tag<String>(name: 'label', value: label, isTag: false));
  return Tags(list);
}

Searchable makeItem({
  required String id,
  required String name,
  String title='',
  String description='',
  Tags? tags,
}) {
  return Searchable.build(
    id: id,
    name: name,
    type: SearchableType.child,
    title: title,
    description: description,
    tags: tags ?? Tags([]),
  );
}

void main() {
  group('Search end-to-end', () {
    test('filters by required and cannot; ranks by points', () {
      final a = makeItem(
        id: 'a', name: 'A',
        title: 'greeting',
        description: 'hello world and foo',
        tags: makeTags(cool: true, label: 'five'),
      );
      final b = makeItem(
        id: 'b', name: 'B',
        title: 'contains bad word',
        description: 'hello world but has bad',
        tags: makeTags(cool: true),
      );
      final c = makeItem(
        id: 'c', name: 'C',
        title: 'just foo here',
        description: 'no required phrase',
        tags: makeTags(cool: false, label: 'foo'),
      );

      final search = Search.from('"hello world" foo -bad #cool');
      final results = search.search(held: [a,b,c], includeChildren: false);

      // b must be filtered (contains -bad)
      expect(results.any((si) => si.item.id == 'b'), isFalse);

      // c must be filtered (missing required "hello world")
      expect(results.any((si) => si.item.id == 'c'), isFalse);

      // only 'a' remains and should have positive score
      expect(results.single.item.id, 'a');
      expect(results.single.comparison.points.total, greaterThan(0));
    });
  });
}
