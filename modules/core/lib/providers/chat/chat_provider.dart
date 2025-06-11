import 'dart:async';

import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:core/providers/chat/chat_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stream_ui/stream_ui.dart';
import 'package:wukongimfluttersdk/entity/channel.dart';
import 'package:wukongimfluttersdk/entity/channel_member.dart';
import 'package:wukongimfluttersdk/entity/cmd.dart';
import 'package:wukongimfluttersdk/entity/msg.dart';
import 'package:wukongimfluttersdk/entity/reminder.dart';
import 'package:wukongimfluttersdk/model/wk_message_content.dart';
import 'package:wukongimfluttersdk/type/const.dart';
import 'package:wukongimfluttersdk/wkim.dart';

part 'chat_provider.g.dart';

@riverpod
class ChatController extends _$ChatController {
  EndpointManager get _endpointManager =>
      ref.read(endpointManagerProvider.notifier);
  IMService get _imService => ref.read(iMServiceProvider.notifier);

  @override
  ChatProviderState build(
      {required String channelID,
      required int channelType,
      List<WKMessageContent>? msgContentList,
      int? lastPreviewMsgOrderSeq,
      int? keepOffsetY,
      int? redDot,
      int? tipsOrderSeq,
      int? unreadStartMsgOrderSeq,
      int? aroundMsgSeq}) {
    _initParams();
    _initListener();
    _initData();
    Future.microtask(() {
      _startTimer();
    });
    return ChatProviderState(
        channelID: channelID,
        channelType: channelType,
        channel: WKChannel(channelID, channelType),
        lastPreviewMsgOrderSeq: lastPreviewMsgOrderSeq ?? 0,
        keepOffsetY: keepOffsetY ?? 0,
        redDot: redDot ?? 0,
        tipsOrderSeq: tipsOrderSeq ?? 0,
        unreadStartMsgOrderSeq: unreadStartMsgOrderSeq ?? 0,
        aroundMsgSeq: aroundMsgSeq ?? 0,
        msgContentList: msgContentList);
  }

  void _initParams() async {
    final maxMsgOrderSeq = await WKIM.shared.messageManager
        .getMessageOrderSeq(0, channelID, channelType);
    final maxSeq = await WKIM.shared.messageManager
        .getMaxMessageSeq(channelID, channelType);
    state = state.copyWith(maxMsgOrderSeq: maxMsgOrderSeq, maxMsgSeq: maxSeq);
    _resetHideChannelAllPinnedMessage();
    // 判断是否含有带转发的消息
    if (!Utils.isEmptyOrNull(state.msgContentList)) {
      List<WKChannel> list = [];
      WKChannel? channel =
          await WKIM.shared.channelManager.getChannel(channelID, channelType);
      if (channel != null) {
        list.add(channel);
        //TODO 转发消息
      }
    }
  }

