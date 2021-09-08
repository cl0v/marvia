import 'package:logger/logger.dart';

var printLogger = Logger(
  printer: PrettyPrinter(),
);

var printLoggerNoStack = Logger(
  printer: PrettyPrinter(methodCount: 0),
);

void main() {
  print(
      'Run with either `dart example/main.dart` or `dart --enable-asserts example/main.dart`.');
  demo();
}

void demo() {
  printLogger.d('Log message with 2 methods');

  printLoggerNoStack.i('Info message');

  printLoggerNoStack.w('Just a warning!');

  printLogger.e('Error! Something bad happened', 'Test Error');

  printLoggerNoStack.v({'key': 5, 'value': 'something'});

  Logger(printer: SimplePrinter(colors: true)).v('boom');
}