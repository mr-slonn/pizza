import 'dart:io';

import 'package:pizza/resources/resources.dart';
import 'package:test/test.dart';

void main() {
  test('logo assets test', () {
    expect(File(Logo.dartLogo).existsSync(), true);
  });
}
