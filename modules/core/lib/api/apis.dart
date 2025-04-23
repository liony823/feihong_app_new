import 'package:common/common.dart';
import 'package:dio/dio.dart';

import 'api_client.dart';
import 'api_config.dart';

class Apis {
  static String getAvatarUrl(String uid) {
    return "${ApiConfig.baseUrl}/users/$uid/avatar?v=${DateTime.now().millisecondsSinceEpoch}";
  }

  static String getGroupAvatarUrl(String gid) {
    return "${ApiConfig.baseUrl}/groups/$gid/avatar?v=${DateTime.now().millisecondsSinceEpoch}";
  }

  /// 上传文件
  static Future<String?> uploadFile(
    String path, {
    FileType fileType = FileType.common,
  }) async {
    try {
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(path),
      });
      final response = await ApiClient.instance.post(
        '/file/upload',
        data: formData,
        queryParameters: {"type": fileType.name, "path": path},
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );
      return response.data['path'];
    } catch (e) {
      AppLogger.e("用户上传文件失败", e);
      return null;
    }
  }

  /// 上传头像
  static Future<bool> uploadAvatar(String path, String uid) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(path),
    });
    try {
      await ApiClient.instance.post(
        '/users/$uid/avatar',
        data: formData,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );
      return true;
    } catch (e) {
      AppLogger.e("用户上传头像失败", e);
      return false;
    }
  }
}
