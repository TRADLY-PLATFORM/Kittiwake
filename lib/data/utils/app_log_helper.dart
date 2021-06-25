import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

//get logger
Logger getLogger(String className) {
  return Logger(printer: AppLogHelper(className));
}

//log util to print log
class AppLogHelper extends LogPrinter {
  final String className;

  AppLogHelper(this.className);

  @override
  void log(LogEvent event) {
    var color = PrettyPrinter.levelColors[event.level];
    var emoji = PrettyPrinter.levelEmojis[event.level];

    if (bool.fromEnvironment('PRODUCTION', defaultValue: true)) {
      //have to check is in debug mode or production mode to disable the og or not
      debugPrint(
          '==========================================================================');
      debugPrint(color('[ $emoji $className - ${event.message} ]'));
      debugPrint(
          '==========================================================================');
    }
  }
}
