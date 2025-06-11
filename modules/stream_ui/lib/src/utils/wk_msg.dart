import 'dart:convert';

import 'package:common/common.dart';
import 'package:flutter/widgets.dart';
import 'package:stream_ui/stream_ui.dart';
import 'package:wukongimfluttersdk/entity/conversation.dart';
import 'package:wukongimfluttersdk/entity/msg.dart';
import 'package:wukongimfluttersdk/type/const.dart';
import 'package:wukongimfluttersdk/wkim.dart';

class WKSystemAccount {
  static const systemTeam = "u_10000";
  static const systemFileHelper = "fileHelper";
  static const systemTeamShortNo = "10000";
  static const systemFileHelperShortNo = "20000";

  static const accountCategorySystem = "system";
  static const accountCategoryVisitor = "visitor";
  static const accountCategoryCustomerService = "customerService";
  static const channelCategoryOrganization = "organization";
  static const channelCategoryDepartment = "department";
  static bool isSystemAccount(String channelID) {
    return channelID == systemTeam || channelID == systemFileHelper;
  }
}

class WKChannelCustomExtras {
  static const String memberCount = "member_count";
  static const String onlineCount = "online_count";
  static const String role = "role";
}

class WKChatContentSpanType {
  static const String link = "link";
  static const String mention = "mention";
  static const String botCommand = "bot_command";
}

class WKGroupType {
  static const normalGroup = 0;
  static const superGroup = 31;
}

class WKContentType extends WkMessageContentType {
  //系统消息
  static const systemMsg = 0;
  //以下是新消息提示分割线
  static const msgPromptNewMsg = -1;
  //消息时间
  static const msgPromptTime = -2;
  //未知消息
  static const unknownMsg = -3;
  //正在输入
  static const typing = -4;
  //撤回消息
  static const revoke = -5;
  //加载中
  static const loading = -6;
  //本地显示的群会议音视频
  static const videoCallGroup = -7;
  // 非好友
  static const noRelation = -9;
  // 敏感词提醒
  static const sensitiveWordsTips = -10;
  static const emptyView = -12;
  static const spanEmptyView = -13;
  // 富文本
  static const richText = 14;
  //群聊加人
  static const addGroupMembersMsg = 1002;
  //群聊减人
  static const removeGroupMembersMsg = 1003;
  //群系统消息
  static const groupSystemInfo = 1005;
  //撤回消息
  static const withdrawSystemInfo = 1006;
  //设置新的管理员
  static const setNewGroupAdmin = 1008;
  //审核群成员
  static const approveGroupMember = 1009;
  //截屏消息
  static const screenshot = 20;
  //揭秘失败
  static const signalDecryptError = 98;

  static bool isSystemMsg(int type) {
    return type >= 1000 && type <= 2000;
  }

  static bool isLocalMsg(int type){
    return type <= 0;
  }
}

class WKMsgUtils {

  static Future<String> getLatestDisplayTitle(WKUIConversationMsg conversationMsg) async {
    String showName = "";
    final context  = Global.context!;
    if (conversationMsg.channelID == WKSystemAccount.systemFileHelper){
      showName = context.t.msg.systemFileHelper;
    }else if (conversationMsg.channelID == WKSystemAccount.systemTeam){
      showName = context.t.msg.systemTeam;
    }
    if (showName.isEmpty){
      final channel = await conversationMsg.getWkChannel();
      if (channel!= null) {
        showName = channel.channelRemark.isEmpty
          ? channel.channelName
            : channel.channelRemark;
      }
    }
    if (showName.isEmpty) {
      showName = context.t.msg.chat;
      final result = await WKIM.shared.channelManager.fetchChannelInfo(conversationMsg.channelID, conversationMsg.channelType);
      print("获取频道信息：${result.toJson()}");
    }
    return showName;
  }

  // 获取消息显示内容
  static Future<String> getLatestDisplayContent(WKMsg msg) async {
    String content = "";
    final context = Global.context!;
    if (msg.isDeleted == 1) return content;
    if (msg.messageContent != null) {
      content = msg.messageContent?.content ?? '';
    }
    if (msg.content.isNotEmpty || WKContentType.isSystemMsg(msg.contentType)) {
      content = getShowContent(context, msg.content);
    }
    if (msg.wkMsgExtra?.messageContent != null) {
      content = msg.wkMsgExtra?.messageContent?.content ?? '';
    }

    //判断是否被撤回
    if (msg.wkMsgExtra?.revoke == 1) {
      content = await getRevokeMsg(context, msg);
    } else if (msg.contentType == WkMessageContentType.contentFormatError) {
      content = context.t.msg.formarMsgError;
    } else if (msg.contentType == WKContentType.signalDecryptError) {
      content = context.t.msg.signalDecryptError;
    } else if (msg.contentType == WKContentType.noRelation) {
      String showName = "";
      final channelInfo = msg.getChannelInfo();
      if (channelInfo != null) {
        showName = channelInfo.channelRemark.isEmpty
            ? channelInfo.channelName
            : channelInfo.channelRemark;
      }
      content = context.t.msg.noRelationRequest(name: showName);
    }
    return content;
  }

