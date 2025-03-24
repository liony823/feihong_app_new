import 'package:auto_route/auto_route.dart';
import 'package:feihong/common.dart';
import 'package:feihong/i18n/localized.g.dart';
import 'package:feihong/pages/controller/auth/signin_provier.dart';
import 'package:feihong/pages/controller/lang/lang_provider.dart';
import 'package:feihong/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:world_countries/world_countries.dart';

@RoutePage()
class SigninPage extends HookConsumerWidget {
  const SigninPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TouchCloseSoftKeyboard(
        isGradientBg: true,
        child: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            spacing: 24.w,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: _buildSwapLangButton(context, ref),
              ),
              ImageRes.logo.toImage
                ..width = 64.w
                ..height = 64.h,
              Text(context.t.welcome)
                  .fontSize(18.sp)
                  .textColor(Styles.brandColor)
                  .fontWeight(FontWeight.w600),
            ],
          )),
        ));
  }

  Widget _buildSwapLangButton(BuildContext context, WidgetRef ref) {
    final controller = ref.read(signinControllerProvider.notifier);
    return TextButton(
      onPressed: controller.toLangPage,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(context.maybeLocale?.language.namesNative.firstOrNull
                      ?.replaceFirst(RegExp(r'\([^)]*\)'), '') ??
                  '')
              .textColor(Styles.brandColor),
          Icon(
            Icons.swap_vert_outlined,
            color: Styles.brandColor,
          ),
        ],
      ),
    ).padding(all: 12.w);
  }
}
