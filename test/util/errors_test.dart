import 'package:test/test.dart';
import 'package:dartora/util.dart';

void main() {
  test('BaseException toString contains name and info', () {
    final e = BaseException('Oops', name: 'Foo', message: 'bar');
    final s = e.toString();
    expect(s, contains('Foo'));
    expect(s, contains('Oops'));
    expect(s, contains('bar'));
  });

  test('TypeException formats allowed types', () {
    final e = TypeException([int, String], object: 3.14);
    expect(e.toString(), contains('int'));
    expect(e.toString(), contains('String'));
  });
}
