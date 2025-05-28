import 'package:common/common.dart';
import 'package:wukongimfluttersdk/entity/msg.dart';

class WKUIChatMsgItem {
  final WKMsg? wkMsg; // 本条消息
  final WKMsg? previousMsg; // 上一条消息
  final WKMsg? nextMsg; // 下一条消息

  final bool showNickName; // 是否显示消息昵称
  final bool isPlaying; // 语音是否在播放
  final bool isChoose; // 是否选择消息
  final bool isChecked; // 是否选中消息
  final bool isShowTips; // 是否显示背景提示
  final bool isUpdateStatus;
  final bool isRefreshReaction;
  final bool isRefreshAvatarAndName;
  final bool isShowPinnedMessage;

  final int isPinned; // 是否置顶
  final ILinkClick? iLinkClick;

  WKUIChatMsgItem({
    this.wkMsg,
    this.iLinkClick,
    this.previousMsg,
    this.nextMsg,
    this.showNickName = true,
    this.isPlaying = false,
    this.isChoose = false,
    this.isChecked = false,
    this.isShowTips = false,
    this.isUpdateStatus = false,
    this.isRefreshReaction = false,
    this.isRefreshAvatarAndName = false,
    this.isShowPinnedMessage = false,
    this.isPinned = 0,
  });

  String get content {
    String showContent = wkMsg?.messageContent?.content ?? '';
    if (!Utils.isEmptyOrNull(wkMsg?.wkMsgExtra?.contentEdit)){
      showContent = wkMsg?.wkMsgExtra?.contentEdit ?? '';
    }

    return showContent;
  }
}

abstract class ILinkClick {
  void onShowUserDetail(String uid, String groupNo);
  void onShowSearchUser(String phone);
}
