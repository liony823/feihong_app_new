import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'custom_popup_menu.dart';

class ContactDropdownMenu extends StatefulWidget {
  final void Function(String) onItemPressed;
  const ContactDropdownMenu({super.key, required this.onItemPressed});

  @override
  State<ContactDropdownMenu> createState() => _ContactDropdownMenuState();
}

class _ContactDropdownMenuState extends State<ContactDropdownMenu> {
  late final CustomPopupMenuController _popCtrl;

  @override
  void initState() {
    super.initState();
    _popCtrl = CustomPopupMenuController();
  }

  @override
  void dispose() {
    _popCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopButton(
      popCtrl: _popCtrl,
      menuItemPadding: EdgeInsets.all(8.w),
      verticalMargin: 4.h,
      showArrow: false,
      menus: [
        PopMenuInfo(
          text: context.t.c.dropdownMenu.createGroup,
          iconWidget: Icon(
            Icons.people_alt_sharp,
            color: AppTheme.darkTextColor,
          ),
          onTap: () => widget.onItemPressed("createGroup"),
        ),
        PopMenuInfo(
          text: context.t.c.dropdownMenu.addFriend,
          iconWidget: Icon(
            EvaIcons.person_add,
            color: AppTheme.darkTextColor,
          ),
          onTap: () => widget.onItemPressed("addFriend"),
        ),
        PopMenuInfo(
          text: context.t.c.dropdownMenu.scan,
          iconWidget: Icon(
            BoxIcons.bx_scan,
            color: AppTheme.darkTextColor,
          ),
          onTap: () => widget.onItemPressed("scan"),
        ),
      ],
      child: Padding(
        padding: EdgeInsets.only(right: 16.w, left: 8.w),
        child: const Icon(EvaIcons.plus_circle_outline),
      ),
    );
  }
}
