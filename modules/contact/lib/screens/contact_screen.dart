import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:stream_ui/stream_ui.dart';

class ContactScreen extends HookConsumerWidget {
  const ContactScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contactController = ref.read(contactControllerProvider.notifier);
    final contactState = ref.watch(contactControllerProvider);

    return Scaffold(
        appBar: AppBar(
          title: context.t.contact.title.appBarText,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(EvaIcons.search_outline),
            ),
            ContactDropdownMenu(
              onItemPressed: contactController.onDropdownMenuPressed,
            ),
          ],
        ),
        body: WrapAzListView(
          data: contactState.contacts.reversed.toList(),
          itemCount: contactState.contacts.length,
          itemBuilder: (context, contact, index) {
            final isHeader = contact.uid == FakeHelper.fakeHeader.uid;
            return isHeader
                ? _buildContactHeaderView(context, contactController,unreadFriendApplyCount: contactState.unreadFriendApplyCount)
                : _buildContactItemView(
                    context,
                    contact,
                    onPressed: contactController.toProfile,
                    showDivider: index != contactState.contacts.length - 1,
                  );
          },
        ));
  }

  Widget _buildContactHeaderView(
      BuildContext context, ContactController controller, {
    int unreadFriendApplyCount = 0,
      }) {
    return Container(
      color: AppTheme.primaryLightColor,
      margin: EdgeInsets.only(bottom: 12.h),
      child: Column(
        children: [
          _buildItemView(context,
          extra: unreadFriendApplyCount > 0 ? UnreadIndicator(unreadCount: unreadFriendApplyCount) : null,
              avatar: _buildContactHeaderIcon(context,
                  icon: EvaIcons.person_add, color: Color(0xFFFA9C3E)),
              text: context.t.contact.newFriend, onPressed: () {
            controller.toNewFriend();
          }),
          _buildItemView(context,
              avatar: _buildContactHeaderIcon(context,
                  icon: EvaIcons.person_done, color: Color(0xFF54BCBD)),
              text: context.t.contact.invite, onPressed: () {
            controller.toInvite();
          }),
          _buildItemView(context,
              showDivider: false,
              avatar: _buildContactHeaderIcon(context,
                  icon: Icons.people_alt_sharp, color: Color(0xFF08C25F)),
              text: context.t.contact.group, onPressed: () {
            controller.toGroup();
          }),
        ],
      ),
    );
  }

  Widget _buildContactItemView(
    BuildContext context,
    ISContact contact, {
    VoidCallback? onPressed,
    bool showDivider = true,
  }) {
    return _buildItemView(
      context,
      avatar: UserAvatar(
        user: User(uid: contact.uid, name: contact.getName(),image: Apis.getAvatarUrl(contact.uid)),
      ),
      text: contact.getName(),
      onPressed: onPressed,
      showDivider: showDivider,
    );
  }

  Widget _buildItemView(
    BuildContext context, {
    required Widget avatar,
    required String text,
    Widget? extra,
    VoidCallback? onPressed,
    bool showDivider = true,
  }) {
    return CupertinoButton(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      color: AppTheme.primaryLightColor,
      onPressed: onPressed,
      child: Material(
        color: Colors.transparent,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.w),
                  child: avatar,
                ),
                Expanded(
                  child: Text(
                    text,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).fontSize(16.sp),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 12.w),
                  child: extra ?? const SizedBox(),
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
      ),
    );
  }

  Widget _buildContactHeaderIcon(BuildContext context,
      {required IconData icon, required Color color}) {
    return Container(
      height: 40.w,
      width: 40.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Center(
        child: Icon(
          icon,
          color: AppTheme.primaryLightColor,
        ),
      ),
    );
  }
}
