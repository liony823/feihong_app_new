import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:feihong/controller/api/api.dart';
import 'package:feihong/controller/auth/set_self_info_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:user_profile_avatar/user_profile_avatar.dart';

@RoutePage()
class SetSelfInfoPage extends HookConsumerWidget {
  final String uid;
  final String registerType;
  const SetSelfInfoPage({
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
    final AsyncValue<UserInfo> currentUser =
        ref.watch(getCurrentUserProvider(uid));
    return Scaffold(
        appBar: AppBar(title: context.t.c.profile.plsCompleteInfo.appBarText),
        body: Center(
          child: FormBuilder(
            key: controller.formKey,
            child: Column(
              spacing: 24.w,
              children: [
                48.verticalSpace,
                switch (currentUser) {
                  AsyncData(:final value) => _buildBody(context, value),
                  AsyncError(:final error) => ErrorRetryWidget(
                      message: error.toString(),
                      onRetry: () {
                        ref.invalidate(getCurrentUserProvider(uid));
                      },
                    ),
                  _ => Skeletonizer(
                      enabled: true,
                      child: _buildBody(context, FakeData.fakeUserInfo),
                    ),
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
          ),
        ));
  }

  Widget _buildBody(BuildContext context, UserInfo userInfo) {
    return Column(
      spacing: 24.w,
      children: [
        _buildAvatarView(context),
        _buildItemView(context,
            name: 'username',
            title: context.t.c.profile.username,
            initialValue: userInfo.shortNo,
            helperText: context.t.c.profile.usernameHelperText,
            placeholder: context.t.c.profile.plsEnterUsername),
        _buildItemView(context,
            name: 'nickname',
            title: context.t.c.profile.nickname,
            initialValue: userInfo.name,
            placeholder: context.t.c.profile.plsEnterNickname),
      ],
    );
  }

  Widget _buildAvatarView(BuildContext context) {
    return Column(
      children: [
        Skeleton.shade(
          child: UserProfileAvatar(
            avatarUrl: '',
            avatarBorderData: AvatarBorderData(
              borderColor: Styles.brandColor,
              borderWidth: 1.r,
            ),
          ),
        ),
        Text(
          context.t.c.profile.plsSetAvatar,
        )
            .textColor(Styles.neutral700)
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
      String? helperText,
      bool autofocus = false}) {
    return Container(
      height: 52.h,
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title).textColor(Styles.neutral700).fontSize(14.sp),
          Expanded(
            child: FormBuilderTextField(
              name: name,
              initialValue: initialValue,
              textAlign: TextAlign.right,
              autofocus: autofocus,
              textInputAction:
                  autofocus ? TextInputAction.done : TextInputAction.next,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: placeholder,
                helperText: helperText,
              ),
            ),
          )
        ],
      ),
    );
  }
}
