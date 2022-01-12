import 'dart:io';

import 'package:pizza/resources/resources.dart';
import 'package:test/test.dart';

void main() {
  test('ico assets test', () {
    expect(File(Ico.cheese).existsSync(), true);
    expect(File(Ico.marker).existsSync(), true);
    expect(File(Ico.union).existsSync(), true);
  });
}
