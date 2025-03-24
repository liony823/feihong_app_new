import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';

import 'package:feihong/utils/utils.dart';
import '../global.dart';
import '../i18n/localized.g.dart';

var dio = Dio();

class HttpUtil {
  static void init() {
    final httpClient = HttpClient();
    httpClient.badCertificateCallback =
        (X509Certificate cert, String host, int port) {
      // 信任所有证书
      return true;
    };
    dio.httpClientAdapter = DefaultHttpClientAdapter()
      ..onHttpClientCreate = (client) {
        return httpClient;
      };
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      return handler.next(options); //continue
    }, onResponse: (response, handler) {
      return handler.next(response); // continue
    }, onError: (DioException e, handler) {
      return handler.next(e); //continue
    }));

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

      var result = await dio.post<Map<String, dynamic>>(
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
      if (error is DioException) {
        if (error.type != DioExceptionType.cancel) {
          final context = Global.context!;
          if (context.mounted) {
            final errRes = error.response?.data;
            if (errRes != null) {
              if (errRes['code'] != null &&
                  !Utils.isEmptyOrNull(errRes['message'])) {
                final description = errRes['message'];
                Utils.toast(
                  description: description,
                );
                return Future.error(errRes);
              }
            }
            final errType = error.type.name;
            final errorText = context.t.httpError[errType];
            if (showErrorToast && errorText != null) {
              Utils.toast(
                description: errorText,
              );
            }
          }
        }
      }
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
      final result = await dio.get<Map<String, dynamic>>(path,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress);
      return result.data;
    } catch (error) {
      if (error is DioException) {
        if (error.type != DioExceptionType.cancel) {
          final context = Global.context!;
          if (context.mounted) {
            final errRes = error.response?.data;
            if (errRes != null) {
              if (errRes['code'] != null &&
                  !Utils.isEmptyOrNull(errRes['message'])) {
                final description = errRes['message'];
                Utils.toast(
                  description: description,
                );
                return Future.error(errRes);
              }
            }
            final errType = error.type.name;
            final errorText = context.t.httpError[errType];
            if (showErrorToast && errorText != null) {
              Utils.toast(
                description: errorText,
              );
            }
          }
        }
      }
      return Future.error(error);
    }
  }
}