  void _initListener() {
    //监听频道改变通知
    WKIM.shared.channelManager.addOnRefreshListener(channelID, (channel) {
      if (channel.channelID == channelID &&
          channel.channelType == channelType) {
        _setShowName(channel);
        _setAvatar(channel);
        if (channel.channelType != WKChannelType.personal) {
          if (channel.remoteExtraMap != null) {
            final memberCount =
                channel.remoteExtraMap[WKChannelCustomExtras.memberCount]
                        as int? ??
                    0;
            final onlineCount =
                channel.remoteExtraMap[WKChannelCustomExtras.onlineCount]
                        as int? ??
                    0;
            state = state.copyWith(
              memberCount: memberCount,
              onlineCount: onlineCount,
            );
          }
        } else {
          final newList = [...state.dataList];
          for (int i = 0; i < newList.length; i++) {
            final item = newList[i];
            if (Utils.isEmptyOrNull(item.wkMsg?.fromUID)) continue;
            bool isRefresh = false;
            if (item.wkMsg?.fromUID == channel.channelID &&
                channel.channelType == WKChannelType.personal) {
              item.wkMsg?.setFrom(channel);
              isRefresh = true;
            }
            final memberOfFrom = item.wkMsg?.getMemberOfFrom();
            if (memberOfFrom != null &&
                memberOfFrom.memberUID == channel.channelID &&
                channel.channelType == WKChannelType.personal) {
              memberOfFrom.memberRemark = channel.channelRemark;
              memberOfFrom.memberName = channel.channelName;
              memberOfFrom.memberAvatar = channel.avatar;
              memberOfFrom.memberAvatarCacheKey = channel.avatarCacheKey;
              isRefresh = true;
            }

            if (item.wkMsg?.messageContent != null &&
                !Utils.isEmptyOrNull(item.wkMsg?.messageContent?.entities)) {
              final entities = item.wkMsg?.messageContent?.entities;
              for (int j = 0; j < entities!.length; j++) {
                final entity = entities[j];
                if (entity.type == WKChatContentSpanType.mention &&
                    entity.value.isNotEmpty &&
                    entity.value == channel.channelID) {
                  isRefresh = true;
                  item.formatSpans(item.wkMsg!);
                  break;
                }
              }
            }

            if (isRefresh) {
              item.isRefreshAvatarAndName = true;
              state = state.copyWith(dataList: newList);
              break;
            }
          }
        }
      }
    });

    /// 监听频道成员改变通知
    WKIM.shared.channelMemberManager.addOnRefreshMemberListener(channelID,
        (channelMember, isEnd) {
      if (channelMember.channelID == channelID &&
          channelMember.channelType == channelType) {
        if (channelType == WKChannelType.personal) {
          String name = channelMember.memberRemark;
          if (name.isEmpty) {
            name = channelMember.memberName;
          }
          state = state.copyWith(showName: name);
        } else {
          final newList = [...state.dataList];
          for (int i = 0; i < newList.length; i++) {
            final item = newList[i];
            final memberOfFrom = item.wkMsg?.getMemberOfFrom();
            if (memberOfFrom != null &&
                memberOfFrom.memberUID.isNotEmpty &&
                memberOfFrom.memberUID == channelMember.memberUID) {
              memberOfFrom.memberRemark = channelMember.memberRemark;
              memberOfFrom.memberName = channelMember.memberName;
              memberOfFrom.memberAvatar = channelMember.memberAvatar;
              item.isRefreshAvatarAndName = true;
              state = state.copyWith(dataList: newList);
            }
          }
        }
      }

      if (isEnd) {
        _checkLoginUserInGroupStatus();
      }
    });

    //监听移除频道成员
    WKIM.shared.channelMemberManager.addOnDeleteMemberListener(channelID,
        (list) async {
      final member = list.firstOrNull;
      if (member != null &&
          member.channelID.isNotEmpty &&
          member.channelID == channelID) {
        if (state.groupType == WKGroupType.normalGroup) {
          final members = await WKIM.shared.channelMemberManager
              .getMembers(channelID, channelType);
          if (members != null) {
            state = state.copyWith(memberCount: members.length);
          }
        }
        _checkLoginUserInGroupStatus();
      }
    });

    //监听添加频道成员
    WKIM.shared.channelMemberManager.addOnNewMemberListener(channelID,
        (list) async {
      final member = list.firstOrNull;
      if (member != null &&
          member.channelID.isNotEmpty &&
          member.channelID == channelID) {
        if (state.groupType == WKGroupType.normalGroup) {
          final members = await WKIM.shared.channelMemberManager
              .getMembers(channelID, channelType);
          if (members != null) {
            state = state.copyWith(memberCount: members.length);
          }
        }
        _checkLoginUserInGroupStatus();
      }
    });

    // 监听删除消息
    WKIM.shared.messageManager.addOnDeleteMsgListener(channelID,
        (clientMsgNo) async {
      final msg =
          await WKIM.shared.messageManager.getWithClientMsgNo(clientMsgNo);
      if (msg != null) {
        _removeMsg(msg);
      }
    });

    // 命令消息监听
    WKIM.shared.cmdManager.addOnCmdListener(channelID, (wkCMD) {
      if (wkCMD.cmd.isEmpty) return;
      // 监听正在输入
      switch (wkCMD.cmd) {
        case WKCMDKeys.wk_typing:
          _typing(wkCMD);
          break;
        case WKCMDKeys.wk_unreadClear:
          _unreadClear(wkCMD);
          break;
      }
    });

    // 监听消息刷新
    WKIM.shared.messageManager.addOnRefreshMsgListener(channelID, (wkMsg){
      if (wkMsg.wkMsgExtra?.isMutualDeleted == 1){
        _removeMsg(wkMsg);
        return;
      }
      _refreshMsg(wkMsg);
    });

    // 监听发送消息返回
    WKIM.shared.messageManager.addOnMsgInsertedListener(_sendMsgInserted);

    //监听新消息
    WKIM.shared.messageManager.addOnNewMsgListener(channelID, _receivedMessages);

    // 监听清空聊天记录
    WKIM.shared.messageManager.addOnClearChannelMsgListener(channelID, _clearMessages);
    
    WKIM.shared.reminderManager.addOnNewReminderListener(channelID, _resetReminder);

    _endpointManager.setMethodWithCategory(channelID, EndpointCategory.wkExitChat, (object){
      return null;
    });
  }

