library tiny_invariant;

const String _prefix = 'Invariant failed';

void invariant(bool condition, String? message) {
  final msg = '$_prefix: $message';
  if (condition) {
    return;
  } else if (message!.isNotEmpty) {
    throw Exception(msg);
  } else {
    throw Exception(_prefix);
  }
}
