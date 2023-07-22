library tiny_invariant

const bool isProduction = bool.fromEnvironment('dart.vm.product');
const String prefix = 'Invariant failed';

void invariant(bool condition, [String Function() message]) {
  if (condition) {
    return;
  }

  if (isProduction) {
    throw Error(prefix);
  }

  final provided = message?.call();
  final value = provided != null ? '$prefix: $provided' : prefix;
  throw Error(value);
