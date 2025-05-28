import 'package:stream_ui/stream_ui.dart';
import 'package:wukongimfluttersdk/entity/msg.dart';
import 'package:wukongimfluttersdk/entity/reminder.dart';
import 'package:wukongimfluttersdk/model/wk_message_content.dart';

class ChatProviderState {
  final String channelID;
  final int channelType;
  int groupType = WKGroupType.normalGroup;
  int keepOffsetY = 0; // 上次浏览消息的偏移量
  int redDot = 0; // 未读消息数量
  int lastPreviewMsgOrderSeq = 0; //上次浏览消息
  int unreadStartMsgOrderSeq = 0; //新消息开始位置
  int tipsOrderSeq = 0; //需要强提示的msg
  int aroundMsgSeq = 9;
  int count = 0;
  int lastVisibleMsgSeq = 0; // 最后可见消息序号
  int maxMsgSeq = 0;
  int maxMsgOrderSeq = 0;
  int browseTo = 0; // 浏览到的位置
  int limit = 30; // 查询聊天数据偏移量
  int hideChannelAllPinnedMessage = 0; // 隐藏所有置顶消息
  int unFilledHeight = 0; // 未填充高度
  int callingViewHeight = 40; // 
  int pinnedViewHeight = 50;



  bool isShowHistory = true; //是否显示历史消息;
  bool isSyncLastMsg = false; //是否同步最后一条消息;
  bool isToEnd = true; //是否滚动到底部;
  bool isViewingPicture = false; //是否正在查看图片;
  bool showNickname = true; // 是否显示昵称
  bool isUploadReadMsg = true; //是否上传已读消息
  bool isCanLoadMore = true; //是否可以加载更多
  bool isRefreshLoading = false; // 是否正在刷新
  bool isMoreLoading = false; // 是否正在加载更多
  bool isCanRefresh = true; // 是否可以刷新
  bool isShowChatScreen = true;
  bool isUpdateRedDot = true;
  bool isShowPinnedView = false;
  bool isShowCallingView = false;
  bool isTipMessage = false;
  

  
  List<WKUIChatMsgItem> dataList = [];
  List<WKReminder> reminderList = []; // 提醒列表
  List<WKReminder> groupApproveList = []; // 群申请列表
  List<int> reminderIds = [];
  WKMsg? replyWKMsg; // 回复的消息对象
  WKMsg? editWKMsg; // 编辑的消息对象
  List<String> readMsgIds = []; //已读消息ID
  List<WKMessageContent>? msgContentList;

  ChatProviderState({
    required this.channelID,
    required this.channelType,
    this.groupType = WKGroupType.normalGroup,
    this.keepOffsetY = 0,
    this.redDot = 0,
    this.lastPreviewMsgOrderSeq = 0,
    this.unreadStartMsgOrderSeq = 0,
    this.tipsOrderSeq = 0,
    this.aroundMsgSeq = 9,
    this.count = 0,
    this.lastVisibleMsgSeq = 0,
    this.maxMsgSeq = 0,
    this.maxMsgOrderSeq = 0,
    this.browseTo = 0,
    this.limit = 30,
    this.hideChannelAllPinnedMessage = 0,
    this.unFilledHeight = 0,
    this.callingViewHeight = 40,
    this.pinnedViewHeight = 50,
    this.isShowHistory = true,
    this.isSyncLastMsg = false,
    this.isToEnd = true,
    this.isViewingPicture = false,  
    this.showNickname = true,
    this.isUploadReadMsg = true,
    this.isCanLoadMore = true, 
    this.isRefreshLoading = false,
    this.isMoreLoading = false,
    this.isCanRefresh = true,
    this.isShowChatScreen = true,
    this.isUpdateRedDot = true,
    this.isShowPinnedView = false,
    this.isShowCallingView = false,
    this.isTipMessage = false,
    this.reminderList = const [],
    this.groupApproveList = const [],
    this.reminderIds = const [],
    this.readMsgIds = const [],
    this.dataList = const [],
    this.msgContentList,
    this.replyWKMsg,
    this.editWKMsg,
  });

