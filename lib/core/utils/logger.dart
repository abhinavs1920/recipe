import 'package:logger/logger.dart';

class CustomPrinter extends PrettyPrinter {
  CustomPrinter() : super(
    methodCount: 2, // Number of method calls to be displayed
    errorMethodCount: 8, // Number of method calls if stacktrace is provided
    lineLength: 120, // Width of the output
    colors: true, // Colorful log messages
    printEmojis: true, // Print an emoji for each log message
  );

  // @override
  // String getTime() {
  //   String _threeDigits(int n) => n.toString().padLeft(3, "0");
  //   String _twoDigits(int n) => n.toString().padLeft(2, "0");

  //   DateTime now = DateTime.now();
  //   String h = _twoDigits(now.hour);
  //   String min = _twoDigits(now.minute);
  //   String sec = _twoDigits(now.second);
  //   String ms = _threeDigits(now.millisecond);
  //   return "[$h:$min:$sec.$ms]";
  // }
}

final logger = Logger(
  printer: CustomPrinter(),
  // Add filters if needed
  filter: ProductionFilter(),
  // Customize output
  output: ConsoleOutput(),
);

// Helper methods for cleaner logging
void logInfo(String message, [String? tag]) {
  logger.i('${tag != null ? '[$tag] ' : ''}$message');
}

void logWarning(String message, [String? tag]) {
  logger.w('${tag != null ? '[$tag] ' : ''}$message');
}

void logError(String message, [String? tag, Object? error, StackTrace? stackTrace]) {
  logger.e('${tag != null ? '[$tag] ' : ''}$message');
}

void logDebug(String message, [String? tag]) {
  logger.d('${tag != null ? '[$tag] ' : ''}$message');
}

// Extension method for easier logging
extension LoggerExtension on Object {
  void log(String message) {
    logInfo(message, runtimeType.toString());
  }

  void logW(String message) {
    logWarning(message, runtimeType.toString());
  }

  void logE(String message, [Object? error, StackTrace? stackTrace]) {
    logError(message, runtimeType.toString(), error, stackTrace);
  }

  void logD(String message) {
    logDebug(message, runtimeType.toString());
  }
} 