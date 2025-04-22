import 'package:auth/models/db/db_account.dart';
import 'package:auth/providers/account_provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

@RoutePage()
class AccountScreen extends HookConsumerWidget {
  const AccountScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(accountControllerProvider);
    final controller = ref.watch(accountControllerProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: ImageRes.logo.toImage..width = 48.w,
        toolbarHeight: kToolbarHeight + 12.h,
        leading: Row(
          children: [
            Visibility(
              visible: !(state.value?.isManager ?? false),
              child: CupertinoButton(
                onPressed: () {
                  context.router.pop();
                },
                child: Text(context.t.c.close,
                    style: TextStyle(
                      color: AppTheme.lightTextColor,
                      fontSize: 16.sp,
                    )),
              ),
            ),
            Visibility(
              visible: state.value?.isManager ?? false,
              child: CupertinoButton(
                onPressed: controller.onSwitchManager,
                child: Text(context.t.c.cancel,
                    style: TextStyle(
                      color: AppTheme.lightTextColor,
                      fontSize: 16.sp,
                    )),
              ),
            ),
          ],
        ),
        leadingWidth: 108.w,
        actions: [
          Visibility(
            visible: !(state.value?.isManager ?? false),
            child: CupertinoButton(
              onPressed: controller.onSwitchManager,
              child: Text(context.t.c.manager,
                  style: TextStyle(
                    color: AppTheme.lightTextColor,
                    fontSize: 16.sp,
                  )),
            ),
          ),
        ],
      ),
      body: switch (state) {
        AsyncData(:final value) => Column(
            spacing: 24.w,
            children: [
              32.verticalSpace,
              Visibility(
                visible: !value.isManager,
                child: Text(context.t.c.account.title)
                    .fontSize(20.sp)
                    .fontWeight(FontWeight.w500),
              ),
              Visibility(
                visible: value.isManager,
                child: Text(context.t.c.account.clearAccountTitle)
                    .fontSize(20.sp)
                    .fontWeight(FontWeight.w500),
              ),
              if (value.isManager) Text(context.t.c.account.clearAccountHint)
                  .fontSize(14.sp)
                  .textColor(AppTheme.lightSecondaryTextColor),
              Divider(
                indent: 64.w,
                endIndent: 64.w,
                color: AppTheme.dividerColor2,
              ),
              Expanded(
                child: ListView(
                  children: [
                    ...value.accounts.map((e) {
                      final isCurrent = e.uid == value.currentAccountUid;
                      return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.w, vertical: 6.w),
                          child: _buildAccountItemView(context, e,
                          isCurrent:isCurrent,
                          isManager: value.isManager,
                          onDelete: () => controller.onDeleteAccount(e),
                              onPressed: () => controller.onSwitchAccount(e)),
                        );
                    }),
                    Visibility(
                      visible: !value.isManager,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 24.w, vertical: 6.w),
                        child:
                            _buildAddAccountView(context, controller.addAccount),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        AsyncError(:final error) => ErrorRetryWidget(
            message: error.toString(),
            onRetry: () {
              ref.invalidate(accountControllerProvider);
            },
          ),
        _ => const Center(
            child: CircularProgressIndicator(),
          ),
      },
    );
  }

  Widget _buildAddAccountView(BuildContext context, VoidCallback onPressed) {
    return _buildCardView(context,
        child: Row(
          spacing: 12.w,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              HeroIcons.plus_small,
              color: AppTheme.lightSecondaryTextColor2,
              size: 48.w,
              weight: 1,
            ),
            Text(context.t.c.account.addAccount)
                .fontSize(16.sp)
                .textColor(AppTheme.lightSecondaryTextColor2)
                .fontWeight(FontWeight.w500),
          ],
        ),
        onPressed: onPressed);
  }

  Widget _buildAccountItemView(BuildContext context, DBAccount account,
      {required VoidCallback onPressed, required VoidCallback onDelete, bool isManager = false,bool isCurrent = false}) {
    return _buildCardView(context,
        isManager: isManager,
        isCurrent: isCurrent,
        child: Row(
          spacing: 12.w,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Avatar(
              uid: account.uid,
              name: account.name,
              url: Apis.getAvatarUrl(account.uid),
              size: 48.w,
            ),
            Expanded(
              child: Column(
                spacing: 3.w,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(account.name)
                          .fontSize(16.sp)
                          .fontWeight(FontWeight.w500),
                      if (isCurrent) Text(context.t.c.account.currentUse)
                          .textColor(AppTheme.brandDarkColor)
                          .fontSize(14.sp),
                      if (isManager && !isCurrent)
                        Icon(
                          HeroIcons.trash,
                          color: AppTheme.dangerColor,
                          size: 20.w,
                        ).onTap(onDelete),
                    ],
                  ),
                  Text(account.username)
                      .textColor(AppTheme.lightSecondaryTextColor)
                      .fontSize(12.sp),
                ],
              ),
            )
          ],
        ),
        onPressed: onPressed);
  }

  Widget _buildCardView(BuildContext context,
      {required Widget child, required VoidCallback onPressed, bool isManager = false,bool isCurrent = false}) {
    return Opacity(
      opacity: (isManager && isCurrent) ? 0.5 : 1,
      child: CupertinoButton(
        onPressed: isManager ? null : onPressed,
        padding: EdgeInsets.zero,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.w),
            decoration: BoxDecoration(
              color: AppTheme.primaryLightColor,
              borderRadius: BorderRadius.circular(8.r),
              boxShadow: [
                BoxShadow(
                  color: AppTheme.shadowColor,
                  blurRadius: 6.r,
                  offset: Offset(0, 2.r),
                ),
              ],
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
