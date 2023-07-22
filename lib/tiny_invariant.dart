library tiny_invariant

const bool _isProduction = bool.fromEnvironment('dart.vm.product');
const String _prefix = 'Invariant failed';

void invariant(bool condition, String message) {
  assert(() {
    if (!condition) {
      final errorMessage = message != null ? '$_prefix: $message' : _prefix;
      throw AssertionError(errorMessage);
    }
    return true;
  }(), '');
  
  if (!_isProduction && message != null) {
    final errorMessage = '$_prefix: $message';
    throw AssertionError(errorMessage);
  }
}
