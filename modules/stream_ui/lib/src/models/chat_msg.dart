
import 'package:common/common.dart';
import 'package:stream_ui/stream_ui.dart';
import 'package:wukongimfluttersdk/entity/msg.dart';
import 'package:wukongimfluttersdk/type/const.dart';

class WKUIChatMsgItem {
  WKMsg? wkMsg; // 本条消息
  WKMsg? previousMsg; // 上一条消息
  WKMsg? nextMsg; // 
  bool showNickName; // 是否显示消息昵称
  bool isPlaying; // 语音是否在播放
  bool isChoose; // 是否选择消息
  bool isChecked; // 是否选中消息
  bool isShowTips; // 是否显示背景提示
  bool isUpdateStatus;
  bool isRefreshReaction;
  bool isRefreshAvatarAndName;
  bool isShowPinnedMessage;

  int isPinned; // 是否置顶
  ILinkClick? iLinkClick;

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

  formatSpans(WKMsg wkMsg){
    if (wkMsg.contentType != WkMessageContentType.text || wkMsg.messageContent == null){
      return;
    }
    List<String> displaySpans = [];
    displaySpans.add(content);
    final entities = wkMsg.messageContent?.entities;
    if (entities == null || entities.isEmpty){
      return;
    }
    for (WKMsgEntity entity in entities){
      if ((entity.offset + entity.length) > displaySpans.length || entity.offset > displaySpans.length){
        continue;
      }

      if (entity.type == WKChatContentSpanType.link){
        String t = content.substring(entity.offset, entity.offset + entity.length);
      }
    }
  }
}

abstract class ILinkClick {
  void onShowUserDetail(String uid, String groupNo);
  void onShowSearchUser(String phone);
}