  void _initData() async {
    WKIM.shared.channelManager.fetchChannelInfo(channelID, channelType);
    Apis.syncExtraMsg(channelID: channelID, channelType: channelType);
    _getChannelState();
    WKChannel? channel =
        await WKIM.shared.channelManager.getChannel(channelID, channelType);
    state = state.copyWith(
      channel: channel,
    );
    if (channel != null) {
      _setShowName(channel);
      _setAvatar(channel);
    }

    if (channelType == WKChannelType.group) {
      if (state.groupType == WKGroupType.normalGroup) {
        final success = await Apis.syncGroupMembers(groupNo: channelID);
        if (success) {
          final member = await WKIM.shared.channelMemberManager
              .getMember(channelID, channelType, SpHelper.uid);
          _hideOrShowRightView(member == null || member.isDeleted == 1);
          _showOrHideForbiddenView();
        }
      } else {
        Apis.getUserInfo(uid: SpHelper.uid, groupNo: channelID);
      }

      if (channel != null) {
        final members = await WKIM.shared.channelMemberManager
            .getMembers(channelID, channelType);
        if (members != null) {
          state = state.copyWith(memberCount: members.length);
        }

        if (channel.forbidden == 1) {
          _showOrHideForbiddenView();
        }
        if (channel.status == 0) {
          _showBan();
        } else {
          _hideBan();
        }
      }

      final member = await WKIM.shared.channelMemberManager
          .getMember(channelID, channelType, SpHelper.uid);
      _hideOrShowRightView(member == null || member.isDeleted == 1);
      _showOrHideForbiddenView();
    } else {
      _hideOrShowRightView(true);
    }

    List<WKReminder> allReminders = await WKIM.shared.reminderManager
        .getWithChannel(channelID, channelType, 0);
    List<WKReminder> reminderList = [];
    List<WKReminder> groupApproveList = [];
    for (var reminder in allReminders) {
      bool isPublisher =
          reminder.publisher.isNotEmpty && reminder.publisher == SpHelper.uid;
      if (reminder.type == WKMentionType.wkReminderTypeMentionMe &&
          !isPublisher &&
          reminder.done == 0) {
        reminderList.add(reminder);
      }
      if (reminder.type == WKMentionType.wkApplyJoinGroupApprove &&
          reminder.done == 0) {
        groupApproveList.add(reminder);
      }
    }

    state = state.copyWith(
        reminderList: reminderList, groupApproveList: groupApproveList);

    // 获取聊天数据
    int unreadStartMsgOrderSeq = state.unreadStartMsgOrderSeq;
    bool isScrollToEnd =
        unreadStartMsgOrderSeq == 0 && state.lastPreviewMsgOrderSeq == 0;
    bool isCanLoadMore = false;
    bool isUpdateRedDot = false;
    int aroundMsgSeq = 0;
    if (unreadStartMsgOrderSeq != 0) {
      aroundMsgSeq = unreadStartMsgOrderSeq;
      isCanLoadMore = true;
    }
    isUpdateRedDot = unreadStartMsgOrderSeq > 0;
    if (lastPreviewMsgOrderSeq != 0) {
      aroundMsgSeq = state.lastPreviewMsgOrderSeq;
    }
    if (tipsOrderSeq != 0) {
      aroundMsgSeq = state.tipsOrderSeq;
      isCanLoadMore = true;
    }
    if (aroundMsgSeq == 0) {
      aroundMsgSeq = state.aroundMsgSeq;
    }
    state = state.copyWith(
        isCanLoadMore: isCanLoadMore, isUpdateRedDot: isUpdateRedDot);
    _getData(lastPreviewMsgOrderSeq == 0 ? 0 : 1, unreadStartMsgOrderSeq > 0,
        aroundMsgSeq, isScrollToEnd);
  }

