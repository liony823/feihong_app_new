// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChannelSimpleState _$ChannelSimpleStateFromJson(Map<String, dynamic> json) =>
    _ChannelSimpleState(
      channelId: json['channel_id'] as String,
      channelType: (json['channel_type'] as num).toInt(),
      calling: (json['calling'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChannelSimpleStateToJson(_ChannelSimpleState instance) =>
    <String, dynamic>{
      'channel_id': instance.channelId,
      'channel_type': instance.channelType,
      'calling': instance.calling,
    };

_WKChannelState _$WKChannelStateFromJson(Map<String, dynamic> json) =>
    _WKChannelState(
      signalOn: (json['signal_on'] as num).toInt(),
      onlineCount: (json['online_count'] as num).toInt(),
      callInfo: json['call_info'] == null
          ? null
          : CallInfo.fromJson(json['call_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WKChannelStateToJson(_WKChannelState instance) =>
    <String, dynamic>{
      'signal_on': instance.signalOn,
      'online_count': instance.onlineCount,
      'call_info': instance.callInfo?.toJson(),
    };

_CallInfo _$CallInfoFromJson(Map<String, dynamic> json) => _CallInfo(
      roomName: json['room_name'] as String,
      callingParticipants: (json['calling_participants'] as List<dynamic>?)
          ?.map((e) => CallParticipant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CallInfoToJson(_CallInfo instance) => <String, dynamic>{
      'room_name': instance.roomName,
      'calling_participants':
          instance.callingParticipants?.map((e) => e.toJson()).toList(),
    };

_CallParticipant _$CallParticipantFromJson(Map<String, dynamic> json) =>
    _CallParticipant(
      uid: json['uid'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CallParticipantToJson(_CallParticipant instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
    };
