import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:world_countries/world_countries.dart';

class SwapLangButton extends HookConsumerWidget {
  const SwapLangButton({super.key});

  void _onPressed() {
    Global.context!.router.pushPath(Routes.language);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: _onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(context.maybeLocale?.language.namesNative.firstOrNull
                      ?.replaceFirst(RegExp(r'\([^)]*\)'), '') ??
                  '')
              .textColor(AppTheme.lightSecondaryTextColor)
              .fontWeight(FontWeight.w500)
              .fontSize(12.sp),
          Icon(
            Icons.swap_vert_outlined,
            color: AppTheme.lightSecondaryTextColor,
            size: 12.sp,
          ),
        ],
      ),
    ).padding(all: 12.w);
  }
}
