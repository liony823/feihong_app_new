import 'package:common/common.dart';
import 'package:feihong/controller/auth/signin_provier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:world_countries/world_countries.dart';

class SwapLangButton extends HookConsumerWidget {
  const SwapLangButton({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(signinControllerProvider.notifier);
    return TextButton(
      onPressed: controller.toLangPage,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(context.maybeLocale?.language.namesNative.firstOrNull
                      ?.replaceFirst(RegExp(r'\([^)]*\)'), '') ??
                  '')
              .textColor(Styles.neutral700)
              .fontWeight(FontWeight.w500)
              .fontSize(14.sp),
          Icon(
            Icons.swap_vert_outlined,
            color: Styles.neutral700,
            size: 14.sp,
          ),
        ],
      ),
    ).padding(all: 12.w);
  }
}
