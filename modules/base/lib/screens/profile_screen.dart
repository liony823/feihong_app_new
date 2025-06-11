import 'package:auto_route/auto_route.dart';
import 'package:base/route/route.gr.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stream_ui/stream_ui.dart';

@RoutePage()
class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  void _onTapMenu(BuildContext context, String type, UserInfo currentUser) {
    switch (type) {
      case 'avatar':
        context.router.push(SetAvatarRoute(
          avatar: Apis.getAvatarUrl(currentUser.uid),
        ));
        break;
      case 'nickname':
        context.router.push(SetNicknameRoute(
          nickname: currentUser.name,
        ));
        break;
      case 'sex':
        context.router.push(SetGenderRoute(
          gender: currentUser.sex,
        ));
        break;
      case 'qrCode':
        context.router.push(PersonalQrcodeRoute(
          uid: currentUser.uid,
        ));
        break;
      case 'introduction':
        context.router.push(SetIntroRoute(
          intro: currentUser.introduction,
        ));
        break;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uid = SpHelper.uid;
    final currentUser = ref.watch(getCurrentUserProvider(uid));

    return Scaffold(
      backgroundColor: AppTheme.primaryLightColor,
      appBar: AppBar(
        backgroundColor: AppTheme.primaryLightColor,
        title: context.t.c.profile.title.appBarText,
      ),
      body: switch (currentUser) {
        AsyncData(:final value) => SingleChildScrollView(
            child: Column(
              children: [
                8.verticalSpace,
                _buildItemView(
                  context,
                  title: context.t.c.profile.avatar,
                  child: UserAvatar(
                    user: User(
                        uid: value?.uid ?? '',
                        name: value?.name ?? '',
                        image: Apis.getAvatarUrl(value!.uid)),
                    constraints: BoxConstraints.tightFor(
                      width: 40.w,
                      height: 40.w
                    ),
                  ),
                  onTap: () => _onTapMenu(context, 'avatar', value),
                ),
                _buildItemView(
                  context,
                  title: context.t.c.profile.username,
                  child: Text(value.username ?? '')
                      .textColor(
                        AppTheme.lightSecondaryTextColor,
                      )
                      .fontSize(15.sp),
                ),
                _buildItemView(
                  context,
                  title: context.t.c.profile.nickname,
                  child: Text(value.name ?? '')
                      .textColor(
                        AppTheme.lightSecondaryTextColor,
                      )
                      .fontSize(15.sp),
                  onTap: () => _onTapMenu(context, 'nickname', value),
                ),
                _buildItemView(
                  context,
                  title: context.t.c.profile.sex,
                  child: Text(context.t.c.gender[value.sex ?? 1])
                      .textColor(
                        AppTheme.lightSecondaryTextColor,
                      )
                      .fontSize(15.sp),
                  onTap: () => _onTapMenu(context, 'sex', value),
                ),
                _buildItemView(
                  context,
                  title: context.t.c.profile.qrCode,
                  child: ImageRes.icoQR.toSvg
                    ..width = 20.w
                    ..height = 20.w
                    ..color = AppTheme.lightSecondaryTextColor,
                  onTap: () => _onTapMenu(context, 'qrCode', value),
                ),
                _buildItemView(context,
                    title: context.t.c.profile.introduction,
                    child: Utils.isEmptyOrNull(value.introduction)
                        ? Text(context.t.c.profile.introductionDefault)
                            .textColor(
                              AppTheme.lightSecondaryTextColor,
                            )
                            .fontSize(15.sp)
                        : Text(value.introduction ?? '')
                            .textColor(
                              AppTheme.lightSecondaryTextColor,
                            )
                            .fontSize(15.sp),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    showDivider: false,
                    onTap: () => _onTapMenu(context, 'introduction', value)),
              ],
            ),
          ),
        AsyncError(:final error) => ErrorRetryWidget(
            message: error.toString(),
            onRetry: () {
              ref.invalidate(getCurrentUserProvider(uid));
            },
          ),
        _ => const Center(
            child: CircularProgressIndicator(),
          ),
      },
    );
  }

  Widget _buildItemView(
    BuildContext context, {
    required String title,
    required Widget child,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    bool showDivider = true,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18.h),
              child: Row(
                crossAxisAlignment: crossAxisAlignment,
                children: [
                  Text(title).fontSize(16.sp).fontWeight(FontWeight.w500),
                  const Spacer(),
                  child,
                  Padding(
                    padding: EdgeInsets.only(left: 6.w),
                    child: onTap != null
                        ? Icon(Icons.chevron_right,
                            color: AppTheme.lightSecondaryTextColor2)
                        : SizedBox(
                            width: 12.w,
                          ),
                  ),
                ],
              ),
            ),
            if (showDivider)
              Divider(
                indent: 0,
                endIndent: 0,
              )
          ],
        ),
      ),
    );
  }
}
