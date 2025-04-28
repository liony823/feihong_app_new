import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:core/helper/dropdown_menu.dart';
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
class ContactController extends _$ContactController with DropdownMenuMixin {
  ContactService get _contactService => ref.read(contactServiceProvider);

  @override
  ContactState build() {
    FakeHelper.fakeHeader.tagIndex = "↑";
    return ContactState(
        contacts: [FakeHelper.fakeHeader], unreadFriendApplyCount: SpHelper.friendApplyUnreadCount);
  }

  Future<void> initialize() async {
    await Future.wait([
      getUnreadFriendApplyCount(),
      syncContacts(),
    ]);
  }

  Future<void> getUnreadFriendApplyCount() async {
    final unreadFriendApplyCount = await _contactService.getUnreadFriendApplyCount();
    state = state.copyWith(unreadFriendApplyCount: unreadFriendApplyCount);
  }

  Future<void> markFriendApplyRead() async {
    await _contactService.markFriendApplyRead();
    state = state.copyWith(unreadFriendApplyCount: 0);
  }

  Future<void> syncContacts() async {
    final results =
        await _contactService.syncContacts(version: state.maxVersion);

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

  void toNewFriend() {
    if (state.unreadFriendApplyCount > 0) {
      markFriendApplyRead();
    }
    Global.context?.router.pushPath(Routes.friendApply);
  }

  void toInvite() {}

  void toGroup() {}

  void toProfile() {}
}
