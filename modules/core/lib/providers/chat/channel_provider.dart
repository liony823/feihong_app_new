import 'dart:async';
import 'dart:collection';

import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:core/helper/dropdown_menu.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stream_ui/stream_ui.dart';
import 'package:wukongimfluttersdk/entity/channel.dart';
import 'package:wukongimfluttersdk/entity/channel_member.dart';
import 'package:wukongimfluttersdk/entity/conversation.dart';
import 'package:wukongimfluttersdk/entity/msg.dart';
import 'package:wukongimfluttersdk/entity/reminder.dart';
import 'package:wukongimfluttersdk/type/const.dart';
import 'package:wukongimfluttersdk/wkim.dart';

part 'channel_provider.g.dart';

class ChannelProviderState {
  final bool isEnd;
  final int imConnectionDelayMs;
  final int chatConnectionDelayMs;
  final int unreadMessageCount;
  final int connectionStatus;
  final int msgCount;
  final Timer? heartTimer;
  final Timer? typingTimer;
  final List<ChannelState> channelList;
  final Map<String, List<WKChannelMember>> memberMaps;
  ChannelProviderState({
    this.heartTimer,
    this.typingTimer,
    required this.isEnd,
    required this.chatConnectionDelayMs,
    required this.imConnectionDelayMs,
    required this.unreadMessageCount,
    required this.channelList,
    required this.msgCount,
    required this.memberMaps,
    required this.connectionStatus,
  });

  ChannelProviderState copyWith(
      {int? unreadMessageCount,
      int? connectionStatus,
      int? imConnectionDelayMs,
      List<ChannelState>? channelList,
      Timer? heartTimer,
      Timer? typingTimer,
      int? chatConnectionDelayMs,
      bool? isEnd,
      int? msgCount,
      Map<String, List<WKChannelMember>>? memberMaps}) {
    return ChannelProviderState(
      isEnd: isEnd ?? this.isEnd,
      msgCount: msgCount ?? this.msgCount,
      memberMaps: memberMaps ?? this.memberMaps,
      heartTimer: heartTimer ?? this.heartTimer,
      typingTimer: typingTimer ?? this.typingTimer,
      chatConnectionDelayMs:
          chatConnectionDelayMs ?? this.chatConnectionDelayMs,
      imConnectionDelayMs: imConnectionDelayMs ?? this.imConnectionDelayMs,
      channelList: channelList ?? this.channelList,
      connectionStatus: connectionStatus ?? this.connectionStatus,
      unreadMessageCount: unreadMessageCount ?? this.unreadMessageCount,
    );
  }
}

@Riverpod(keepAlive: true)
class ChannelController extends _$ChannelController with DropdownMenuMixin {
  @override
  ChannelProviderState build() {
    return ChannelProviderState(
        unreadMessageCount: 0,
        msgCount: 0,
        imConnectionDelayMs: -1,
        chatConnectionDelayMs: -1,
        connectionStatus: WKConnectStatus.connecting,
        isEnd: false,
        memberMaps: {},
        channelList: []);
  }

  Future<void> initialize() async {
    _getDataList();
    _initListener();
    _startHeartTimer();
    getUnreadMessageCount();
  }

  void _startHeartTimer() {
    _stopHeartTimer();
    _healthCheck();
    final heartTimer = Timer.periodic(10.seconds, (timer) async {
      _healthCheck();
    });

    state = state.copyWith(heartTimer: heartTimer);
  }

  void _stopHeartTimer() {
    if (state.heartTimer != null) {
      state.heartTimer!.cancel();
      state = state.copyWith(heartTimer: null);
    }
  }

  void _healthCheck() async {
    final startTimer = DateTime.now();
    await Apis.healthCheck();
    final endTimer = DateTime.now();
    final duration = endTimer.difference(startTimer).inMilliseconds;
    state = state.copyWith(
      chatConnectionDelayMs: duration,
    );
  }

