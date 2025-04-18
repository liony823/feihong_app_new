import 'package:common/common.dart';
import 'package:dio/dio.dart';
import 'api_config.dart';

/// API客户端类，处理所有网络请求
class ApiClient {
  final Dio _dio;
  static ApiClient? _instance;

  // 单例模式
  static ApiClient get instance {
    _instance ??= ApiClient._internal();
    return _instance!;
  }

  // 私有构造函数
  ApiClient._internal() : _dio = Dio() {
    _initDio();
  }

  // 初始化Dio配置
  void _initDio() {
    _dio.options = BaseOptions(
      baseUrl: ApiConfig.baseUrl,
      connectTimeout: Duration(milliseconds: AppConstants.connectionTimeout),
      receiveTimeout: Duration(milliseconds: AppConstants.receiveTimeout),
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
    );

    // 添加拦截器
    _dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      error: true,
    ));

    // 添加认证拦截器
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // 从本地存储获取token并添加到请求头
        final token = SpHelper.getToken();
        final uid = SpHelper.getUID();
        if (token != null) {
          options.headers['token'] = token;
        }
        if (uid != null) {
          options.headers['uid'] = uid;
        }
        return handler.next(options);
      },
      onError: (DioException error, handler) {
        if (error.type != DioExceptionType.cancel) {
          final context = Global.context!;
          if (context.mounted) {
            final errRes = error.response?.data;
            if (errRes != null && errRes is Map<String, dynamic>) {
              if (errRes['status'] != null &&
                  (errRes['msg'] as String).isNotNullOrEmpty) {
                final msgCode = errRes['msg'];
                final errorText = context.t.errors.error[msgCode];
                if (errorText != null) {
                  ToastUtil.toast(description: errorText);
                } else {
                  ToastUtil.toast(
                    description: context.t.errors.somethingUnexpected,
                  );
                }
                return handler.reject(error);
              }
            }
            final errType = error.type.name;
            final errorText = context.t.errors.httpError[errType];
            if (errorText != null) {
              ToastUtil.toast(description: errorText);
            }
          }
        }
        return handler.reject(error); //continue
      },
    ));
  }

  /// 发送GET请求
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      AppLogger.e('GET请求错误: $path', e);
      rethrow;
    }
  }

  /// 发送POST请求
  Future<Response> post(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      AppLogger.e('POST请求错误: $path', e);
      rethrow;
    }
  }

  /// 发送PUT请求
  Future<Response> put(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      AppLogger.e('PUT请求错误: $path', e);
      rethrow;
    }
  }

  /// 发送DELETE请求
  Future<Response> delete(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response;
    } catch (e) {
      AppLogger.e('DELETE请求错误: $path', e);
      rethrow;
    }
  }
}
