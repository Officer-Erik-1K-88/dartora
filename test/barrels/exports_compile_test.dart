// This test ensures the export barrels compile and symbols are visible.
import 'package:test/test.dart';
import 'package:dartora/dartora.dart';
import 'package:dartora/collections.dart' as col;
import 'package:dartora/math.dart' as mathlib;
import 'package:dartora/search.dart' as searchlib;
import 'package:dartora/util.dart' as util;

void main() {
  test('barrels import basic symbols', () {
    // Just reference a few types/functions to ensure exports are wired.
    expect(mathlib.e, isNonZero);
    final m = col.OrderedMap<String, int>(map: {'a':1});
    expect(m['a'], 1);
    final x = util.BaseException('info');
    expect(x.info, 'info');
    final tag = searchlib.Tag<bool>(name: 't', value: false, isTag: true);
    expect(tag.isTag, isTrue);
  });
}