  void _initListener() {
    /// 监听连接状态变化
    WKIM.shared.connectionManager.addOnConnectionStatus('home',
        (status, reason, connInfo) {
          if (state.connectionStatus != status){
            state = state.copyWith(connectionStatus: status);
          }
    });

    /// 监听会话未读数量列表变化
    WKIM.shared.conversationManager
        .addOnClearAllRedDotListener('channel_conversation', () {
      for (var i = 0; i < state.channelList.length; i++) {
        state.channelList[i].conversationMsg.unreadCount = 0;
      }
    });
    // 监听刷新channel资料事件
    WKIM.shared.channelManager.addOnRefreshListener("channel_conversation",
        (refreshChannel) async {
      for (var i = 0; i < state.channelList.length; i++) {
        final newList = [...state.channelList];
        final channel = newList[i];
        if (channel.conversationMsg.channelID.isNotEmpty &&
            refreshChannel.channelID.isNotEmpty &&
            channel.conversationMsg.channelID == refreshChannel.channelID &&
            channel.conversationMsg.channelType == refreshChannel.channelType) {
          channel.conversationMsg.setWkChannel(refreshChannel);
          if (channel.isTop != refreshChannel.top) {
            channel.isTop = refreshChannel.top;
            _sortMsg(newList);
          } else {
            channel.isRefreshChannelInfo = true;
            channel.isResetCounter = true;
            newList[i] = channel;
            state = state.copyWith(channelList: newList);
          }
          _setAllCount();
          break;
        }
      }
    });

    /// 监听移除最近会话
    WKIM.shared.conversationManager
        .addOnDeleteMsgListener("channel_conversation", (s, b) {
      if (s.isNotEmpty) {
        final newList = [...state.channelList];
        for (var i = 0; i < newList.length; i++) {
          final channel = newList[i];
          if (channel.conversationMsg.channelID == s &&
              channel.conversationMsg.channelType == b) {
            bool isResetCount = channel.conversationMsg.unreadCount > 0;
            newList.removeAt(i);
            if (isResetCount) _setAllCount();
            break;
          }
        }
        state = state.copyWith(channelList: newList);
      }
    });

    /// 监听指令
    WKIM.shared.cmdManager.addOnCmdListener("channel_conversation_cmd",
        (wkCmd) async {
      if (wkCmd.cmd.isEmpty) return;
      switch (wkCmd.cmd) {
        case WKCMDKeys.wk_typing:
          final channelId = wkCmd.param['channel_id'];
          final channelType = wkCmd.param['channel_type'];
          final fromUID = wkCmd.param['from_uid'];
          final fromName = wkCmd.param['from_name'] as String;
          final channel = WKChannel(fromUID, WKChannelType.personal);
          channel.channelName = fromName;
          if (fromName.isEmpty) {
            final tempChannel = await WKIM.shared.channelManager
                .getChannel(fromUID, WKChannelType.personal);
            if (tempChannel != null) {
              channel.channelName = tempChannel.channelName;
              channel.channelRemark = tempChannel.channelRemark;
            }
          }
          if (fromUID == SpHelper.uid) return;
          final newList = [...state.channelList];
          for (var i = 0; i < newList.length; i++) {
            final newChannel = newList[i];
            if (newChannel.conversationMsg.channelID == channelId &&
                newChannel.conversationMsg.channelType == channelType) {
              newChannel.isResetTyping = true;
              newChannel.typingUserName = channel.channelRemark.isEmpty
                  ? channel.channelName
                  : channel.channelRemark;
              newChannel.typingStartTime =
                  DateTime.now().millisecondsSinceEpoch;
              newList[i] = newChannel;
              if (state.typingTimer == null) {
                _startTypingTimer();
              }
            }
          }
          state = state.copyWith(channelList: newList);
          break;
        case WKCMDKeys.wk_onlineStatus:
          if (wkCmd.param != null) {
            int deviceFlag = wkCmd.param['device_flag'];
            int online = wkCmd.param['online'];
            String uid = wkCmd.param['uid'];
            if (uid == SpHelper.uid && deviceFlag == 1) {
              SpHelper.setPcOnline(online);
            }
          }
          break;
        //TODO 处理更多指令
      }
    });

    /// 监听刷新消息
    WKIM.shared.messageManager.addOnRefreshMsgListener("channel_conversation",
        (msg) async {
      final newList = [...state.channelList];
      for (var i = 0; i < newList.length; i++) {
        final channel = newList[i];
        final msg1 = await channel.conversationMsg.getWkMsg();
        if (channel.conversationMsg.channelID == msg.channelID &&
            channel.conversationMsg.channelType == msg.channelType &&
            msg1 != null &&
            (msg1.clientSeq == msg.clientSeq ||
                msg1.clientMsgNO == msg.clientMsgNO)) {
          if (msg1.status != msg.status ||
              msg1.wkMsgExtra?.readedCount != msg.wkMsgExtra?.readedCount) {
            channel.isRefreshStatus = true;
          }
          if (msg1.wkMsgExtra?.revoke != msg.wkMsgExtra?.revoke) {
            channel.isResetContent = true;
          }
          msg1.status = msg.status;

          if (msg1.wkMsgExtra?.editedAt != msg.wkMsgExtra?.editedAt) {
            msg1.wkMsgExtra?.editedAt = msg.wkMsgExtra?.editedAt ?? 0;
            msg1.wkMsgExtra?.contentEdit = msg.wkMsgExtra?.contentEdit ?? "";
          }
          msg1.wkMsgExtra?.revoker = msg.wkMsgExtra?.revoker ?? "";
          msg1.wkMsgExtra?.revoke = msg.wkMsgExtra?.revoke ?? 0;
          msg1.wkMsgExtra?.readedCount = msg.wkMsgExtra?.readedCount ?? 0;
          msg1.wkMsgExtra?.unreadCount = msg.wkMsgExtra?.unreadCount ?? 0;
          msg1.messageID = msg.messageID;
          channel.conversationMsg.setWkMsg(msg1);
          newList[i] = channel;
          break;
        }
      }
      state = state.copyWith(channelList: newList);
    });

    /// 监听清除消息
    WKIM.shared.messageManager.addOnClearChannelMsgListener(
        "channel_conversation", (channelId, channelType) {
      final newList = [...state.channelList];
      for (var i = 0; i < newList.length; i++) {
        final channel = newList[i];
        if (channel.conversationMsg.channelID == channelId &&
            channel.conversationMsg.channelType == channelType) {
          channel.conversationMsg.setWkMsg(WKMsg());
          channel.isResetContent = true;
          newList[i] = channel;
          break;
        }
      }
      state = state.copyWith(channelList: newList);
    });

    /// 监听Reminder列表
    WKIM.shared.reminderManager.addOnNewReminderListener("channel_conversation",
        (list) async {
      if (list.isEmpty || state.channelList.isEmpty) {
        return;
      }
      final newList = [...state.channelList];
      for (final reader in list) {
        for (var i = 0; i < newList.length; i++) {
          final channel = newList[i];
          final msg = await channel.conversationMsg.getWkMsg();
          if (reader.done == 0 &&
              reader.messageID.isNotEmpty &&
              msg != null &&
              msg.messageID.isNotEmpty &&
              reader.messageID == msg.messageID) {
            channel.isResetReminders = true;
            newList[i] = channel;
            break;
          }
        }
      }
      state = state.copyWith(channelList: newList);
    });

    /// 监听消息列表变化
    WKIM.shared.conversationManager
        .addOnRefreshMsgListListener('channel_conversation', (list) async {
      if (list.isEmpty) {
        return;
      }

      if (list.length == 1) {
        _resetData(list[0], true);
        return;
      }

      if (state.channelList.isEmpty) {
        List<ChannelState> tempList = [];
        for (var i = 0; i < list.length; i++) {
          final entity = ChannelState(list[i]);
          tempList.add(entity);
        }
        _sortMsg(tempList);
        _setAllCount();
        return;
      }
      List<ChannelState> tempList = [];
      final newList = [...state.channelList];
      for (final conversationMsg in list) {
        bool isAdd = true;
        for (var i = 0; i < newList.length; i++) {
          final channel = newList[i];
          if (channel.conversationMsg.clientMsgNo ==
              conversationMsg.clientMsgNo) {
            isAdd = false;
            final msg1 = await channel.conversationMsg.getWkMsg();
            final msg2 = await conversationMsg.getWkMsg();
            if (channel.conversationMsg.lastMsgSeq !=
                    conversationMsg.lastMsgSeq ||
                channel.conversationMsg.lastMsgTimestamp !=
                    conversationMsg.lastMsgTimestamp ||
                (msg1 != null &&
                    msg2 != null &&
                    msg1.clientMsgNO == msg2.clientMsgNO)) {
              channel.isResetTyping = true;
              channel.typingUserName = '';
              channel.typingStartTime = 0;
              channel.isRefreshStatus = true;
            }
            if (channel.conversationMsg.unreadCount !=
                conversationMsg.unreadCount) {
              channel.isResetCounter = true;
            }

            if (channel.conversationMsg.lastMsgTimestamp !=
                conversationMsg.lastMsgTimestamp) {
              channel.isResetTime = true;
            }
            if (msg2 != null) {
              channel.conversationMsg.setWkMsg(msg2);
            }

            if (channel.conversationMsg.clientMsgNo ==
                conversationMsg.clientMsgNo) {
              channel.isResetContent = true;
            }
            channel.isResetReminders = true;
            channel.conversationMsg.lastMsgSeq = conversationMsg.lastMsgSeq;
            channel.conversationMsg.clientMsgNo = conversationMsg.clientMsgNo;
            channel.conversationMsg.lastMsgTimestamp =
                conversationMsg.lastMsgTimestamp;
            channel.conversationMsg.unreadCount = conversationMsg.unreadCount;
            channel.conversationMsg
                .setRemoteMsgExtra(conversationMsg.getRemoteMsgExtra());
            channel.conversationMsg.setReminderList(
                (await conversationMsg.getReminderList()) ?? []);
            channel.conversationMsg.localExtraMap = null;
            newList[i] = channel;
            state = state.copyWith(channelList: newList);
            _setAllCount();
            break;
          }
        }
        if (isAdd) {
          tempList.add(ChannelState(conversationMsg));
        }
      }
      if (tempList.isNotEmpty) {
        tempList.addAll(state.channelList);
        _sortMsg(tempList);
        _setAllCount();
      }
    });
  }