  // 获取聊天记录
  void _getData(int pullMode, bool isSetNewData, int aroundMsgOrderSeq,
      bool isScrollToEnd) {
    bool contain = false;
    int oldestOrderSeq;
    if (pullMode == 1) {
      oldestOrderSeq = state.getEndMsgOrderSeq();
    } else {
      oldestOrderSeq = state.getFirstMsgOrderSeq();
    }
    if (state.isSyncLastMsg) {
      oldestOrderSeq = 0;
    }
    //定位消息
    if (lastPreviewMsgOrderSeq != 0) {
      contain = true;
      oldestOrderSeq = state.lastPreviewMsgOrderSeq;
    }
    if (unreadStartMsgOrderSeq != 0) contain = true;
    WKIM.shared.messageManager.getOrSyncHistoryMessages(
        channelID,
        channelType,
        oldestOrderSeq,
        contain,
        pullMode,
        state.limit,
        aroundMsgOrderSeq, (list) async {
      if (state.isShowPinnedView) {
        _endpointManager.invoke("is_syncing_message", 0);
      }
      bool isCanRefresh = true;
      bool isCanLoadMore = true;
      if (pullMode == 0) {
        if (list.isEmpty) {
          isCanRefresh = false;
        }
      } else {
        if (list.isEmpty) {
          isCanLoadMore = false;
        }
      }
      state.copyWith(
          isCanRefresh: isCanRefresh,
          isCanLoadMore: isCanLoadMore,
          isSyncLastMsg: false);
      // bool isSyncLastMsg = false;
      List<WKMsg> tempList = [];

      for (var msg in list) {
        if (!state.isExist(msg.clientMsgNO, msg.messageID)) {
          tempList.add(msg);
        }
      }

      await _showData(tempList, pullMode, isSetNewData, isScrollToEnd);

      final newList = [...state.dataList];
      for (var i = 0; i < newList.length; i++) {
        final item = newList[i];
        if (item.wkMsg != null &&
            item.wkMsg?.contentType == WKContentType.loading) {
          newList.removeAt(i);
          break;
        }
      }

      state.copyWith(
          isMoreLoading: false, isRefreshLoading: false, dataList: newList);
    }, () {
      if (state.isShowPinnedView &&
          !state.isRefreshLoading &&
          !state.isMoreLoading &&
          !state.isSyncLastMsg) {
        _endpointManager.invoke('is_syncing_message', 1);
      } else {
        if (state.dataList.isEmpty) {
          WKMsg wkMsg = WKMsg();
          wkMsg.contentType = WKContentType.loading;
          state = state.copyWith(dataList: [WKUIChatMsgItem(wkMsg: wkMsg)]);
        }
      }
    });
  }

  void _getChannelState() async {
    final channelState = await Apis.getChannelState(
        channelId: channelID, channelType: channelType);
    if (channelState != null) {
      if (channelType == WKChannelType.personal) return;
      if (channelType == WKChannelType.group && channelState.onlineCount > 0) {
        state = state.copyWith(
          onlineCount: channelState.onlineCount,
        );
      }

      if (channelState.callInfo == null ||
          Utils.isEmptyOrNull(channelState.callInfo?.callingParticipants)) {
        state = state.copyWith(
          isShowCallingView: false,
        );
        final firstData = state.dataList.firstOrNull;
        final newList = [...state.dataList];
        if (firstData != null &&
            firstData.wkMsg?.contentType == WKContentType.spanEmptyView) {
          newList.removeAt(0);
        } else {
          newList[0].wkMsg?.messageSeq = _getTopPinViewHeight();
        }
        state = state.copyWith(dataList: newList);
      } else {
        //TODO 展示呼叫
      }
    }
    final imService = ref.watch(iMServiceProvider);

    bool isAdd = true;
    for (var i = 0; i < imService.channelStatus.length; i++) {
      final channel = imService.channelStatus[i];
      if (channel.channelId == channelID) {
        final newlChannel =
            channel.copyWith(calling: state.isShowCallingView ? 1 : 0);
        isAdd = false;
        _imService.updateChanneStatus(i, newlChannel);
        break;
      }
    }

    if (isAdd) {
      final channelState = ChannelSimpleState(
          channelId: channelID,
          channelType: channelType,
          calling: state.isShowCallingView ? 1 : 0);
      _imService.addChannelStatus(channelState);
    }
    _endpointManager.invoke("refresh_conversation_calling", null);
  }

