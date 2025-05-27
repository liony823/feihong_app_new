import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'im_repository.g.dart';

class IMRepository {
  final ApiClient _apiClient;

  IMRepository(this._apiClient);

  /// 获取IM通信地址
  Future<String> getIMTCPAddress(String uid) async {
    String ip = '';
    try {
      final response = await _apiClient.get("/users/$uid/im");
      ip = response.data['tcp_addr'];
    } catch (e) {
      AppLogger.e('获取IM通信地址失败', e);
      ip = '';
    }
    return ip;
  }
}

@riverpod
IMRepository imRepository(Ref ref) {
  return IMRepository(ApiClient.instance);
}