  // 获取消息发送者名称
  static String getLatestDisplayFromName(int channelType, WKMsg msg) {
    String fromName = "";
    if (WKContentType.isSystemMsg(msg.contentType) ||
        msg.contentType == WKContentType.revoke ||
        msg.wkMsgExtra?.revoke == 1 ||
        msg.contentType == WKContentType.screenshot) {
      return fromName;
    }
    if (channelType == WKChannelType.personal ||
        channelType == WKChannelType.customerService ||
        msg.fromUID.isEmpty ||
        msg.fromUID == SpHelper.uid) {
      return fromName;
    }
    String channelName = "";
    String channelRemark = "";
    String memberName = "";
    String memberRemark = "";
    if (msg.getFrom() != null) {
      channelName = msg.getFrom()!.channelName;
      channelRemark = msg.getFrom()!.channelRemark;
    }

    if (channelRemark.isNotEmpty) {
      return channelRemark;
    }

    if (msg.getMemberOfFrom() != null) {
      memberName = msg.getMemberOfFrom()!.memberName;
      memberRemark = msg.getMemberOfFrom()!.memberRemark;
    }

    if (memberRemark.isNotEmpty) {
      return memberRemark;
    }
    fromName = channelName.isEmpty ? memberName : channelName;
    return fromName;
  }

  static String getShowContent(BuildContext context, String contentJson) {
    String content;
    try {
      if (contentJson.isEmpty) {
        return "";
      }
      var contentMap = json.decode(contentJson);
      var string = contentMap["content"];
      var list = contentMap["list"];
      List<String> names = [];
      if (list != null && list.isNotEmpty) {
        for (var i = 0; i < list.length; i++) {
          var item = list[i] as Map<String, dynamic>?;
          String name = "";
          if (item != null) {
            name = item['name'];
            if (item.containsKey('uid')) {
              String uid = item['uid'];
              if (uid == SpHelper.uid) {
                name = context.t.c.you;
              }
            }
          }
          names.add(name);
        }
      }
      if (names.isNotEmpty) {
        content = names.join(",") + string;
      } else {
        content = string;
      }
    } catch (e) {
      content = context.t.msg.unkownMsg;
    }
    if (content.isEmpty) {
      content = context.t.msg.unkownMsg;
    }
    return content;
  }

  static Future<String> getRevokeMsg(BuildContext context, WKMsg msg) async {
    String content = "";
    if (Utils.isEmptyOrNull(msg.wkMsgExtra?.revoker) &&
        msg.fromUID.isNotEmpty) {
      if (msg.wkMsgExtra?.revoker == msg.fromUID) {
        if (msg.fromUID == SpHelper.uid) {
          content = context.t.msg.youRecalledAMessage;
        } else {
          var mChannel = msg.getFrom();
          var showName = "";
          if (mChannel != null) {
            showName = mChannel.channelRemark;
            if (showName.isEmpty) {
              showName = mChannel.channelName;
            }
          } else {
            var member = msg.getMemberOfFrom();
            if (member != null) {
              showName = member.memberRemark.isEmpty
                  ? member.memberName
                  : member.memberRemark;
            }
          }
          if (showName.isEmpty) {
            WKIM.shared.channelManager
                .fetchChannelInfo(msg.fromUID, WKChannelType.personal);
          }
          content = context.t.msg.someoneRecalledAMessage(name: showName);
        }
      } else {
        var showName = "";
        if (msg.wkMsgExtra?.revoker == SpHelper.uid) {
          // 你撤回了一条成员的信息
          var member = msg.getMemberOfFrom();
          if (member != null) {
            showName = member.memberRemark.isEmpty
                ? member.memberName
                : member.memberRemark;
          }
          if (showName.isEmpty) {
            var mChannel = await WKIM.shared.channelManager
                .getChannel(msg.fromUID, WKChannelType.personal);
            if (mChannel != null) {
              showName = mChannel.channelRemark.isEmpty
                  ? mChannel.channelName
                  : mChannel.channelRemark;
            }
          }

          content = context.t.msg.youRecalledMemberMessage(member: showName);
        } else {
          // 某人撤回了一条成员的信息
          var member = await WKIM.shared.channelMemberManager.getMember(
              msg.channelID, msg.channelType, msg.wkMsgExtra!.revoker);
          if (member != null) {
            showName = member.memberRemark.isEmpty
                ? member.memberName
                : member.memberRemark;
          }
          if (showName.isEmpty) {
            var mChannel = await WKIM.shared.channelManager
                .getChannel(msg.wkMsgExtra!.revoker, WKChannelType.personal);
            if (mChannel != null) {
              showName = mChannel.channelRemark.isEmpty
                  ? mChannel.channelName
                  : mChannel.channelRemark;
            }
          }
          content = context.t.msg.someoneRecalledMemberMessage(name: showName);
        }
      }
    } else {
      if (msg.fromUID != SpHelper.uid) {
        var mChannel = msg.getFrom();
        var showName = "";
        if (mChannel != null) {
          showName = mChannel.channelRemark;
          if (showName.isEmpty) {
            showName = mChannel.channelName;
          }
        } else {
          var member = msg.getMemberOfFrom();
          if (member != null) {
            showName = member.memberRemark.isEmpty
                ? member.memberName
                : member.memberRemark;
          }
        }
        content = context.t.msg.someoneRecalledAMessage(name: showName);
      } else {
        content = context.t.msg.youRecalledAMessage;
      }
    }

    return content;
  }

  static WKUIChatMsgItem msg2UIMsg(WKMsg msg, int memberCount, bool showNickname, bool isChoose){
    if (msg.wkMsgExtra?.readedCount == 0){
      msg.wkMsgExtra?.unreadCount = memberCount - 1;
    }
    WKUIChatMsgItem msgItem = WKUIChatMsgItem();
    msgItem.wkMsg = msg;
    msgItem.isChoose = isChoose;
    msgItem.showNickName = showNickname;
    return msgItem;
  }
}
