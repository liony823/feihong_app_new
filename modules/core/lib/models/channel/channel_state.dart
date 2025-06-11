import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_state.freezed.dart';
part 'channel_state.g.dart';

@freezed
abstract class ChannelSimpleState with _$ChannelSimpleState {
  const factory ChannelSimpleState({
    required String channelId,
    required int channelType,
    int? calling,
  }) = _ChannelSimpleState;

  factory ChannelSimpleState.fromJson(Map<String, dynamic> json) =>
      _$ChannelSimpleStateFromJson(json);
}

@freezed
abstract class WKChannelState with _$WKChannelState {
  const factory WKChannelState({
    required int signalOn,
    required int onlineCount,
    CallInfo? callInfo,
  }) = _WKChannelState;

  factory WKChannelState.fromJson(Map<String, dynamic> json) =>
      _$WKChannelStateFromJson(json);
}

@freezed
abstract class CallInfo with _$CallInfo {
  const factory CallInfo({
    required String roomName,
    List<CallParticipant>? callingParticipants,
  }) = _CallInfo;

  factory CallInfo.fromJson(Map<String, dynamic> json) =>
      _$CallInfoFromJson(json);
}

@freezed
abstract class CallParticipant with _$CallParticipant {
  const factory CallParticipant({
    required String uid,
    required String name,
  }) = _CallParticipant;

  factory CallParticipant.fromJson(Map<String, dynamic> json) =>
      _$CallParticipantFromJson(json);
}
