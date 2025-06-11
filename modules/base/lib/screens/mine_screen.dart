import 'package:auto_route/auto_route.dart';
import 'package:base/route/route.gr.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stream_ui/stream_ui.dart';

class MineScreen extends HookConsumerWidget {
  const MineScreen({super.key});

  void _onTapMenu(BuildContext context, String menu) {
    switch (menu) {
      case 'setting':
        context.router.pushPath(Routes.setting);
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uid = SpHelper.uid;
    final currentUser = ref.watch(getCurrentUserProvider(uid));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            switch (currentUser) {
              AsyncData(:final value) => _buildUserInfoView(context, value),
              AsyncError(:final error) => ErrorRetryWidget(
                  message: error.toString(),
                  onRetry: () {
                    ref.invalidate(getCurrentUserProvider(uid));
                  }),
              _ =>  const Center(
                  child: CircularProgressIndicator(),
              ),
            },
            12.verticalSpace,
            _buildCard(
                child: Column(
              children: [
                _buildItemView(
                    img: ImageRes.wallet,
                    label: context.t.c.mine.wallet,
                    onTap: () {}),
              ],
            )),
            _buildCard(
              child: Column(
                children: [
                  _buildItemView(
                      img: ImageRes.camera,
                      label: context.t.c.mine.circle,
                      onTap: () {}),
                  _buildItemView(
                      img: ImageRes.emoji,
                      label: context.t.c.mine.emoji,
                      onTap: () {}),
                  _buildItemView(
                      img: ImageRes.favorite,
                      label: context.t.c.mine.collection,
                      onTap: () {}),
                ],
              ),
            ),
            _buildCard(
              child: Column(
                children: [
                  _buildItemView(
                      img: ImageRes.issue,
                      label: context.t.c.mine.question,
                      onTap: () {}),
                  _buildItemView(
                      img: ImageRes.more,
                      label: context.t.c.mine.setting,
                      onTap: () {
                        _onTapMenu(context, 'setting');
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemView({
    required String img,
    required String label,
    VoidCallback? onTap,
    int unReadCount = 0,
  }) {
    return CupertinoButton(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.w),
      onPressed: onTap,
      child: Material(
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            img.toImage
              ..width = 28.w
              ..height = 28.w,
            14.horizontalSpace,
            Text(label)
                .textColor(AppTheme.lightTextColor)
                .fontSize(16.sp)
                .fontWeight(FontWeight.w500),
            const Spacer(),
            if (unReadCount > 0) StreamUnreadIndicator(unreadCount: unReadCount),
            10.horizontalSpace,
            Icon(
              Icons.chevron_right_rounded,
              size: 22.w,
              color: AppTheme.lightSecondaryTextColor,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildUserInfoView(BuildContext context, UserInfo? userInfo) {
    return GestureDetector(
      onTap: () {
        context.router.pushPath(Routes.profile);
      },
      child: Container(
        padding: EdgeInsets.only(
          left: 12.w,
          right: 16.w,
          top: 24.h + MediaQuery.of(context).padding.top,
          bottom: 24.h,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: UserAvatar(
                user: User(
                    uid: userInfo?.uid ?? '',
                    name: userInfo?.name ?? '',
                    image: Apis.getAvatarUrl(userInfo!.uid)),
                    borderRadius: BorderRadius.circular(8.r),
                constraints: BoxConstraints.tightFor(width: 60.w, height: 60.w),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(userInfo.name,
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          overflow: TextOverflow.ellipsis,
                          color: AppTheme.lightTextColor)),
                  Text(context.t.c.mine.username(username: userInfo.username),
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          overflow: TextOverflow.ellipsis,
                          color: AppTheme.lightSecondaryTextColor)),
                ],
              ),
            ),
            Column(
              spacing: 4.w,
              children: [
                GestureDetector(
                  onTap: () {
                    context.router.push(PersonalQrcodeRoute(uid: userInfo.uid));
                  },
                  child: ImageRes.icoQR.toSvg
                    ..width = 18.w
                    ..height = 18.w
                    ..color = AppTheme.lightSecondaryTextColor,
                ),
                Icon(Icons.chevron_right_rounded,
                    color: AppTheme.lightSecondaryTextColor),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCard({required Widget child}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: child,
    );
  }
}
