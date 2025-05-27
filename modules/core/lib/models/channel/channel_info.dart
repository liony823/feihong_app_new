
import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_info.freezed.dart';
part 'channel_info.g.dart';

@freezed
abstract class ChannelBaseEntity with _$ChannelBaseEntity  {
  const factory ChannelBaseEntity({
    required String channelId,
    @Default(0)  int channelType, 
  }) = _ChannelIDEntity;

  factory ChannelBaseEntity.fromJson(Map<String, dynamic> json) => _$ChannelIDEntityFromJson(json);
}

@freezed
abstract class ChannelInfo with _$ChannelInfo {

    const factory ChannelInfo({
        required ChannelBaseEntity channel,
        ChannelBaseEntity? parentChannel,
        @Default("") String name,
        @Default("") String logo,
        @Default("") String remark,
        @Default(0)  int status,
        @Default(0)  int online,
        @Default(0)  int lastOffline,
        @Default(0)  int receipt,
        @Default(0)  int robot,
        @Default("") category,
        @Default(0)  int stick,
        @Default(0)  int mute,
        @Default(0)  int showNick,
        @Default(0)  int follow,
        @Default(0)  int beDeleted,
        @Default(0)  int beBlacklist,
        @Default("") notice,
        @Default(0)  int groupType,
        @Default(0)  int save,
        @Default(0)  int forbidden,
        @Default(0)  int invite,
        @Default(0)  int flame,
        @Default(0)  int flameSecond,
        @Default(0)  int deviceFlag,
        required Map extra,
    }) = _ChannelInfo;

    factory ChannelInfo.fromJson(Map<String, dynamic> json) => _$ChannelInfoFromJson(json);
}
