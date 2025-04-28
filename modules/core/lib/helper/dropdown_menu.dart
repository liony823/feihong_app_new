import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

mixin DropdownMenuMixin<T> on Notifier<T> {
  void onDropdownMenuPressed(String type) {
    switch (type) {
      case 'addFriend':
        toAddFriend();
        break;
      case 'createGroup':
        toAddGroup();
        break;
      case 'scan':
        toScan();
        break;
    }
  }
  void toAddGroup() {}

  void toAddFriend() {
    Global.context?.router.pushPath(Routes.addFriend);
  }
  void toScan() {
    // Global.context?.router.pushPath(Routes.scan);
  }
}