// ignore_for_file: strict_raw_type

import 'package:dio/dio.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'extensions.dart';
import 'interceptors/app_interceptor.dart';

class GithubAppRest {
  late final Dio dio;
  late final String _apiUrl;
  late final int _receiveTimeout;
  late final int _connectTimeout;
  late final int _sendTimeout;
  late final Map<String, dynamic> _params;
  late final Map<String, dynamic> _headers;

  GithubAppRest({
    required String apiUrl,
    required int receiveTimeout,
    required int connectTimeout,
    required int sendTimeout,
    required Map<String, dynamic> params,
    required Map<String, dynamic> headers,
    bool? debug,
  }) {
    _apiUrl = apiUrl;
    _receiveTimeout = receiveTimeout;
    _connectTimeout = connectTimeout;
    _sendTimeout = sendTimeout;
    _params = params;
    _headers = headers;

    "***** HEADER $_headers".log;

    dio = createDio();
    // return dio;
  }

  Dio createDio() {
    //var protocol = kDebugMode ? 'http://' : 'https://';
    Dio dio = Dio(BaseOptions(
      baseUrl: _apiUrl,
      headers: _headers, // NO NEED, work from AppInterceptor
      receiveTimeout: Duration(seconds: _receiveTimeout), // 15 seconds
      connectTimeout: Duration(seconds: _connectTimeout),
      sendTimeout: Duration(seconds: _sendTimeout),
    ));

    dio.interceptors.addAll({
      PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          error: true,
          compact: true,
          maxWidth: 90),
      AppInterceptor(dio, _params, _headers),
      /*
      RetryInterceptor(
        dio: dio,
        logPrint: print, // specify log function (optional)
        retries: 3, // retry count (optional)
        retryDelays: const [
          // set delays between retries (optional)
          Duration(seconds: 1), // wait 1 sec before first retry
          Duration(seconds: 2), // wait 2 sec before second retry
          Duration(seconds: 3), // wait 3 sec before third retry
        ],
      ),*/
    });
    return dio;
  }

  // ignore: always_specify_types
  Future<Response> get(String path,
          // ignore: unnecessary_await_in_return
          {Map<String, dynamic>? queryParameters,
          Options? options}) async =>
      await dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
      );

  Future<Response> post(String path,
      {Map<String, dynamic>? data, Options? options}) async {
    return await dio.post(
      path,
      data: data,
      options: options,
    );
  }

  Future<Response> put(String path,
      {Map<String, dynamic>? data, Options? options}) async {
    return await dio.put(
      path,
      data: data,
      options: options,
    );
  }

  Future<Response> patch(String path,
      {Map<String, dynamic>? data, Options? options}) async {
    return await dio.patch(
      path,
      data: data,
      options: options,
    );
  }

  Future<Response> delete(String path,
      {Map<String, dynamic>? data, Options? options}) async {
    return await dio.delete(
      path,
      data: data,
      options: options,
    );
  }
}
