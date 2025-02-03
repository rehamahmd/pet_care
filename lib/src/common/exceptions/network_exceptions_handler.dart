import 'package:dio/dio.dart';
import 'package:flutter_starter_kit/app/imports.dart';

class NetworkExceptionsHandler {
  static handelException(DioException ex, StackTrace st) {
    Logger.trace("handelException", ex, st);
    if (ex.type == DioExceptionType.connectionTimeout ||
        ex.type == DioExceptionType.receiveTimeout ||
        ex.type == DioExceptionType.connectionError) {
      throw Error.throwWithStackTrace(const ConnectivityException("Check Your Network"), st);
    }
    final response = ex.response;
    final exception = switch (response?.statusCode) {
      401 => const UnAuthorizeException(),
      403 => const ForbiddenException(),
      400 => OperationException("400ERROR"),
      500 => const ServerException(),
      _ => const UnCaughtException(),
    };
    throw Error.throwWithStackTrace(exception, st);
  }
}