  Future<void> getUnreadMessageCount() async {
    final unreadMessageCount =
        await WKIM.shared.conversationManager.getAllUnreadCount();
    state = state.copyWith(unreadMessageCount: unreadMessageCount);
  }

  void _getDataList() async {
    Map<String, List<WKChannelMember>> memberMaps = {};
    List<ChannelState> tempList = [];
    List<WKUIConversationMsg> list =
        await WKIM.shared.conversationManager.getAll();

    for (var i = 0; i < list.length; i++) {
      // 这里可以根据需要对数据进行处理
      final entity = ChannelState(list[i]);
      tempList.add(entity);
      WKIM.shared.channelMemberManager
          .getMembers(list[i].channelID, list[i].channelType)
          .then((value) {
        if (value != null) {
          List<WKChannelMember> newEntries = [];
          newEntries.addAll(value);
          memberMaps[list[i].channelID] = newEntries;
        }
      });
    }

    _sortMsg(tempList);
    _setAllCount();
    state = state.copyWith(
      memberMaps: memberMaps,
    );
  }

  void _sortMsg(List<ChannelState> list) async {
    _groupMsg(list);
    list.sort((a, b) =>
        a.conversationMsg.lastMsgTimestamp -
        b.conversationMsg.lastMsgTimestamp);
    List<ChannelState> topList = [];
    List<ChannelState> normalList = [];
    for (var i = 0; i < list.length; i++) {
      final channel = await list[i].conversationMsg.getWkChannel();
      list[i].channel = channel;
      if (channel != null && channel.top == 1) {
        topList.add(list[i]);
      } else {
        normalList.add(list[i]);
      }
    }
    List<ChannelState> tempList = [];
    tempList.addAll(topList);
    tempList.addAll(normalList);
    state = state.copyWith(channelList: tempList);
  }

