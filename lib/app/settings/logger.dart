import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_starter_kit/app/imports.dart';

import '../../src/common/enums/src/log_level_enum.dart';

class Logger {
  Logger._();

  static void debug(Object? message) => _customPrint('🟩', message, LogLevelEnum.debug);
  static void info(Object? message) => _customPrint('🟪', message, LogLevelEnum.info);
  static void warning(Object? message) => _customPrint('🟨', message, LogLevelEnum.warning);
  static void error(String? message, Object error) => _customPrint('🟥', '$message ** $error', LogLevelEnum.error);
  static void trace(String? message, Object error, StackTrace stackTrace) =>
      _customPrint('❌', '$message ** $error\n,$stackTrace', LogLevelEnum.trace);

  static void _customPrint(icon, Object? message, LogLevelEnum level) {
    // if (!kDebugMode) return;
    log('''$icon - ${level.colorStart}$message${level.colorEnd} ''');
  }
}
