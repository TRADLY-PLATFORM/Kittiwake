//import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

//get logger
Logger getLogger(String className) {
  return Logger(printer: AppLogHelper(className));
}

//log util to print log
class AppLogHelper extends PrettyPrinter {
  final String className;

  AppLogHelper(this.className);

  @override
  List<String> log(LogEvent event) {
    var color = PrettyPrinter.levelColors[event.level];
    var emoji = PrettyPrinter.levelEmojis[event.level];
    List<String> logs = [];
    //if (bool.fromEnvironment('PRODUCTION', defaultValue: true) && color !=null) {
      //have to check is in debug mode or production mode to disable the og or not
      logs.add(
          '==========================================================================');
      logs.add((color!('[ $emoji $className - ${event.message} ]')));
      logs.add(
          '==========================================================================');
    //}
    return logs;
  }
}
