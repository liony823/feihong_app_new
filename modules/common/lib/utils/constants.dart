// ignore_for_file: constant_identifier_names

import 'package:device_info_plus/device_info_plus.dart';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

/// 应用常量
class AppConstants {
  // 应用相关
  static const String appName = '飞宏IM';
  static const String appVersion = '1.0.0';
  static const String packageName = "com.feihong.im";

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
  static String deviceID = '';
  static String deviceName = '';
  static String deviceModel = '';

  // 文件相关
  static String avatarCacheDir = "";
  static String imageDir = "";
  static String videoDir = "";
  static String voiceDir = "";
  static String chatBgCacheDir = "";
  static String messageBackupDir = "";
  static String chatDownloadFileDir = "";

  // 私有构造函数，防止实例化
  AppConstants._();

  static Future initCacheDir() async {
    final documentDir = await getApplicationDocumentsDirectory();
    final cacheDir = await getApplicationCacheDirectory();
    imageDir = '${documentDir.path}/images';
    videoDir = '${documentDir.path}/videos';
    voiceDir = '${documentDir.path}/voices';
    avatarCacheDir = '${cacheDir.path}/avatars';
    chatBgCacheDir = '${cacheDir.path}/chatBgs';
    messageBackupDir = '${cacheDir.path}/messageBackups';
    chatDownloadFileDir = '${cacheDir.path}/chatDownloadFiles';
    if (!await Directory(avatarCacheDir).exists()) {
      await Directory(avatarCacheDir).create(recursive: true);
    }
    if (!await Directory(imageDir).exists()) {
      await Directory(imageDir).create(recursive: true);
    }
    if (!await Directory(videoDir).exists()) {
      await Directory(videoDir).create(recursive: true);
    }
    if (!await Directory(voiceDir).exists()) {
      await Directory(voiceDir).create(recursive: true);
    }
    if (!await Directory(chatBgCacheDir).exists()) {
      await Directory(chatBgCacheDir).create(recursive: true);
    }
    if (!await Directory(messageBackupDir).exists()) {
      await Directory(messageBackupDir).create(recursive: true);
    }
    if (!await Directory(chatDownloadFileDir).exists()) {
      await Directory(chatDownloadFileDir).create(recursive: true);
    }
  }

  // 获取设备信息
  static Future initDevice() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    if (Platform.isIOS) {
      IosDeviceInfo iosDeviceInfo = await deviceInfoPlugin.iosInfo;
      deviceModel = iosDeviceInfo.modelName;
      deviceID = iosDeviceInfo.identifierForVendor ?? '';
      deviceName = iosDeviceInfo.name;
    } else if (Platform.isAndroid) {
      AndroidDeviceInfo androidDeviceInfo = await deviceInfoPlugin.androidInfo;
      deviceModel = androidDeviceInfo.model;
      deviceID = androidDeviceInfo.serialNumber;
      deviceName = androidDeviceInfo.device;
    }
  }
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

class EndpointCategory {
  //个人中心
  static String personalCenter = "personal_center";
  //通讯录
  static String mailList = "mail_list";
  //刷新通讯录红点
  static String wkRefreshMailList = "wk_refresh_mailList";
  //获取通讯录要显示的红点
  static String wkGetMailListRedDot = "wk_get_mailList_red_dot";
  //聊天功能面板
  static String chatFunction = "chat_function";
  //tab菜单
  static String tabMenus = "tab_menus";
  //扫一扫
  static String wkScan = "wk_scan";
  //消息配置
  static String msgConfig = "msg_config";
  //登录
  static String loginMenus = "login_menus";
  //聊天工具栏
  static String wkChatToolBar = "wk_chat_tool_bar";
  //刷新表情分类
  static String wkRefreshStickerCategory = "wk_refresh_sticker_category";
  //数据库
  static String wkDBMenus = "wk_db_menus";
  // 搜索聊天内容
  static String wkSearchChatContent = "str_search_chat_content";
  // 退出会话
  static String wkExitChat = "wk_exit_chat";
  // 用户详细资料显示view
  static String wkUserDetailView = "wk_user_detail_view";
  static String wkChatPopupItem = "wk_chat_popup_item";
  // 聊天显示气泡
  static String chatShowBubble = "chat_show_bubble";

  static String homeTab = "home_tab";
  static String homeUpdateSelect = "home_update_select";
  static String chatSettingCell = "chat_setting_cell";
  static String refreshProhibitWord = "refresh_prohibit_word";
}
