/// 应用常量
// ignore_for_file: constant_identifier_names

class AppConstants {
  // 应用相关
  static const String appName = '飞宏IM';
  static const String appVersion = '1.0.0';

  // API相关
  static const int connectionTimeout = 15000; // 毫秒
  static const int receiveTimeout = 15000; // 毫秒

  // 缓存相关
  static const int cacheDuration = 7; // 天

  // 图片相关
  static const int maxImageSize = 10 * 1024 * 1024; // 10MB

  // 其他
  static const int maxRetryCount = 3;

  // 设备相关
  static const int deviceMobileFlag = 0;
  static const int deviceWebFlag = 1;
  static const int devicePcFlag = 2;

  // 私有构造函数，防止实例化
  AppConstants._();
}

enum FileType {
  // TypeAvatar 头像
  avatar,
  // TypeChat 聊天文件
  chat,
  // TypeMoment 动态文件
  moment,
  // TypeMomentCover 动态封面
  momentcover,
  // TypeSticker 表情
  sticker,
  // TypeReport 举报
  report,
  // TypeCommon 通用
  common,
  // TypeChatBg 聊天背景
  chatbg,
  // TypeDownload 下载文件目录
  download,
  // TypeWorkplaceBanner
  workplacebanner,
  // TypeWorkplaceAppIcon
  workplaceappicon,
}

enum AppModuleType {
  base,
  login,
  applet,
}

/// 该类包含与网络通信相关的命令键常量
class WKCMDKeys {
  // 撤回消息
  static const String wk_messageRevoke = "messageRevoke";
  // 同步好友
  static const String wk_sysFriends = "sysFriends";
  // 通过好友申请
  static const String wk_friendAccept = "friendAccept";
  // 申请加好友
  static const String wk_friendRequest = "friendRequest";
  // 群头像更新
  static const String wk_groupAvatarUpdate = "groupAvatarUpdate";
  // 用户头像更新
  static const String wk_userAvatarUpdate = "userAvatarUpdate";
  // 成员更新
  static const String wk_memberUpdate = "memberUpdate";
  // 频道更新
  static const String wk_channelUpdate = "channelUpdate";
  // 语音已读
  static const String wk_voiceReaded = "voiceReaded";
  // 在线状态
  static const String wk_onlineStatus = "onlineStatus";
  // 正在输入
  static const String wk_typing = "typing";
  // 清除未读数量
  static const String wk_unreadClear = "unreadClear";
  // 好友被删除
  static const String wk_friendDeleted = "friendDeleted";
  // 动态消息
  static const String wk_momentMsg = "momentMsg";
  // 同步扩展消息cmd
  static const String wk_sync_message_extra = "syncMessageExtra";
  // 邀请视频通话
  static const String wk_room_invoke = "room.invoke";
  // 删除某个channel或channel成员聊天数据
  static const String wk_message_erase = "messageEerase";
  // 同步消息提醒
  static const String wk_sync_reminders = "syncReminders";

  static const String wk_sync_channel_state = 'syncChannelState';

  // 同步最近会话扩展
  static const String wk_sync_conversation_extra = "syncConversationExtra";

  static const String wk_conversation_delete = "conversationDelete";

  // 私有构造函数，防止实例化
  WKCMDKeys._();
}
