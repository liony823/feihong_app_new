import 'package:auth/models/user_info.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/user_cert.dart';

part 'auth_repository.g.dart';

/// 认证仓库，处理与认证相关的数据操作
class AuthRepository {
  final ApiClient _apiClient;

  AuthRepository(this._apiClient);

  /// 手机号登录
  Future<UserCert?> loginByPhone({
    required String zone,
    required String phone,
    required String password,
    required String deviceId,
    required String deviceName,
    required String deviceModel,
  }) async {
    try {
      final response = await _apiClient.post(
        ApiConfig.loginByPhone,
        data: {
          'zone': zone,
          'phone': phone,
          'password': password,
          'flag': AppConstants.deviceMobileFlag,
          'device': {
            'device_id': deviceId,
            'device_name': deviceName,
            'device_model': deviceModel,
          },
        },
      );

      return UserCert.fromJson(response.data);
    } catch (e) {
      AppLogger.e('登录失败', e);
      return null;
    }
  }

  /// 用户名登录
  Future<UserCert?> loginByUsername({
    required String username,
    required String password,
    required String deviceId,
    required String deviceName,
    required String deviceModel,
  }) async {
    try {
      final response = await _apiClient.post(
        ApiConfig.loginByUsername,
        data: {
          'username': username,
          'password': password,
          'flag': AppConstants.deviceMobileFlag,
          'device': {
            'device_id': deviceId,
            'device_name': deviceName,
            'device_model': deviceModel,
          },
        },
      );

      return response.data;
    } catch (e) {
      AppLogger.e('注册失败', e);
      rethrow;
    }
  }

  /// 手机号注册
  Future<UserCert?> registerByPhone({
    required String zone,
    required String phone,
    required String code,
    required String password,
    required String deviceId,
    required String deviceName,
    required String deviceModel,
    String? name,
    String? inviteCode,
  }) async {
    try {
      final response = await _apiClient.post(
        ApiConfig.registerByPhone,
        data: {
          "zone": zone,
          "phone": phone,
          "code": code,
          "flag": AppConstants.deviceMobileFlag,
          "password": password,
          "name": name,
          "invite_code": inviteCode,
          "device": {
            "device_id": deviceId,
            "device_name": deviceName,
            "device_model": deviceModel,
          },
        },
      );

      return UserCert.fromJson(response.data['data']);
    } catch (e) {
      AppLogger.e('手机号注册失败', e);
      return null;
    }
  }

  /// 用户名注册
  Future<UserCert?> registerByUsername({
    required String username,
    required String password,
    required String deviceId,
    required String deviceName,
    required String deviceModel,
    String? name,
    String? inviteCode,
  }) async {
    try {
      final response = await _apiClient.post(
        ApiConfig.registerByUsername,
        data: {
          "username": username,
          "password": password,
          "name": name,
          "invite_code": inviteCode,
          "flag": AppConstants.deviceMobileFlag,
          "device": {
            "device_id": deviceId,
            "device_name": deviceName,
            "device_model": deviceModel,
          },
        },
      );

      return UserCert.fromJson(response.data['data']);
    } catch (e) {
      AppLogger.e('用户名注册失败', e);
      return null;
    }
  }

  /// 获取手机号注册验证码
  Future<bool> sendRegisterVerificationCode({
    required String phone,
    required String zone,
  }) async {
    zone = zone.replaceAll('+', '00');
    try {
      final response = await _apiClient.post(
        ApiConfig.sendRegisterVerificationCode,
        data: {
          'phone': phone,
          'zone': zone,
        },
      );

      return response.data['exist'] == 0;
    } catch (e) {
      AppLogger.e('获取验证码失败', e);
      return false;
    }
  }

  /// 获取重置密码验证码
  Future<bool> sendForgetPwdVerificationCode(
      {required String zone, required String phone}) async {
    try {
      await _apiClient.post(ApiConfig.sendForgetPwdVerificationCode,
          data: {'zone': zone, 'phone': phone});
      return true;
    } catch (e) {
      AppLogger.e("发送验证码错误", e);
      return false;
    }
  }

  /// 获取用户信息
  Future<UserInfo?> getUserInfo(String uid) async {
    try {
      final response = await _apiClient.get(
        '/users/$uid',
      );
      return UserInfo.fromJson(response.data);
    } catch (e) {
      AppLogger.e('获取用户信息失败', e);
      return null;
    }
  }

  /// 更新用户信息
  Future<bool> updateUserProfile({
    String? name,
    String? shortNo,
  }) async {
    try {
      final data = <String, dynamic>{};

      if (name != null) data['name'] = name;
      if (shortNo != null) data['short_no'] = shortNo;

      final response = await _apiClient.put(
        ApiConfig.updateUserInfo,
        data: data,
      );

      return response.data['status'] == 200;
    } catch (e) {
      AppLogger.e('更新用户信息失败', e);
      return false;
    }
  }

  /// 设置安全问题
  Future<bool> setSecurityQuestion({
    required String question,
    required String answer,
  }) async {
    try {
      final response = await _apiClient.post(
        ApiConfig.setSecurityQuestion,
        data: {
          'question': question,
          'answer': answer,
        },
      );

      return response.data['status'] == 200;
    } catch (e) {
      AppLogger.e('设置安全问题失败', e);
      return false;
    }
  }

  /// 获取安全问题
  Future<String?> getSecurityQuestion() async {
    try {
      final response = await _apiClient.get(ApiConfig.getSecurityQuestion);
      return response.data['question'];
    } catch (e) {
      AppLogger.e('获取安全问题失败', e);
      return null;
    }
  }

  /// 通过验证码重置密码
  Future<bool> resetPassword(
      {required String zone,
      required String phone,
      required String code,
      required String pwd}) async {
    try {
      await _apiClient.post(ApiConfig.resetPwdByPhone, data: {
        'zone': zone,
        'phone': phone,
        'code': code,
        'pwd': pwd,
      });
      return true;
    } catch (e) {
      AppLogger.e("重置密码错误", e);
      return false;
    }
  }

  /// 通过密保重置密码
  Future<bool> resetPasswordBySecret({
    required String question,
    required String answer,
    required String password,
  }) async {
    try {
      await _apiClient.post(ApiConfig.resetPwdBySecurityQuestion, data: {
        'question': question,
        'answer': answer,
        'password': password,
      });
      return true;
    } catch (e) {
      AppLogger.e("重置密码错误", e);
      return false;
    }
  }

  /// 退出登录
  Future<bool> logout() async {
    try {
      final response = await _apiClient.post(ApiConfig.logout);
      return response.data['status'] == 200;
    } catch (e) {
      AppLogger.e('退出登录失败', e);
      return false;
    }
  }
}

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository(ApiClient.instance);
}
