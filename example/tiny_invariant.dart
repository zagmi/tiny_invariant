import 'package:tiny_invariant/tiny_invariant.dart';

void main() {
  final x = 2;
  final y = 2;
  invariant((y + x) == 3, 'x + y is not 3'); // return exception
}
