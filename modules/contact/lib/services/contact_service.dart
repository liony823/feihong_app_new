import 'package:common/common.dart';
import 'package:contact/models/contact.dart';
import 'package:contact/models/friend_apply.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repositories/contact_repositoty.dart';

part 'contact_service.g.dart';

class ContactService {
  final ContactRepository _contactRepository;

  ContactService({required ContactRepository contactRepository})
      : _contactRepository = contactRepository;

  Future<List<ISContact>> syncContacts({
    required int version,
  }) async {
    final contacts = await _contactRepository.syncContacts(version: version);
    return contacts.map((e) => ISContact(contact: e)).toList();
  }

  /// 获取未读好友申请数量
  Future<int> getUnreadFriendApplyCount() async {
    return await _contactRepository.getUnreadFriendApplyCount();
  }

  /// 标记好友申请为已读
  Future<bool> markFriendApplyRead() async {
    return await _contactRepository.markFriendApplyRead();
  }

  Future<Pagination<FriendApply>> getFriendApplyList({
    int pageIndex = 1,
    int pageSize = 50,
  }) async {
    return await _contactRepository.getFriendApplyList(
        pageIndex: pageIndex, pageSize: pageSize);
  }

  Future<bool> acceptFriendApply(String token) async {
    return await _contactRepository.acceptFriendApply(token);
  }

  Future<bool> refuseFriendApply(String toUid) async {
    return await _contactRepository.refuseFriendApply(toUid);
  }

  Future<SearchUserInfo?> searchUser(String keyword) async {
    return await _contactRepository.searchUser(keyword);
  }

  Future<bool> applyFriend({
    required String toUid,
    required String remark,
    required String vercode
  }) async {
    return await _contactRepository.applyFriend(toUid: toUid, remark: remark, vercode: vercode);
  }
}

@riverpod
ContactService contactService(Ref ref) {
  return ContactService(contactRepository: ref.read(contactRepositoryProvider));
}