  void _resetHideChannelAllPinnedMessage() {
    final hideChannelAllPinnedMessage = SpHelper.getHideChannelAllPinnedMessage(
        "${state.channelID}_$channelType");
    state = state.copyWith(
        hideChannelAllPinnedMessage: hideChannelAllPinnedMessage ?? 0);
  }

  void _setShowName(WKChannel channel) {
    final context = Global.context;
    if (context == null) {
      return;
    }
    if (channel.channelID == WKSystemAccount.systemTeam) {
      state = state.copyWith(showName: context.t.msg.systemTeam);
    } else if (channel.channelID == WKSystemAccount.systemFileHelper) {
      state = state.copyWith(showName: context.t.msg.systemFileHelper);
    } else {
      state = state.copyWith(
          showName: channel.channelRemark.isEmpty
              ? channel.channelName
              : channel.channelRemark);
    }
  }

  void _setAvatar(WKChannel channel) async {
    String avatarCacheKey = channel.avatarCacheKey;
    String url;
    if (channel.avatar.isNotEmpty && channel.avatar.contains("/")) {
      url = Apis.getShowAvatar(channelID, channelType);
    } else {
      url = await ViewHelper.getAvatarUrl(channelID, channelType);
    }
    state = state.copyWith(avatar: "$url?cacheKey=$avatarCacheKey");
    bool isShowSpot = false;
    String lastOfflineTime = "";
    if (channel.online == 1) {
      isShowSpot = true;
      lastOfflineTime = "";
    } else {
      isShowSpot = false;
      lastOfflineTime = WKTimeUtils.getOnlineTime(channel.lastOffline);
    }

    state = state.copyWith(
        isShowSpot: isShowSpot, lastOfflineTime: lastOfflineTime);
  }

  void _checkLoginUserInGroupStatus() async {
    if (channelType == WKChannelType.group) {
      final member = await WKIM.shared.channelMemberManager
          .getMember(channelID, channelType, SpHelper.uid);
      _hideOrShowRightView(member == null || member.isDeleted == 0);
    }
  }

  void _removeMsg(WKMsg msg) {
    int tempIndex = 0;
    final newList = [...state.dataList];
    for (var i = 0; i < newList.length; i++) {
      final wkMsg = newList[i].wkMsg;
      if (wkMsg != null &&
          wkMsg.clientSeq == msg.clientSeq &&
          wkMsg.clientMsgNO == wkMsg.clientMsgNO) {
        tempIndex = i;
        if (i - 1 >= 0) {
          if (i + 1 <= newList.length - 1) {
            newList[i - 1].nextMsg = newList[i + 1].wkMsg;
          } else {
            newList[i - 1].nextMsg = null;
          }
        }
        if (i + 1 <= newList.length - 1) {
          if (i - 1 >= 0) {
            newList[i + 1].previousMsg = newList[i - 1].wkMsg;
          } else {
            newList[i + 1].previousMsg = null;
          }
        }
        newList.removeAt(i);
        break;
      }
    }

    int timeIndex = tempIndex - 1;
    if (timeIndex < 0) return;

    if (newList.length >= timeIndex) {
      if (newList[timeIndex].wkMsg?.contentType ==
          WKContentType.msgPromptTime) {
        if (timeIndex - 1 >= 0) {
          if (timeIndex + 1 <= newList.length - 1) {
            newList[timeIndex - 1].nextMsg = newList[timeIndex + 1].wkMsg;
          } else {
            newList[timeIndex - 1].nextMsg = null;
          }
        }
        if (timeIndex + 1 <= newList.length - 1) {
          if (timeIndex - 1 >= 0) {
            newList[timeIndex + 1].previousMsg = newList[timeIndex - 1].wkMsg;
          } else {
            newList[timeIndex + 1].previousMsg = null;
          }
        }
        newList.removeAt(timeIndex);
      }
    }
  }

  // TODO
  void _refreshMsg(WKMsg wkMsg){

  }

