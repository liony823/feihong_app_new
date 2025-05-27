// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChannelSimpleState _$ChannelSimpleStateFromJson(Map<String, dynamic> json) =>
    _ChannelSimpleState(
      channelId: json['channel_id'] as String,
      channelType: (json['channel_type'] as num).toInt(),
      calling: (json['calling'] as num).toInt(),
    );

Map<String, dynamic> _$ChannelSimpleStateToJson(_ChannelSimpleState instance) =>
    <String, dynamic>{
      'channel_id': instance.channelId,
      'channel_type': instance.channelType,
      'calling': instance.calling,
    };
