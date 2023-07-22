library tiny_invariant

import 'package:dotenv/dotenv.dart' as dotenv;

const String _prefix = 'Invariant failed';

void invariant(bool condition, [String message]) {
  final isProduction = dotenv.env['APP_ENV'] == 'production';
  
  if (!condition) {
    final errorMessage = message != null ? '$_prefix: $message' : _prefix;
    if (isProduction) {
      throw Error(errorMessage);
    } else {
      throw AssertionError(errorMessage);
    }
  }
}
