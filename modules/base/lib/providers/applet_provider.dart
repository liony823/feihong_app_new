import 'package:base/models/applet.dart';
import 'package:base/service/applet_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'applet_provider.g.dart';

class AppletState {
  final List<Applet> applets;
  AppletState({
    required this.applets,
  });

  AppletState copyWith({List<Applet>? applets}) {
    return AppletState(applets: applets ?? this.applets);
  }

  Applet? get defaultApplet =>
      applets.where((element) => element.isDefault == 1).firstOrNull;
}

@riverpod
class AppletController extends _$AppletController {
  @override
  FutureOr<AppletState> build() async {
    final appletService = ref.watch(appletServiceProvider);
    final applets = await appletService.getAppletList();
    return AppletState(applets: applets);
  }
}
