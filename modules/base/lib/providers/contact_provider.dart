import 'package:base/service/contact_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contact_provider.g.dart';

class ContactState {
  final int unreadCount;
  ContactState({required this.unreadCount});

  ContactState copyWith({int? unreadCount}) {
    return ContactState(unreadCount: unreadCount ?? this.unreadCount);
  }
}

@riverpod
class ContactController extends _$ContactController {
  @override
  FutureOr<ContactState> build() async {
    final contactService = ref.read(contactServiceProvider);
    final unreadCount = await contactService.getUnreadCount();
    return ContactState(unreadCount: unreadCount);
  }
}
