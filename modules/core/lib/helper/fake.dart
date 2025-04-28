import 'package:core/models/contact/contact.dart';
import 'package:core/models/contact/friend_apply.dart';

class FakeHelper {
  static const int fakeContactCount = 10;
  static const int fakeFriendApplyCount = 10;
  static ISContact fakeHeader = ISContact(
    contact: Contact(
      uid: 'customHeader',
      status: ContactStatus.normal,
      version: 10000,
    ),
  );

  static List<FriendApply> fakeFriendApplyList = List.generate(
    fakeFriendApplyCount,
    (index) => FriendApply(
      uid: 'fakeFriendApply$index',
      toUid: 'fakeFriendApply$index',
      status: FriendApplyStatus.apply,
      toName: 'fakeFriendApply$index',
      createdAt: DateTime.now().toIso8601String(),
    ),
  );
}