  void _groupMsg(List<ChannelState> list) {
    HashMap<String, List<ChannelState>> hashMap = HashMap();

    for (var i = 0; i < list.length; i++) {
      final channel = list[i];
      if (channel.conversationMsg.parentChannelID.isNotEmpty) {
        final key =
            "${channel.conversationMsg.parentChannelID}@${channel.conversationMsg.parentChannelType}";
        List<ChannelState>? tempList = hashMap[key];
        tempList ??= [];
        tempList.add(channel);
        hashMap[key] = tempList;
        list.removeAt(i);
        i--;
      }
    }

    if (hashMap.isNotEmpty) {
      hashMap.forEach((key, msgList) async {
        WKUIConversationMsg lastMsg = WKUIConversationMsg();
        ChannelState? lastConvMsg;
        if (msgList.isNotEmpty) {
          lastMsg.channelID = msgList[0].conversationMsg.parentChannelID;
          lastMsg.channelType = msgList[0].conversationMsg.parentChannelType;
          int unreadCount = 0;
          List<WKReminder> reminders = [];
          for (var i = 0; i < msgList.length; i++) {
            final msg = msgList[i].conversationMsg;
            if (msg.lastMsgSeq > lastMsg.lastMsgSeq) {
              lastMsg.lastMsgSeq = msg.lastMsgSeq;
            }
            if (msg.lastMsgTimestamp > lastMsg.lastMsgTimestamp) {
              lastMsg.lastMsgTimestamp = msg.lastMsgTimestamp;
              lastMsg.clientMsgNo = msg.clientMsgNo;
            }
            unreadCount += msg.unreadCount;
            final tempReminders = await msg.getReminderList();
            if (tempReminders != null) {
              reminders.addAll(tempReminders);
            }
          }

          lastMsg.unreadCount = unreadCount;
          lastMsg.setReminderList(reminders);

          lastConvMsg = ChannelState(lastMsg);
          lastConvMsg.childList = msgList;
        }

        if (lastConvMsg != null) {
          list.add(lastConvMsg);
        }
      });
    }
  }

