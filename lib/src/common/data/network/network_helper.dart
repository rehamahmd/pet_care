import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_starter_kit/app/imports.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../../exceptions/network_exceptions_handler.dart';
import 'network_interceptor.dart';

@injectable
class NetworkHelper {
  Dio dio = Dio();

  NetworkHelper() {
    final Map<String, dynamic> headers = {
      'Accept': 'application/json',
      'Content-Type': "application/json",
      'Device-Type': Platform.isAndroid ? 0 : 1
    };
    final BaseOptions options = BaseOptions(
      baseUrl: AppFlavors.baseUrl,
      connectTimeout: const Duration(milliseconds: 80000),
      receiveTimeout: const Duration(milliseconds: 80000),
      sendTimeout: const Duration(milliseconds: 80000),
      headers: headers,
    );
    dio.options = options;
    dio.interceptors.addAll([
      NetworkInterceptor(),
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        enabled: kDebugMode,
      ),
    ]);
  }

  Future<Response> get(
    path, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (headers != null) dio.options.headers = headers;
      final Response response = await dio.get(path, queryParameters: queryParameters);
      return response;
    } on DioException catch (ex, st) {
      throw await NetworkExceptionsHandler.handelException(ex, st);
    } catch (e) {
      throw OperationException();
    }
  }

  Future<Response> post(
    url, {
    dynamic body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      if (headers != null) dio.options.headers = headers;
      final response = await dio.post(url, data: body, queryParameters: queryParameters);
      return response;
    } on DioException catch (ex, st) {
      throw NetworkExceptionsHandler.handelException(ex, st);
    } catch (e) {
      throw OperationException();
    }
  }

  Future<Response> patch(
    url, {
    Map<String, String>? headers,
    dynamic body,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (headers != null) dio.options.headers = headers;
      final response = await dio.patch(url, data: body, queryParameters: queryParameters);
      return response;
    } on DioException catch (ex, st) {
      throw NetworkExceptionsHandler.handelException(ex, st);
    } catch (e) {
      throw OperationException();
    }
  }

  Future<Response> delete(
    String url, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (headers != null) dio.options.headers = headers;
      final response = await dio.delete(url, queryParameters: queryParameters);
      return response;
    } on DioException catch (ex, st) {
      throw NetworkExceptionsHandler.handelException(ex, st);
    } catch (e) {
      throw OperationException();
    }
  }
}
