import 'package:contact/models/contact.dart';
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
}

@riverpod
ContactService contactService(Ref ref) {
  return ContactService(contactRepository: ref.read(contactRepositoryProvider));
}