  // TODO
  void _sendMsgInserted(WKMsg wkMsg){

  }

  // TODO
  void _receivedMessages(List<WKMsg> list){

  }

  // TODO
  void _clearMessages(String channelID, int channelType){

  }

  // TODO
  void _resetReminder(List<WKReminder> list){
    
  }

  void _typing(WKCMD wkCMD) async {
    if (state.redDot > 0) return;
    final cmdChannelId = wkCMD.param['channel_id'] as String;
    final cmdChannelType = wkCMD.param['channel_type'] as int;
    final fromUID = wkCMD.param['from_uid'] as String;
    final fromName = wkCMD.param['from_name'] as String;

    int isRobot;
    WKChannel? channel = await WKIM.shared.channelManager
        .getChannel(fromUID, WKChannelType.personal);
    if (channel == null) {
      channel = WKChannel(fromUID, WKChannelType.personal);
      channel.channelName = fromName;
    }
    isRobot = channel.robot;
    if (cmdChannelId == channelID &&
        cmdChannelType == channelType &&
        fromUID == SpHelper.uid) {
      WKChannelMember? mChannelMember;
      if (cmdChannelType == WKChannelType.group && isRobot == 0) {
        // 没在群内的cmd不显示
        mChannelMember = await WKIM.shared.channelMemberManager
            .getMember(channelID, channelType, fromUID);
        if (mChannelMember == null && mChannelMember?.isDeleted == 1) return;
      }

      final newList = [...state.dataList];
      final itemCount = state.getItemCount();
      if (itemCount > 0 &&
          newList[itemCount - 1].wkMsg?.contentType == WKContentType.typing) {
        final i = itemCount - 1;
        newList[i].wkMsg?.setFrom(channel);
        newList[i].wkMsg?.fromUID = fromUID;
        if (mChannelMember != null) {
          newList[i].wkMsg?.setMemberOfFrom(mChannelMember);
        }

        state = state.copyWith(dataList: newList);
      } else {
        _addTimeMsg(DateTime.now());
        int index = state.dataList.length - 1;
        if (state.lastMsgIsTyping()) index--;
        if (index < 0) index = 0;

        final newList = [...state.dataList];

        WKUIChatMsgItem msgItemEntity = WKUIChatMsgItem();
        msgItemEntity.wkMsg?.channelType = channelType;
        msgItemEntity.wkMsg?.channelID = channelID;
        msgItemEntity.wkMsg?.contentType = WKContentType.typing;
        msgItemEntity.wkMsg?.setFrom(channel);
        msgItemEntity.showNickName = state.showNickname;
        msgItemEntity.wkMsg?.fromUID = channel.channelID;
        WKChannelMember member = WKChannelMember();
        member.memberUID = channel.channelID;
        member.channelID = channelID;
        member.channelType = channelType;
        member.memberName = channel.channelName;
        member.memberRemark = channel.channelRemark;
        msgItemEntity.wkMsg?.setMemberOfFrom(member);
        msgItemEntity.previousMsg = state.getLastMsg();

        newList.add(msgItemEntity);
        newList[index].nextMsg = msgItemEntity.wkMsg;

        // int type = newList[index].wkMsg?.contentType ?? WKContentType.unknownMsg;
        // if (WKContentType.isLocalMsg(type) || WKContentType.isSystemMsg(type)) {
        //   notifyItemChanged(index);
        // } else {
        //   notifyBackground(index);
        // }

        state = state.copyWith(dataList: newList);

        if (!state.isShowHistory && !state.isCanLoadMore) {
          _scrollToEnd();
        }
      }
    }
  }

  void _unreadClear(WKCMD wkCMD) async {
    final cmdChannelId = wkCMD.param['channel_id'] as String;
    final cmdChannelType = wkCMD.param['channel_type'] as int;
    final unreadCount = wkCMD.param['unread'] as int;
    if (channelID == cmdChannelId && cmdChannelType == channelType) {
      if (unreadCount < state.redDot) {
        state = state.copyWith(redDot: unreadCount);
      }
    }
  }

