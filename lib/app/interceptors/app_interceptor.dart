import 'dart:developer';

import 'package:dio/dio.dart';

class AppInterceptor extends Interceptor {
  final Dio dio;
  final Map<String, dynamic> params;
  final Map<String, dynamic> headers;

  AppInterceptor(this.dio, this.params, this.headers);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // ignore: todo
    // TODO
    /*
    var accessToken = await TokenRepository().getAccessToken();

    if (accessToken != null) {
      var expiration = await TokenRepository().getAccessTokenRemainingTime();

      if (expiration.inSeconds < 60) {
        dio.interceptors.requestLock.lock();

        // Call the refresh endpoint to get a new token
        await UserService().refresh().then((response) async {
          await TokenRepository().persistAccessToken(response.accessToken);
          accessToken = response.accessToken;
        }).catchError((error, stackTrace) {
          handler.reject(error, true);
        }).whenComplete(() => dio.interceptors.requestLock.unlock());
      }

      options.headers['Authorization'] = 'Bearer $accessToken';
    }*/
    options.headers = headers;
    options.connectTimeout = Duration(milliseconds: 5000);
    options.receiveTimeout = Duration(milliseconds: 3000);
    ;

    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
       if (err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout) {
      log(
        'Request timeout',
        error: err,
        stackTrace: err.stackTrace,
      );
    } else if (err.type == DioExceptionType.badResponse) {
      log(
        'HTTP error: ${err.response?.statusCode}',
        error: err,
        stackTrace: err.stackTrace,
      );
    } else if (err.type == DioExceptionType.cancel) {
      log(
        'Request canceled',
        error: err,
        stackTrace: err.stackTrace,
      );
    } else {
      log(
        'Network error',
        error: err,
        stackTrace: err.stackTrace,
      );
    }

    return handler.next(err);
  }
}

class BadRequestException extends DioError {
  BadRequestException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Invalid request';
  }
}

class InternalServerErrorException extends DioError {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Unknown error occurred, please try again later.';
  }
}

class ConflictException extends DioError {
  ConflictException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Conflict occurred';
  }
}

class UnauthorizedException extends DioError {
  UnauthorizedException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Access denied';
  }
}

class NotFoundException extends DioError {
  NotFoundException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The requested information could not be found';
  }
}

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'No internet connection detected, please try again.';
  }
}

class DeadlineExceededException extends DioError {
  DeadlineExceededException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The connection has timed out, please try again.';
  }
}
