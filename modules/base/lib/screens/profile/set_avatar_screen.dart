import 'package:auto_route/auto_route.dart';
import 'package:base/providers/profile/set_avatar_provider.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SetAvatarScreen extends HookConsumerWidget {
  final String avatar;
  const SetAvatarScreen({super.key, required this.avatar});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller =
        ref.read(setProfileControllerProvider(avatar: avatar).notifier);
    final state = ref.watch(setProfileControllerProvider(avatar: avatar));
    return Scaffold(
        backgroundColor: AppTheme.darkBackgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppTheme.darkBackgroundColor,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
          ),
          leading: IconButton(
            onPressed: () {
              context.router.pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
              size: 22.w,
            ),
          ),
          centerTitle: true,
          title: Text(context.t.c.profile.avatar)
              .textColor(Colors.white)
              .fontSize(18.sp)
              .fontWeight(FontWeight.w500),
          actions: [
            IconButton(
              onPressed: controller.openPhotoSheet,
              icon: Icon(
                Icons.more_horiz_outlined,
                color: Colors.white,
                size: 28.w,
              ),
            ),
            8.horizontalSpace
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.top + 48.w),
          child: Center(
            child: ImageUtil.networkImage(
              url: state.avatar,
            ),
          ),
        ));
  }
}
