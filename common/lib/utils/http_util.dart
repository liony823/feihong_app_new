import 'dart:io';

import 'package:common/common.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';

var dio = Dio();

class HttpUtil {
  static void init() {
    final httpClient = HttpClient();
    httpClient.badCertificateCallback = (
      X509Certificate cert,
      String host,
      int port,
    ) {
      // 信任所有证书
      return true;
    };
    dio.httpClientAdapter =
        IOHttpClientAdapter()
          ..createHttpClient = () {
            return httpClient;
          };
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['token'] = DataSp.token;
          return handler.next(options); //continue
        },
        onResponse: (response, handler) {
          return handler.next(response); // continue
        },
        onError: (DioException error, handler) {
          if (error.type != DioExceptionType.cancel) {
            final context = Global.context!;
            if (context.mounted) {
              final errRes = error.response?.data;
              if (errRes != null) {
                if (errRes['status'] != null &&
                    !Utils.isEmptyOrNull(errRes['msg'])) {
                  final msgCode = errRes['msg'];
                  final errorText = context.t.errors.error[msgCode];
                  if (errorText != null) {
                    Utils.toast(description: errorText);
                  }
                  return handler.reject(error);
                }
              }
              final errType = error.type.name;
              final errorText = context.t.errors.httpError[errType];
              if (errorText != null) {
                Utils.toast(description: errorText);
              }
            }
          }
          return handler.reject(error); //continue
        },
      ),
    );

    dio.options.connectTimeout = const Duration(seconds: 10); //30s
    dio.options.receiveTimeout = const Duration(seconds: 10);
  }

  static Future post(
    String path, {
    dynamic data,
    bool showErrorToast = true,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      data ??= {};
      options ??= Options();
      options.headers ??= {};

      var result = await dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return result.data;
    } catch (error) {
      return Future.error(error);
    }
  }

  static Future get(
    String path, {
    Map<String, dynamic>? queryParameters,
    bool showErrorToast = true,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    queryParameters ??= {};
    options ??= Options();
    options.headers ??= {};
    try {
      final result = await dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return result.data;
    } catch (error) {
      return Future.error(error);
    }
  }

  static Future put(
    String path, {
    dynamic data,
    bool showErrorToast = true,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      data ??= {};
      options ??= Options();
      options.headers ??= {};

      var result = await dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return result.data;
    } catch (error) {
      return Future.error(error);
    }
  }
}
