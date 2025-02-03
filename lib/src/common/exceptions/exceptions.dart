import '../constants/src/strings.dart';

abstract class AppException implements Exception {
  final String? msg;
  const AppException([this.msg]);
}

class ServerException implements AppException {
  const ServerException([this.msg = serverErrorMessage]);
  @override
  final String? msg;
}

class UnAuthorizeException implements AppException {
  const UnAuthorizeException([this.msg = unAuthMessage]);
  @override
  final String? msg;
}

class ForbiddenException implements AppException {
  const ForbiddenException([this.msg = unAuthMessage]);
  @override
  final String? msg;
}

class OperationException implements AppException {
  const OperationException([this.msg = unAuthMessage]);
  @override
  final String? msg;
}

class BadEntitesException implements AppException {
  const BadEntitesException([this.msg = badInputsMessage]);
  @override
  final String? msg;
}

class NotFoundException implements AppException {
  const NotFoundException([this.msg = notFoundMessage]);
  @override
  final String? msg;
}

class UnCaughtException implements AppException {
  const UnCaughtException([this.msg = unCaughtMessage]);
  @override
  final String? msg;
}

class ConnectivityException implements AppException {
  const ConnectivityException([this.msg = noConnectionMessage]);
  @override
  final String? msg;
}

class UnSupportedJsonFormat implements AppException {
  const UnSupportedJsonFormat([this.msg]);
  @override
  final String? msg;
}

class UnprocessableContent implements AppException {
  const UnprocessableContent([this.msg]);
  @override
  final String? msg;
}
