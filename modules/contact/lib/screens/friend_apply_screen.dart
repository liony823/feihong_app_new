import 'package:acter_avatar/acter_avatar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:contact/helper/fake.dart';
import 'package:contact/models/friend_apply.dart';
import 'package:contact/providers/friend_apply_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class FriendApplyScreen extends HookConsumerWidget {
  const FriendApplyScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(friendApplyControllerProvider.notifier);
    final AsyncValue<FriendApplyState> state =
        ref.watch(friendApplyControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: context.t.contact.friendApply.title.appBarText,
      ),
      body: switch (state) {
        AsyncData(:final value) => Refresh(
            onRefresh: controller.onRefresh,
            onLoadMore: controller.onLoadMore,
            pageSize: 50,
            childBuilder: (context, physics) => ListView(
              physics: physics,
              children: [
                if (value.recentApplyList.isNotEmpty) ...[
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    child: Text(
                      context.t.contact.friendApply.recentApply,
                    )
                        .fontSize(12.sp)
                        .textColor(AppTheme.lightSecondaryTextColor2),
                  ),
                  ...value.recentApplyList.map((e) => _buildItemView(
                        context,
                        apply: e,
                        onAccept: () => controller.onAccept(e),
                        onRefuse: () => controller.onRefuse(e),
                      )),
                ],
                if (value.oldApplyList.isNotEmpty) ...[
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    child: Text(
                      context.t.contact.friendApply.oldApply,
                    )
                        .fontSize(12.sp)
                        .textColor(AppTheme.lightSecondaryTextColor2),
                  ),
                  ...value.oldApplyList.map(
                    (e) => _buildItemView(
                      context,
                      apply: e,
                      onAccept: () => controller.onAccept(e),
                      onRefuse: () => controller.onRefuse(e),
                    ),
                  ),
                ],
              ],
            ),
          ),
        AsyncError(:final error) => ErrorRetryWidget(
            message: error.toString(),
            onRetry: () => ref.invalidate(friendApplyControllerProvider),
          ),
        _ => Skeletonizer(
            child: ListView.builder(
              itemCount: FakeHelper.fakeFriendApplyCount,
              itemBuilder: (context, index) {
                final apply = FakeHelper.fakeFriendApplyList[index];
                return _buildItemView(context, apply: apply);
              },
            ),
          ),
      },
    );
  }

  Widget _buildItemView(
    BuildContext context, {
    required FriendApply apply,
    bool showDivider = true,
    VoidCallback? onAccept,
    VoidCallback? onRefuse,
  }) {
    final avatarOptions = AvatarOptions(
      AvatarInfo(
        uniqueId: apply.uid,
        displayName: apply.toName,
        avatar: NetworkImage(apply
            .showToAvatar), // can be any image provider .i.e. AssetImage, MemoryImage and NetworkImage etc.
      ),
      size: 36.w,
    );
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      color: AppTheme.primaryLightColor,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.w),
                child: ActerAvatar(
                  options: avatarOptions,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      apply.toName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).fontSize(15.sp),
                    Text(
                      apply.remark,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).fontSize(12.sp),
                  ],
                ),
              ),
              _buildApplyStatusView(
                context,
                apply,
                onAccept: () {},
                onRefuse: () {},
              ),
            ],
          ),
          if (showDivider)
            Divider(
              endIndent: 12.w,
              indent: 64.w,
            ),
        ],
      ),
    );
  }

  Widget _buildApplyStatusView(
    BuildContext context,
    FriendApply apply, {
    VoidCallback? onAccept,
    VoidCallback? onRefuse,
  }) {
    switch (apply.status) {
      case FriendApplyStatus.apply:
        if (apply.uid == SpHelper.uid) {
          return Text(context.t.contact.friendApply.apply);
        } else {
          return Row(
            children: [
              OutlinedButton(
                onPressed: onAccept,
                style: OutlinedButton.styleFrom(
                  backgroundColor: AppTheme.brandColor.withValues(alpha: 0.05),
                  foregroundColor: AppTheme.brandColor,
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                ),
                child: Text(context.t.contact.friendApply.accept),
              ),
              OutlinedButton(
                onPressed: onRefuse,
                style: OutlinedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                ),
                child: Text(context.t.contact.friendApply.refuse),
              ),
            ],
          );
        }
      case FriendApplyStatus.accepted:
        if (apply.uid == SpHelper.uid) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                EvaIcons.diagonal_arrow_right_up_outline,
                size: 12.w,
              ),
              Text(context.t.contact.friendApply.accepted)
                  .fontSize(15.sp)
                  .fontWeight(FontWeight.w500),
            ],
          );
        } else {
          return Text(context.t.contact.friendApply.accepted)
              .fontSize(15.sp)
              .fontWeight(FontWeight.w500);
        }
      case FriendApplyStatus.refused:
        return Text(context.t.contact.friendApply.refused)
            .fontSize(15.sp)
            .fontWeight(FontWeight.w500)
            .textColor(AppTheme.errorColor);
    }
  }
}
