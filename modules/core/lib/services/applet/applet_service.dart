import 'package:core/core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'applet_service.g.dart';

class AppletService {
  final ApiClient _apiClient;
  AppletService(this._apiClient);

  Future<List<Applet>> getAppletList() async {
    final response = await _apiClient.get(ApiConfig.getAppletList);
    return (response.data as List).map((e) => Applet.fromJson(e)).toList();
  }
}

@riverpod
AppletService appletService(Ref ref) => AppletService(ApiClient.instance);
