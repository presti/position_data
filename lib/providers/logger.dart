import 'package:flutter/widgets.dart';

abstract class Logger {
  const Logger._();

  static void debugLog(String message, Object o) {
    debugPrint('$message. $o');
  }

  static void logError(String message, Object error, {StackTrace stackTrace}) {
    // Log error.
  }
}
