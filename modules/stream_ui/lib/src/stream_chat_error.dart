import 'package:equatable/equatable.dart';

///
class StreamChatError with EquatableMixin implements Exception {
  ///
  const StreamChatError(this.message);

  /// Error message
  final String message;

  @override
  List<Object?> get props => [message];

  @override
  String toString() => 'StreamChatError(message: $message)';
}