  void _resetData(WKUIConversationMsg conversationMsg, bool isEnd) async {
    if (conversationMsg.isDeleted == 1 || conversationMsg.channelID == "0") {
      if (isEnd) {
        _sortMsg(state.channelList);
      }
      return;
    }
    if (conversationMsg.parentChannelID.isNotEmpty) {
      _resetChildData(conversationMsg, isEnd);
      return;
    }

    bool isAdd = true;
    int index = -1;
    bool isSort = false;
    final newList = [...state.channelList];
    if (newList.isNotEmpty) {
      for (var i = 0; i < newList.length; i++) {
        final channel = newList[i];
        if (channel.conversationMsg.channelID.isNotEmpty &&
            conversationMsg.channelID.isNotEmpty &&
            channel.conversationMsg.channelID == conversationMsg.channelID &&
            channel.conversationMsg.channelType ==
                conversationMsg.channelType) {
          if (!isEnd) {
            isAdd = false;
            newList[i].conversationMsg = conversationMsg;
            break;
          }
          final msg1 = await channel.conversationMsg.getWkMsg();
          final msg2 = await conversationMsg.getWkMsg();
          if (channel.conversationMsg.lastMsgSeq !=
                  conversationMsg.lastMsgSeq ||
              channel.conversationMsg.lastMsgTimestamp !=
                  conversationMsg.lastMsgTimestamp ||
              (msg1 != null &&
                  msg2 != null &&
                  msg1.clientMsgNO == msg2.clientMsgNO)) {
            isSort = true;
            channel.isResetTyping = true;
            channel.typingUserName = '';
            channel.typingStartTime = 0;
            channel.isRefreshStatus = true;
            index = i;
          }

          if (channel.conversationMsg.unreadCount !=
              conversationMsg.unreadCount) {
            channel.isResetCounter = true;
          }

          if (channel.conversationMsg.lastMsgTimestamp !=
              conversationMsg.lastMsgTimestamp) {
            channel.isResetTime = true;
          }
          if (msg2 != null) {
            channel.conversationMsg.setWkMsg(msg2);
          }

          if (channel.conversationMsg.clientMsgNo ==
              conversationMsg.clientMsgNo) {
            channel.isResetContent = true;
          }
          channel.isResetReminders = true;
          channel.conversationMsg.lastMsgSeq = conversationMsg.lastMsgSeq;
          channel.conversationMsg.clientMsgNo = conversationMsg.clientMsgNo;
          channel.conversationMsg.lastMsgTimestamp =
              conversationMsg.lastMsgTimestamp;
          channel.conversationMsg.unreadCount = conversationMsg.unreadCount;
          channel.conversationMsg
              .setRemoteMsgExtra(conversationMsg.getRemoteMsgExtra());
          channel.conversationMsg
              .setReminderList((await conversationMsg.getReminderList()) ?? []);
          channel.conversationMsg.localExtraMap = null;
          isAdd = false;
          newList[i] = channel;
          state = state.copyWith(channelList: newList);
          _setAllCount();
          break;
        }
      }
    }

    if (!isEnd) {
      state = state.copyWith(msgCount: state.msgCount + 1);
    }

    if (isAdd) {
      if (!isEnd) {
        newList.add(ChannelState(conversationMsg));
        state = state.copyWith(channelList: newList);
      } else {
        final insetIndex = await _getInsertIndex(conversationMsg);
        newList.insert(insetIndex, ChannelState(conversationMsg));
        state = state.copyWith(channelList: newList);
      }
      _setAllCount();
    }

    if (isEnd) {
      if (isSort && state.msgCount == 0) {
        final insetIndex = await _getInsertIndex(conversationMsg);
        if (insetIndex != index) {
          if (index != -1) {
            newList.removeAt(index);
          }
          newList.insert(insetIndex, ChannelState(conversationMsg));
          state = state.copyWith(channelList: newList);
        } else {
          if (state.msgCount > 0) {
            state = state.copyWith(msgCount: 0);
            _sortMsg(newList);
          }
        }
      }
    }
  }