  ChatProviderState copyWith({
    int? groupType,
    int? keepOffsetY,
    int? redDot,
    int? lastPreviewMsgOrderSeq,
    int? unreadStartMsgOrderSeq,
    int? tipsOrderSeq,
    int? aroundMsgSeq,
    int? count,
    int? lastVisibleMsgSeq,
    int? maxMsgSeq,
    int? maxMsgOrderSeq,
    int? browseTo,
    int? limit,
    int? hideChannelAllPinnedMessage,
    int? unFilledHeight,
    int? callingViewHeight,
    int? pinnedViewHeight,
    bool? isShowHistory,
    bool? isSyncLastMsg,
    bool? isToEnd,
    bool? isViewingPicture,
    bool? showNickname,
    bool? isUploadReadMsg,
    bool? isCanLoadMore,
    bool? isRefreshLoading,
    bool? isMoreLoading,
    bool? isCanRefresh,
    bool? isShowChatScreen,
    bool? isUpdateRedDot,
    bool? isShowPinnedView,
    bool? isShowCallingView,
    bool? isTipMessage,
    List<WKReminder>? reminderList,
    List<WKReminder>? groupApproveList,
    List<WKMessageContent>? msgContentList, 
    List<WKUIChatMsgItem>? dataList,
    List<int>? reminderIds,
    WKMsg? replyWKMsg,
    WKMsg? editWKMsg,
    List<String>? readMsgIds,
  }){
    return ChatProviderState(
      channelID: channelID,
      channelType: channelType,
      groupType: groupType ?? this.groupType,
      keepOffsetY: keepOffsetY ?? this.keepOffsetY,
      redDot: redDot ?? this.redDot,
      lastPreviewMsgOrderSeq: lastPreviewMsgOrderSeq ?? this.lastPreviewMsgOrderSeq,
      unreadStartMsgOrderSeq: unreadStartMsgOrderSeq?? this.unreadStartMsgOrderSeq,
      tipsOrderSeq: tipsOrderSeq?? this.tipsOrderSeq,
      aroundMsgSeq: aroundMsgSeq?? this.aroundMsgSeq,
      count: count?? this.count,
      lastVisibleMsgSeq: lastVisibleMsgSeq?? this.lastVisibleMsgSeq,
      maxMsgSeq: maxMsgSeq?? this.maxMsgSeq,
      maxMsgOrderSeq: maxMsgOrderSeq?? this.maxMsgOrderSeq, 
      browseTo: browseTo?? this.browseTo,
      limit: limit?? this.limit,
      hideChannelAllPinnedMessage: hideChannelAllPinnedMessage?? this.hideChannelAllPinnedMessage,
      unFilledHeight: unFilledHeight?? this.unFilledHeight,
      callingViewHeight: callingViewHeight?? this.callingViewHeight,  
      pinnedViewHeight: pinnedViewHeight?? this.pinnedViewHeight,
      isShowHistory: isShowHistory?? this.isShowHistory,
      isSyncLastMsg: isSyncLastMsg?? this.isSyncLastMsg,  
      isToEnd: isToEnd?? this.isToEnd,  
      isViewingPicture: isViewingPicture?? this.isViewingPicture, 
      showNickname: showNickname?? this.showNickname,
      isUploadReadMsg: isUploadReadMsg?? this.isUploadReadMsg,
      isCanLoadMore: isCanLoadMore?? this.isCanLoadMore,
      isRefreshLoading: isRefreshLoading?? this.isRefreshLoading,
      isMoreLoading: isMoreLoading?? this.isMoreLoading,
      isCanRefresh: isCanRefresh?? this.isCanRefresh,
      isShowChatScreen: isShowChatScreen?? this.isShowChatScreen,
      isUpdateRedDot: isUpdateRedDot?? this.isUpdateRedDot,
      isShowPinnedView: isShowPinnedView?? this.isShowPinnedView,
      isShowCallingView: isShowCallingView?? this.isShowCallingView,
      isTipMessage: isTipMessage?? this.isTipMessage,
      reminderList: reminderList?? this.reminderList,
      msgContentList: msgContentList?? this.msgContentList,
      groupApproveList: groupApproveList?? this.groupApproveList,
      reminderIds: reminderIds?? this.reminderIds,
      dataList: dataList ?? this.dataList,
      replyWKMsg: replyWKMsg?? this.replyWKMsg,
      editWKMsg: editWKMsg?? this.editWKMsg,
      readMsgIds: readMsgIds?? this.readMsgIds,
    );
  }
}
