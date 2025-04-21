import 'package:auth/providers/set_self_info_provider.dart';
import 'package:auth/resource/fake.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:acter_avatar/acter_avatar.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class SetSelfInfoScreen extends HookConsumerWidget {
  final String uid;
  final String registerType;
  const SetSelfInfoScreen({
    super.key,
    required this.uid,
    required this.registerType,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(setSelfInfoProvider(
      uid: uid,
      registerType: registerType,
    ).notifier);
    final AsyncValue<UserInfo?> currentUser =
        ref.watch(getCurrentUserProvider(uid));
    return Scaffold(
        appBar: AppBar(title: context.t.c.profile.plsCompleteInfo.appBarText),
        body: Center(
          child: Column(
            spacing: 24.w,
            children: [
              48.verticalSpace,
              switch (currentUser) {
                AsyncData(:final value) => (() {
                    // 先更新表单值，再构建UI
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      controller.formKey.currentState?.patchValue({
                        'username': value?.username,
                        'nickname': value?.name,
                      });
                    });
                    return _buildBody(context, controller.formKey, value,
                        onAvatarTap: controller.openPhotoSheet);
                  })(),
                AsyncError(:final error) => ErrorRetryWidget(
                    message: error.toString(),
                    onRetry: () {
                      ref.invalidate(getCurrentUserProvider(uid));
                    },
                  ),
                AsyncLoading() => Skeletonizer(
                    enabled: true,
                    child: _buildBody(
                        context, controller.formKey, FakeData.fakeUserInfo),
                  ),
                _ => const SizedBox.shrink(),
              },
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: FilledButton(
                  onPressed: controller.submit,
                  child: Text(context.t.c.profile.submit),
                ),
              )
            ],
          ),
        ));
  }

  Widget _buildBody(BuildContext context, GlobalKey formKey, UserInfo? userInfo,
      {VoidCallback? onAvatarTap}) {
    return FormBuilder(
      key: formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            _buildAvatarView(context,
                onAvatarTap: onAvatarTap, userInfo: userInfo),
            24.verticalSpace,
            Divider(
              color: AppTheme.dividerColor,
              indent: 0,
              endIndent: 0,
            ),
            _buildItemView(context,
                name: 'username',
                isDisabled: true,
                title: context.t.c.profile.username,
                initialValue: userInfo?.username,
                placeholder: context.t.c.profile.plsEnterUsername),
            _buildItemView(context,
                name: 'nickname',
                title: context.t.c.profile.nickname,
                initialValue: userInfo?.name,
                placeholder: context.t.c.profile.plsEnterNickname),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatarView(BuildContext context,
      {UserInfo? userInfo, VoidCallback? onAvatarTap}) {
    final avatarOptions = AvatarOptions(
        AvatarInfo(
          uniqueId: userInfo?.uid ?? 'u_10000',
          onAvatarTap: onAvatarTap,
          avatar: NetworkImage(Apis.getAvatarUrl(userInfo?.uid ?? 'avatar')),
          displayName: userInfo?.name ??
              'u_10000', // can be any image provider .i.e. AssetImage, MemoryImage and NetworkImage etc.
        ),
        size: 24.w);

    return Column(
      children: [
        Skeleton.shade(
          child: ActerAvatar(
            options: avatarOptions,
          ),
        ),
        Text(
          context.t.c.profile.plsSetAvatar,
        )
            .textColor(AppTheme.lightSecondaryTextColor)
            .fontSize(14.sp)
            .textAlignment(TextAlign.center)
      ],
    );
  }

  Widget _buildItemView(BuildContext context,
      {required String name,
      required String title,
      String? initialValue,
      String? placeholder,
      bool isDisabled = false,
      bool autofocus = false}) {
    return Opacity(
      opacity: isDisabled ? 0.75 : 1,
      child: Container(
        height: 46.h,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppTheme.dividerColor,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: 108.w,
                child: Text(title).fontSize(16.sp).fontWeight(FontWeight.w500)),
            Expanded(
              child: FormBuilderTextField(
                name: name,
                enabled: !isDisabled,
                initialValue: initialValue,
                textAlign: TextAlign.left,
                autofocus: autofocus,
                textInputAction:
                    autofocus ? TextInputAction.done : TextInputAction.next,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: placeholder,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
