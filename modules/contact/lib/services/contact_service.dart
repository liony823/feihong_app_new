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

  Future<int> getUnreadCount() async {
    return await _contactRepository.getUnreadCount();
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

  Future<UserInfo?> searchUser(String keyword) async {
    return await _contactRepository.searchUser(keyword);
  }
}

@riverpod
ContactService contactService(Ref ref) {
  return ContactService(contactRepository: ref.read(contactRepositoryProvider));
}