  void _addTimeMsg(DateTime newMsgTime) {
    int lastMsgTime = state.getLastTimeMsg();
    WKMsg? msg;
    // 判断是否是同一天
    if (newMsgTime
        .isSameDay(DateTime.fromMillisecondsSinceEpoch(lastMsgTime))) {
      final newList = [...state.dataList];
      // int lastIndex = newList.length - 1;
      WKUIChatMsgItem wkuiChatMsgItem = WKUIChatMsgItem();
      msg = WKMsg();
      wkuiChatMsgItem.wkMsg = msg;
      wkuiChatMsgItem.isChoose =
          (state.getItemCount() > 0 && newList.first.isChoose);
      wkuiChatMsgItem.wkMsg?.contentType = WKContentType.msgPromptTime;
      wkuiChatMsgItem.wkMsg?.content =
          WKTimeUtils.getShowDate(newMsgTime.millisecondsSinceEpoch);
      wkuiChatMsgItem.wkMsg?.timestamp = DateTime.now().millisecondsSinceEpoch;
      newList.add(wkuiChatMsgItem);

      state = state.copyWith(dataList: newList);
    }
  }

  int _getTopPinViewHeight() {
    int totalHeight = 0;
    if (state.isShowCallingView) {
      totalHeight += state.callingViewHeight;
    }
    if (state.isShowPinnedView) {
      totalHeight += state.pinnedViewHeight;
    }
    return totalHeight;
  }

  /// 显示数据
  ///
  /// @param msgList       数据源
  /// @param pullMode      拉取模式 0:向下拉取 1:向上拉取
  /// @param isSetNewData  是否重新显示新数据
  /// @param isScrollToEnd 是否滚动到底部
  _showData(List<WKMsg> msgList, int pullMode, bool isSetNewData,
      bool isScrollToEnd) async {
    bool isAddEmptyView = msgList.isNotEmpty && msgList.length < state.limit;
    if (isAddEmptyView) {
      WKMsg msg = WKMsg();
      msg.timestamp = 0;
      msg.contentType = WKContentType.emptyView;
      msgList.insert(0, msg);
    }

    if ((state.isShowCallingView || state.isShowPinnedView) && pullMode == 0) {
      final newList = [...state.dataList];
      for (int i = 0; i < newList.length; i++) {
        if (newList[i].wkMsg != null &&
            newList[i].wkMsg?.contentType == WKContentType.spanEmptyView) {
          newList.removeAt(i);
          break;
        }
      }
      msgList.insert(0, _getSpanEmptyMsg());
    }

    List<WKUIChatMsgItem> list = [];
    int preMsgTime = state.getLastTimeMsg();
    for (var i = 0; i < msgList.length; i++) {
      final item = msgList[i];
      if (WKTimeUtils.isSameDay(preMsgTime, item.timestamp) &&
          item.contentType != WKContentType.emptyView &&
          item.contentType != WKContentType.spanEmptyView) {
        //显示聊天时间
        WKUIChatMsgItem msgItem = WKUIChatMsgItem(wkMsg: WKMsg());
        msgItem.wkMsg?.contentType = WKContentType.msgPromptTime;
        msgItem.wkMsg?.content = WKTimeUtils.getShowDate(item.timestamp);
        msgItem.wkMsg?.timestamp = item.timestamp;
        list.add(msgItem);
      }
      preMsgTime = item.timestamp;
      WKUIChatMsgItem uiMsg = WKMsgUtils.msg2UIMsg(item, state.memberCount,
          state.showNickname, state.isShowChooseItem());
      if (item.wkMsgExtra != null) {
        if (state.hideChannelAllPinnedMessage == 1) {
          uiMsg.isPinned = 0;
        } else {
          uiMsg.isPinned = item.wkMsgExtra?.isPinned ?? 0;
        }
      }
      list.add(uiMsg);
    }

    if (isSetNewData) {
      if (state.unreadStartMsgOrderSeq != 0) {
        for (var i = 0; i < list.length; i++) {
          final item = list[i];
          if (item.wkMsg != null &&
              item.wkMsg?.orderSeq == state.unreadStartMsgOrderSeq) {
            // 插入一条本地的新消息分割线
            WKUIChatMsgItem msgItem = WKUIChatMsgItem(wkMsg: WKMsg());
            msgItem.wkMsg?.contentType = WKContentType.msgPromptNewMsg;
            int index = i;
            if (index <= 0) index = 0;
            if (index > list.length - 1) index = list.length - 1;
            if (index >= -1) {
              _scrollToPositionWithOffset(index, 50.w);
            } else {
              _scrollToPosition(index);
            }
            state = state.copyWith(unreadStartMsgOrderSeq: 0);
            break;
          }
        }
      }
      _resetData(list);
      state = state.copyWith(dataList: list);
    } else {
      _resetData(list);
      final newList = [...state.dataList];
      if (pullMode == 1) {
        if (state.dataList.isNotEmpty && list.isNotEmpty) {
          list[0].previousMsg = state.dataList[state.dataList.length - 1].wkMsg;
          newList.addAll(list);
        }
      } else {
        if (list.isNotEmpty && state.dataList.isNotEmpty) {
          list[list.length - 1].nextMsg = state.dataList[0].wkMsg;
        }
        newList.insertAll(0, list);
      }

      state = state.copyWith(dataList: newList);
    }

    if (state.tipsOrderSeq != 0 || state.lastPreviewMsgOrderSeq != 0) {
      final newList = [...state.dataList];
      if (state.tipsOrderSeq != 0) {
        for (var i = 0; i < newList.length; i++) {
          if (newList[i].wkMsg?.orderSeq == tipsOrderSeq) {
            _scrollToPositionWithOffset(i, 50.w);
            newList[i].isShowTips = true;
            state = state.copyWith(dataList: newList, tipsOrderSeq: 0);
            break;
          }
        }
      }
      if (state.lastPreviewMsgOrderSeq != 0) {
        for (var i = 0; i < newList.length; i++) {
          if (newList[i].wkMsg?.orderSeq == lastPreviewMsgOrderSeq) {
            _scrollToPositionWithOffset(i, state.keepOffsetY.toDouble());
            break;
          }
        }
      }
    } else {
      if (isScrollToEnd) {
        _scrollToEnd();
      }
    }

    if (state.isCanLoadMore &&
        state.dataList.isNotEmpty &&
        state.dataList[state.dataList.length - 1].wkMsg != null) {
      int maxSeq = await WKIM.shared.messageManager
          .getMaxMessageSeq(channelID, channelType);
      if (maxSeq ==
          state.dataList[state.dataList.length - 1].wkMsg?.messageSeq) {
        state = state.copyWith(isCanLoadMore: false);
      }
    }

    Future.delayed(500.milliseconds, () async {
      if (state.isUpdateRedDot) {
        final success = await _imService.updateConversationUnreadCount(
            channelID, channelType, 0);
        if (success) {
          state = state.copyWith(isUpdateRedDot: false);
        }
      }
    });
  }

