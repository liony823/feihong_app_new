import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class AccountScreen extends HookConsumerWidget {
  const AccountScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: ImageRes.logo.toImage..width = 48.w,
        toolbarHeight: kToolbarHeight + 12.h,
        leading: Row(
          children: [
            CupertinoButton(
              onPressed: () {
                context.router.pop();
              },
              child: Text(context.t.c.close,
                  style: TextStyle(
                    color: AppTheme.lightTextColor,
                    fontSize: 16.sp,
                  )),
            ),
          ],
        ),
        leadingWidth: 108.w,
        actions: [
          CupertinoButton(
            onPressed: () {
              context.router.pop();
            },
            child: Text(context.t.c.manager,
                style: TextStyle(
                  color: AppTheme.lightTextColor,
                  fontSize: 16.sp,
                )),
          ),
        ],
      ),
      body: Column(
        spacing: 24.w,
        children: [
          32.verticalSpace,
          Text(context.t.c.account.title)
              .fontSize(20.sp)
              .fontWeight(FontWeight.w500),
          Divider(
            indent: 64.w,
            endIndent: 64.w,
            color: AppTheme.dividerColor2,
          ),
          12.verticalSpace,
        ],
      ),
    );
  }
}
