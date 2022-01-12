import 'dart:io';

import 'package:pizza/resources/resources.dart';
import 'package:test/test.dart';

void main() {
  test('disign assets test', () {
    expect(File(Disign.pizza).existsSync(), true);
  });
}
