import 'package:contact/models/contact.dart';

class FakeHelper {
  static const int fakeContactCount = 10;
  static ISContact fakeHeader = ISContact(
    contact: Contact(
      uid: 'customHeader',
      status: ContactStatus.normal,
      version: 10000,
    ),
  );
}
