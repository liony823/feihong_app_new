import 'package:auto_route/auto_route.dart';
import 'package:chat/providers/conversation_provider.dart';
import 'package:common/common.dart';
import 'package:contact/contact.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(getCountriesProvider);
    final AsyncValue<AppConfig?> appConfig = ref.watch(getAppConfigProvider);

    if (appConfig.hasValue) {
      final config = appConfig.value;
      if (config != null) {
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
            final conversationService =
                ref.read(conversationControllerProvider.notifier);
            await imService.initialize(uid: uid, token: token);
            await Future.wait([
              contactService.initialize(),
              conversationService.initialize(),
            ]);
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
