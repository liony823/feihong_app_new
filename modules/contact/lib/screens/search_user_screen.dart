import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:core/providers/contact/search_user_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

@RoutePage()
class SearchUserScreen extends HookConsumerWidget {
  const SearchUserScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(searchUserControllerProvider.notifier);
    final state = ref.watch(searchUserControllerProvider);
    return Scaffold(
        backgroundColor: AppTheme.primaryLightColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              18.horizontalSpace,
              Expanded(
                child: SizedBox(
                  height: 36.h,
                  child: TextField(
                    autofocus: true,
                    textInputAction: TextInputAction.search,
                    onSubmitted: controller.searchUser,
                    cursorColor: AppTheme.brandColor,
                    cursorHeight: 18.h,
                    decoration: InputDecoration(
                      filled: true,
                      isDense: true,
                      fillColor: AppTheme.primaryLightColor,
                      hintText: context.t.contact.searchUser.placeholder,
                      hintStyle: TextStyle(
                        color: AppTheme.lightSecondaryTextColor2,
                        fontSize: 14.sp,
                      ),
                      prefixIcon: const Icon(EvaIcons.search_outline,
                          color: AppTheme.lightSecondaryTextColor2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              CupertinoButton(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                onPressed: () {
                  context.router.maybePop();
                },
                child: Material(
                  child: Text(context.t.c.cancel)
                      .textColor(AppTheme.lightSecondaryTextColor),
                ),
              )
            ],
          ),
        ),
        body: Visibility(
          visible: state.userInfo == null && state.isSearched,
          child: Container(
            color: Colors.white,
            height: 168.h,
            child: Center(
              child: Text(context.t.contact.searchUser.userNotFound)
                  .textColor(AppTheme.lightSecondaryTextColor2),
            ),
          ),
        ));
  }
}
