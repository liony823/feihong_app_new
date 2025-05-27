// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChannelIDEntity _$ChannelIDEntityFromJson(Map<String, dynamic> json) =>
    _ChannelIDEntity(
      channelId: json['channel_id'] as String,
      channelType: (json['channel_type'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ChannelIDEntityToJson(_ChannelIDEntity instance) =>
    <String, dynamic>{
      'channel_id': instance.channelId,
      'channel_type': instance.channelType,
    };

_ChannelInfo _$ChannelInfoFromJson(Map<String, dynamic> json) => _ChannelInfo(
      channel:
          ChannelBaseEntity.fromJson(json['channel'] as Map<String, dynamic>),
      parentChannel: json['parent_channel'] == null
          ? null
          : ChannelBaseEntity.fromJson(
              json['parent_channel'] as Map<String, dynamic>),
      name: json['name'] as String? ?? "",
      logo: json['logo'] as String? ?? "",
      remark: json['remark'] as String? ?? "",
      status: (json['status'] as num?)?.toInt() ?? 0,
      online: (json['online'] as num?)?.toInt() ?? 0,
      lastOffline: (json['last_offline'] as num?)?.toInt() ?? 0,
      receipt: (json['receipt'] as num?)?.toInt() ?? 0,
      robot: (json['robot'] as num?)?.toInt() ?? 0,
      category: json['category'] ?? "",
      stick: (json['stick'] as num?)?.toInt() ?? 0,
      mute: (json['mute'] as num?)?.toInt() ?? 0,
      showNick: (json['show_nick'] as num?)?.toInt() ?? 0,
      follow: (json['follow'] as num?)?.toInt() ?? 0,
      beDeleted: (json['be_deleted'] as num?)?.toInt() ?? 0,
      beBlacklist: (json['be_blacklist'] as num?)?.toInt() ?? 0,
      notice: json['notice'] ?? "",
      groupType: (json['group_type'] as num?)?.toInt() ?? 0,
      save: (json['save'] as num?)?.toInt() ?? 0,
      forbidden: (json['forbidden'] as num?)?.toInt() ?? 0,
      invite: (json['invite'] as num?)?.toInt() ?? 0,
      flame: (json['flame'] as num?)?.toInt() ?? 0,
      flameSecond: (json['flame_second'] as num?)?.toInt() ?? 0,
      deviceFlag: (json['device_flag'] as num?)?.toInt() ?? 0,
      extra: json['extra'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$ChannelInfoToJson(_ChannelInfo instance) =>
    <String, dynamic>{
      'channel': instance.channel.toJson(),
      'parent_channel': instance.parentChannel?.toJson(),
      'name': instance.name,
      'logo': instance.logo,
      'remark': instance.remark,
      'status': instance.status,
      'online': instance.online,
      'last_offline': instance.lastOffline,
      'receipt': instance.receipt,
      'robot': instance.robot,
      'category': instance.category,
      'stick': instance.stick,
      'mute': instance.mute,
      'show_nick': instance.showNick,
      'follow': instance.follow,
      'be_deleted': instance.beDeleted,
      'be_blacklist': instance.beBlacklist,
      'notice': instance.notice,
      'group_type': instance.groupType,
      'save': instance.save,
      'forbidden': instance.forbidden,
      'invite': instance.invite,
      'flame': instance.flame,
      'flame_second': instance.flameSecond,
      'device_flag': instance.deviceFlag,
      'extra': instance.extra,
    };
