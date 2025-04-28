import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';

class HomeState {
  final List<AppModule> modules;
  HomeState({required this.modules});

  bool get enabledApplet => modules.any((element) =>
      element.sid == AppModuleType.applet.name && element.status > 0);
}

@Riverpod(keepAlive: true)
class HomeController extends _$HomeController {
  final tabController = PersistentTabController();

  @override
  FutureOr<HomeState> build() async {
    final modules = await ref.watch(getAppModulesProvider.future);
    return HomeState(modules: modules);
  }
}
