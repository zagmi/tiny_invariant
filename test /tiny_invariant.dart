import 'package:test/test.dart';
import 'package:tiny_invariant/tiny_invariant.dart';

void main() {
  test('invariant should not throw an exception when the condition is true',
      () {
    expect(() => invariant(true, 'Test message'), returnsNormally);
  });

  test(
      'invariant should throw an exception when the condition is false and the message is not empty',
      () {
    expect(() => invariant(false, 'Test message'), throwsA(isA<Exception>()));
  });

  test(
      'invariant should not throw an exception when the condition is false and the message is empty',
      () {
    expect(() => invariant(false, ''), throwsA(isA<Exception>()));
  });
}
