import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:contact/providers/add_friend_provider.dart';
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class FriendHomeScreen extends HookConsumerWidget {
  final SearchUserInfo userInfo;
  const FriendHomeScreen({super.key,required this.userInfo});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addFriendProvider = ref.watch(addFriendProviderProvider(userInfo: userInfo));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primaryLightColor,
        title: context.t.contact.friendHome.title.appBarText,
      ),
      body: Column(
        children: [
          Container(
            color: AppTheme.primaryLightColor,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 24.w),
              child: Row(
                spacing: 18.w,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserAvatar(url: Apis.getAvatarUrl(userInfo.uid),constraints: BoxConstraints.tightFor(
                    width: 64.w,
                    height: 64.w
                  ),),
                  Row(
                    spacing: 2.w,
                    children: [
                      Text(
                        userInfo.name,
                        style: TextStyle(
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GenderIcon(gender: userInfo.sex)
                    ],
                  )
                ],
              ),
            ),
          ),
          Divider(
            indent: 0,
            endIndent: 0,
          ),
          Container(
            color: AppTheme.primaryLightColor,
            padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(context.t.contact.friendHome.introduction).fontSize(16.sp).fontWeight(FontWeight.w500),
                Text(userInfo.introduction).fontSize(16.sp).textColor(AppTheme.lightSecondaryTextColor),
              ],
            ),
          ),
          12.verticalSpace,
          CupertinoButton(
            onPressed: (){},
            color: AppTheme.primaryLightColor,
            padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 20.w),
            child: Material(
              color: Colors.transparent,
              child: Center(
                child: Text(context.t.contact.friendHome.addToContact).textColor(AppTheme.secondaryColor).fontSize(20.sp).fontWeight(FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}


class ApplyFriendDialog extends StatelessWidget {
  final Function(String) onSubmit;
  const ApplyFriendDialog({super.key,required this.onSubmit});
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.w),
      ),
      backgroundColor: AppTheme.primaryLightColor,
      title: Text(context.t.contact.friendHome.applyFriend),
      children: [
        
      ],
    );
  }
}