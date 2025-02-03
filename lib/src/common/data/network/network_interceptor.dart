import 'package:dio/dio.dart';

// TODO IMPLEMENT => Handle Refresh Token
class NetworkInterceptor extends QueuedInterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    return handler.next(options);
  }
}
