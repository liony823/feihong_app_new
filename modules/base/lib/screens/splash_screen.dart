import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:contact/contact.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(getCountriesProvider);
    final AsyncValue<AppConfig?> appConfig = ref.watch(getAppConfigProvider);

    // 根据appConfig状态执行不同操作
    if (appConfig.hasValue) {
      // 当appConfig加载完成时执行相关操作
      final config = appConfig.value;
      if (config != null) {
        // 这里可以根据config数据执行操作，但不影响UI渲染
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          final uid = SpHelper.uid;
          final token = SpHelper.token;
          if (uid.isNullOrEmpty || token.isNullOrEmpty) {
            if (appConfig.value?.loginType == 4) {
              context.router.replacePath(Routes.loginWithAuto);
            } else {
              context.router.replacePath(Routes.login);
            }
          } else {
            final imService = ref.read(iMServiceProvider.notifier);
            final contactService = ref.read(contactControllerProvider.notifier);
            await imService.initialize(uid: uid, token: token);
            await contactService.initialize();
            if (context.mounted) {
              context.router.replacePath(Routes.home);
            }
          }
        });
      }
    } else if (appConfig.hasError) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        AppLogger.e('加载配置失败: ${appConfig.error}');
      });
    }

    // 无论appConfig状态如何，都渲染相同的UI
    return Container(
      color: AppTheme.primaryLightColor,
      child: Center(
        child: ImageRes.logo.toImage
          ..width = 48.w
          ..height = 48.w,
      ),
    );
  }
}
