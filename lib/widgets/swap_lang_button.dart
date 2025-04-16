import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:feihong/route/router.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:world_countries/world_countries.dart';

class SwapLangButton extends HookConsumerWidget {
  const SwapLangButton({super.key});

  void _onPressed() {
    Global.context!.router.push(const LangRoute());
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
