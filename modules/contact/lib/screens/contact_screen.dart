import 'package:acter_avatar/acter_avatar.dart';
import 'package:common/common.dart';
import 'package:contact/helper/fake.dart';
import 'package:contact/models/contact.dart';
import 'package:contact/providers/contact_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

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
            IconButton(
              onPressed: () {},
              icon: const Icon(EvaIcons.plus_circle_outline),
            ),
          ],
        ),
        body: WrapAzListView(
          data: contactState.contacts.reversed.toList(),
          itemCount: contactState.contacts.length,
          itemBuilder: (context, contact, index) {
            final isHeader = contact.uid == FakeHelper.fakeHeader.uid;
            return isHeader
                ? _buildContactHeaderView(context, contactController)
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
      BuildContext context, ContactController controller) {
    return Container(
      color: AppTheme.primaryLightColor,
      margin: EdgeInsets.only(bottom: 12.h),
      child: Column(
        children: [
          _buildItemView(context,
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
    final avatarOptions = AvatarOptions(
        AvatarInfo(
          uniqueId: contact.uid,
          displayName: contact.getName(),
          avatar: NetworkImage(contact
              .avatar), // can be any image provider .i.e. AssetImage, MemoryImage and NetworkImage etc.
        ),
        size: 36.w);
    return _buildItemView(
      context,
      avatar: ActerAvatar(
        options: avatarOptions,
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
                  ).fontSize(15.sp),
                )
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
      height: 36.w,
      width: 36.w,
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