  _resetData(List<WKUIChatMsgItem> list) {
    for (var i = 0; i < list.length; i++) {
      int previousIndex = i - 1;
      int nextIndex = i + 1;
      if (previousIndex >= 0) {
        list[i].previousMsg = list[previousIndex].wkMsg;
      }
      if (nextIndex <= list.length - 1) {
        list[i].nextMsg = list[nextIndex].wkMsg;
      }
    }
  }

  WKMsg _getSpanEmptyMsg() {
    WKMsg msg = new WKMsg();
    msg.timestamp = 0;
    // 为了方便直接用该字段替换
    msg.messageSeq = _getTopPinViewHeight();
    msg.contentType = WKContentType.spanEmptyView;
    return msg;
  }

  // TODO
  void _scrollToPositionWithOffset(int index, double offset) {}

  // TODO
  void _scrollToPosition(int index) {}

  //TODO
  void _hideOrShowRightView(bool isInGroup) {}

  //TODO
  void _showOrHideForbiddenView() {}

  //TODO
  void _showBan() {}

  //TODO
  void _hideBan() {}

  //TODO
  void _scrollToEnd() {}

  void _startTimer() {
    try {
      final timer = Timer.periodic(const Duration(seconds: 3), (_) {
        if (state.readMsgIds.isEmpty || !state.isUploadReadMsg) return;

        final msgIds = List<String>.from(state.readMsgIds);
        _endpointManager.invoke(
            "read_msg",
            ReadMsgMenu(
                channelType: channelType,
                channelID: channelID,
                msgIds: msgIds));
        state = state.copyWith(readMsgIds: []);
      });

      state = state.copyWith(timer: timer);
    } catch (e) {
      AppLogger.e("_startTimer 发送错误", e);
    }
  }
}
