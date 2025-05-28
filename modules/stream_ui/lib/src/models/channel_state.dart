import 'package:wukongimfluttersdk/entity/conversation.dart';
import 'package:wukongimfluttersdk/entity/msg.dart';
import 'package:wukongimfluttersdk/entity/reminder.dart';
import 'package:wukongimfluttersdk/wkim.dart';


class ChannelState {
  ChannelState(
    WKUIConversationMsg conversationMsg,
  ): conversationMsg = conversationMsg, childList = [] {
    this.conversationMsg.getWkChannel().then((value) {
      this.isTop = value?.top;
    });
  }

  WKUIConversationMsg conversationMsg;

  WKMsg? lastMsg;

  String? lastClientMsgNO;

  List<ChannelState> childList;

  bool? isRefreshChannelInfo;
  bool? isResetCounter; 
  bool? isResetReminders;
  bool? isResetContent;
  bool? isResetTime;
  bool? isResetTyping;
  bool? isRefreshStatus;
  int? typingStartTime;
  String? typingUserName;
  int? isCalling;
  int? isTop;

  int get getUnreadCount {
    if (childList.isEmpty) {
      return this.conversationMsg.unreadCount;
    }
    int count = 0;
    for (var child in childList) {
      count += child.conversationMsg.unreadCount;
    }
    return count;
  }

  Future<List<WKReminder>> getReminders() async {
    List<WKReminder> tempReminders = [];
    if (childList.isEmpty) {
      final list = await this.conversationMsg.getReminderList();
      if (list != null) {
        tempReminders.addAll(list);
      }
    } else {
      for (var child in childList) {
        final list = await child.conversationMsg.getReminderList();
        if (list != null) {
          tempReminders.addAll(list);
        }
      }
    }

    List<WKReminder> reminders = [];
    for (var reminder in tempReminders) {
      if (reminder.type == WKMentionType.wkReminderTypeMentionMe &&
          reminder.done == 0) {
        reminders.add(reminder);
      }
    }

    return reminders;
  }

  Future<WKMsg> getMsg() async {
    if (childList.isEmpty) {
      return await this.conversationMsg.getWkMsg() ?? WKMsg();
    }

    String clientMsgNo = '';
    int lastMsgTimestamp = 0;
    for (var child in childList) {
      if (child.conversationMsg.lastMsgTimestamp > lastMsgTimestamp) {
        lastMsgTimestamp = child.conversationMsg.lastMsgTimestamp;
        clientMsgNo = child.conversationMsg.clientMsgNo;
      }
    }

    if (lastClientMsgNO == clientMsgNo && lastMsg != null) {
      return lastMsg!;
    }

    lastClientMsgNO = clientMsgNo;
    lastMsg = await WKIM.shared.messageManager.getWithClientMsgNo(clientMsgNo);
    if (lastMsg != null) {
      return lastMsg!;
    }

    return WKMsg();
  }
}