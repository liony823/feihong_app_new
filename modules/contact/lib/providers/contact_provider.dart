import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:contact/helper/fake.dart';
import 'package:contact/models/contact.dart';
import 'package:contact/services/contact_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contact_provider.g.dart';

class ContactState {
  final List<ISContact> contacts;
  final int unreadFriendApplyCount;

  ContactState({required this.contacts, required this.unreadFriendApplyCount});

  int get maxVersion => contacts.lastOrNull?.version ?? 0;

  ContactState copyWith(
      {List<ISContact>? contacts, int? unreadFriendApplyCount}) {
    return ContactState(
        contacts: contacts ?? this.contacts,
        unreadFriendApplyCount:
            unreadFriendApplyCount ?? this.unreadFriendApplyCount);
  }
}

@Riverpod(keepAlive: true)
class ContactController extends _$ContactController {
  @override
  ContactState build() {
    FakeHelper.fakeHeader.tagIndex = "↑";
    return ContactState(
        contacts: [FakeHelper.fakeHeader], unreadFriendApplyCount: 0);
  }

  Future<void> initialize() async {
    await Future.wait([
      getUnreadFriendApplyCount(),
      syncContacts(),
    ]);
  }

  Future<void> getUnreadFriendApplyCount() async {
    final contactService = ref.read(contactServiceProvider);
    final unreadFriendApplyCount = await contactService.getUnreadCount();
    state = state.copyWith(unreadFriendApplyCount: unreadFriendApplyCount);
  }

  Future<void> syncContacts() async {
    final contactService = ref.read(contactServiceProvider);
    final results =
        await contactService.syncContacts(version: state.maxVersion);

    if (results.isNotEmpty) {
      List<ISContact> newContacts = [];
      final oldContacts = state.contacts;
      for (var oldContact in oldContacts) {
        bool isExist = false;
        for (var newContact in results) {
          if (newContact.uid == oldContact.uid) {
            isExist = true;
            break;
          }
        }
        if (!isExist) {
          newContacts.add(oldContact);
        }
      }
      newContacts.addAll(results);

      state = state.copyWith(
          contacts: Utils.convertToAZList(newContacts).cast<ISContact>());
    }
  }

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

  void toNewFriend() {
    Global.context?.router.pushPath(Routes.friendApply);
  }

  void toInvite() {}

  void toGroup() {}

  void toProfile() {}

  void toAddGroup() {}

  void toAddFriend() {
    Global.context?.router.pushPath(Routes.addFriend);
  }

  void toScan() {
    // Global.context?.router.pushPath(Routes.scan);
  }
}
