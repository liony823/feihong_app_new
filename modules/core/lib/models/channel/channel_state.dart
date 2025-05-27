import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_state.freezed.dart';
part 'channel_state.g.dart';

@freezed
abstract class ChannelSimpleState with _$ChannelSimpleState {
  const factory ChannelSimpleState({
    required String channelId,
    required int channelType,
    required int calling,
  }) = _ChannelSimpleState;

  factory ChannelSimpleState.fromJson(Map<String, dynamic> json) =>
      _$ChannelSimpleStateFromJson(json);
}