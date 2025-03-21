import 'package:dio/dio.dart';
import 'package:feihong_app_new/utils/utils.dart';
import '../config.dart';
import '../global.dart';
import '../i18n/localized.g.dart';

var dio = Dio();


class HttpUtil {
  static void init() {
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      return handler.next(options); //continue
    }, onResponse: (response, handler) {
      return handler.next(response); // continue
    }, onError: (DioException e, handler) {
      return handler.next(e); //continue
    }));


    dio.options.baseUrl = Config.apiURL;
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
}