  void _resetChildData(WKUIConversationMsg conversationMsg, bool isEnd) async {
    final newList = [...state.channelList];
    if (newList.isNotEmpty) {
      bool isAdd = true;
      for (var i = 0; i < newList.length; i++) {
        bool isBreak = false;
        final channel = newList[i];
        if (channel.childList.isNotEmpty) {
          for (var j = 0; j < channel.childList.length; j++) {
            final msg = channel.childList[j].conversationMsg;
            if (msg.channelID == conversationMsg.channelID) {
              msg.lastMsgTimestamp = conversationMsg.lastMsgTimestamp;
              msg.lastMsgSeq = conversationMsg.lastMsgSeq;
              msg.unreadCount = conversationMsg.unreadCount;
              msg.clientMsgNo = conversationMsg.clientMsgNo;
              isAdd = false;
              isBreak = true;
              channel.childList[j].conversationMsg = msg;
              newList[i] = channel;
              state = state.copyWith(channelList: newList);
            }
          }
        }
        if (isBreak) {
          break;
        }
      }
      if (isAdd) {
        WKUIConversationMsg msg = WKUIConversationMsg();
        msg.channelID = conversationMsg.parentChannelID;
        msg.channelType = conversationMsg.parentChannelType;
        msg.lastMsgTimestamp = conversationMsg.lastMsgTimestamp;
        msg.lastMsgSeq = conversationMsg.lastMsgSeq;
        msg.unreadCount = conversationMsg.unreadCount;
        msg.clientMsgNo = conversationMsg.clientMsgNo;
        msg.setReminderList((await conversationMsg.getReminderList()) ?? []);
        msg.setRemoteMsgExtra(conversationMsg.getRemoteMsgExtra());

        final newChannel = ChannelState(msg);
        newChannel.childList.add(ChannelState(conversationMsg));
        if (!isEnd) {
          newList.add(newChannel);
        } else {
          final insetIndex = await _getInsertIndex(conversationMsg);
          newList.insert(insetIndex, newChannel);
        }

        state = state.copyWith(channelList: newList);
      }
    }
  }

  void _setAllCount() {
    int allCount = 0;
    for (var i = 0; i < state.channelList.length; i++) {
      allCount += state.channelList[i].getUnreadCount;
    }

    state = state.copyWith(
      unreadMessageCount: allCount,
    );
  }

  Future<int> _getInsertIndex(WKUIConversationMsg conversationMsg) async {
    final channel = await conversationMsg.getWkChannel();
    if (channel != null && channel.top == 1) {
      return 0;
    }
    return _getTopChatCount();
  }

  int _getTopChatCount() {
    int count = 0;
    for (var i = 0; i < state.channelList.length; i++) {
      final channel = state.channelList[i];
      if (channel.isTop == 1) {
        count++;
      }
    }
    return count;
  }

  void _startTypingTimer() {
    final newList = [...state.channelList];
    bool isCancel = true;
    final timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      for (var i = 0; i < newList.length; i++) {
        final channel = newList[i];
        final startTime = channel.typingStartTime;
        if (startTime != null && startTime > 0) {
          if (DateTime.now().millisecondsSinceEpoch - startTime > 8000) {
            channel.typingUserName = '';
            channel.typingStartTime = 0;
            channel.isResetTyping = true;
            newList[i] = channel;
            state = state.copyWith(channelList: newList);
          }
          isCancel = false;
        }
      }
    });

    state = state.copyWith(
      typingTimer: timer,
    );

    if (state.typingTimer != null && isCancel) {
      state.typingTimer!.cancel();
      state = state.copyWith(
        typingTimer: null,
      );
    }
  }
}
