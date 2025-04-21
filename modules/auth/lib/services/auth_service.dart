import 'package:common/common.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../models/db/db_account.dart';
import '../models/user_cert.dart';
import '../repositories/account_repository.dart';
import '../repositories/auth_repository.dart';

part 'auth_service.g.dart';

/// 认证服务类，处理登录、注册和验证等功能
class AuthService {
  final AuthRepository _authRepository;
  final AccountRepository _accountRepository;

  AuthService(this._authRepository, this._accountRepository);

  /// 手机号登录
  Future<UserCert?> loginByPhone({
    required String zone,
    required String phone,
    required String password,
    required String deviceId,
    required String deviceName,
    required String deviceModel,
  }) async {
    final userCert = await _authRepository.loginByPhone(
      zone: zone,
      phone: phone,
      password: password,
      deviceId: deviceId,
      deviceName: deviceName,
      deviceModel: deviceModel,
    );
    if (userCert != null) {
      _loginWithPhoneSuccess(userCert, phone, zone, password);
    }
    return userCert;
  }

  /// 用户名登录
  Future<UserCert?> loginByUsername({
    required String username,
    required String password,
    required String deviceId,
    required String deviceName,
    required String deviceModel,
  }) async {
    final userCert = await _authRepository.loginByUsername(
      username: username,
      password: password,
      deviceId: deviceId,
      deviceName: deviceName,
      deviceModel: deviceModel,
    );
    if (userCert != null) {
      _loginWithUsernameSuccess(userCert, username, password);
    }
    return userCert;
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
    final userCert = await _authRepository.registerByPhone(
      zone: zone,
      phone: phone,
      code: code,
      password: password,
      deviceId: deviceId,
      deviceName: deviceName,
      deviceModel: deviceModel,
      name: name,
      inviteCode: inviteCode,
    );
    if (userCert != null) {
      _loginWithPhoneSuccess(userCert, phone, zone, password);
    }
    return userCert;
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
    final userCert = await _authRepository.registerByUsername(
      username: username,
      password: password,
      deviceId: deviceId,
      deviceName: deviceName,
      deviceModel: deviceModel,
      name: name,
      inviteCode: inviteCode,
    );
    if (userCert != null) {
      _loginWithUsernameSuccess(userCert, username, password);
    }
    return userCert;
  }

  /// 获取手机号注册验证码
  Future<bool> sendRegisterVerificationCode({
    required String phone,
    required String zone,
  }) async {
    return await _authRepository.sendRegisterVerificationCode(
      phone: phone,
      zone: zone,
    );
  }

  /// 获取重置密码验证码
  Future<bool> sendForgetPwdVerificationCode({
    required String zone,
    required String phone,
  }) async {
    return await _authRepository.sendForgetPwdVerificationCode(
      zone: zone,
      phone: phone,
    );
  }

  /// I更新用户信息
  Future<bool> updateUserProfile({
    String? name,
    String? shortNo,
  }) async {
    return await _authRepository.updateUserProfile(
      name: name,
      shortNo: shortNo,
    );
  }

  /// 设置安全问题
  Future<bool> setSecurityQuestion({
    required String question,
    required String answer,
  }) async {
    return await _authRepository.setSecurityQuestion(
      question: question,
      answer: answer,
    );
  }

  /// 获取安全问题
  Future<String?> getSecurityQuestion() async {
    return await _authRepository.getSecurityQuestion();
  }

  /// 通过验证码重置密码
  Future<bool> resetPassword({
    required String zone,
    required String phone,
    required String code,
    required String pwd,
  }) async {
    return await _authRepository.resetPassword(
      zone: zone,
      phone: phone,
      code: code,
      pwd: pwd,
    );
  }

  /// 通过密保重置密码
  Future<bool> resetPasswordBySecret({
    required String question,
    required String answer,
    required String password,
  }) async {
    return await _authRepository.resetPasswordBySecret(
      question: question,
      answer: answer,
      password: password,
    );
  }

  /// 退出登录
  Future<bool> logout() async {
    try {
      await _authRepository.logout();
      SpHelper.setToken("");
      SpHelper.setUID("");
      return true;
    } catch (e) {
      AppLogger.e("退出登录失败", e);
      return false;
    }
  }

  Future _loginWithPhoneSuccess(
      UserCert userCert, String phone, String zone, String password) async {
    SpHelper.setToken(userCert.token);
    SpHelper.setUID(userCert.uid);
    final account = await _accountRepository.getAccountByPhone(phone, zone);
    if (account == null) {
      await _accountRepository.saveAccount(DBAccount(
        username: "",
        zone: zone,
        phone: phone,
        password: password,
        loginType: 1,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: Uuid().v4(),
        uid: userCert.uid,
      ));
    } else {
      await _accountRepository.updateAccount(DBAccount(
        id: account.id,
        loginType: 1,
        username: "",
        zone: zone,
        phone: phone,
        password: password,
        updatedAt: DateTime.now().millisecondsSinceEpoch,
        uid: userCert.uid,
      ));
    }
  }

  Future _loginWithUsernameSuccess(
      UserCert userCert, String username, String password) async {
    SpHelper.setToken(userCert.token);
    SpHelper.setUID(userCert.uid);
    final account = await _accountRepository.getAccountByUsername(username);
    if (account == null) {
      await _accountRepository.saveAccount(DBAccount(
        username: username,
        zone: "",
        phone: "",
        password: password,
        loginType: 2,
        uid: userCert.uid,
        id: Uuid().v4(),
        createdAt: DateTime.now().millisecondsSinceEpoch,
      ));
    } else {
      await _accountRepository.updateAccount(DBAccount(
        uid: userCert.uid,
        id: account.id,
        loginType: 2,
        username: username,
        zone: "",
        phone: "",
        password: password,
        updatedAt: DateTime.now().millisecondsSinceEpoch,
      ));
    }
  }
}

/// AuthService提供者
@riverpod
AuthService authService(Ref ref) {
  return AuthService(
    ref.read(authRepositoryProvider),
    ref.read(accountRepositoryProvider),
  );
}
