import 'package:cuidapet_mobile/app/core/logger/app_logger.dart';
import 'package:logger/logger.dart';

class AppLoggerImpl implements AppLogger {
  final logger = Logger();

  var messages = [];

  @override
  void append(message) {
    messages.add(message);
  }

  @override
  void closeApend() {
    info(messages.join('\n'));
    messages = [];
  }

  @override
  void debug(message, [error, StackTrace? stackTrace]) {
    logger.d(message, error: error, stackTrace: stackTrace);
  }

  @override
  void error(message, [error, StackTrace? stackTrace]) {
    logger.e(message, error: error, stackTrace: stackTrace);
  }

  @override
  void info(message, [error, StackTrace? stackTrace]) {
    logger.i(message, error: error, stackTrace: stackTrace);
  }

  @override
  void warning(message, [error, StackTrace? stackTrace]) {
    logger.w(message, error: error, stackTrace: stackTrace);
  }
}
