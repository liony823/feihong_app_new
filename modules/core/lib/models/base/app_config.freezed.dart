// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppConfig {
  String get rsaPublicKey; // 公钥
  int get version; // 版本
  String get superToken; // 超级token
  int get superTokenOn; // 超级token是否开启
  String get welcomeMessage; // 登录欢迎语
  int get newUserJoinSystemGroup; // 新用户是否加入系统群聊
  int get searchByPhone; // 是否可通过手机号搜索
  int get registerInviteOn; // 是否开启注册邀请
  int get sendWelcomeMessageOn; // 是否发送登录欢迎语
  int get inviteSystemAccountJoinGroupOn; // 是否允许邀请系统账号进入群聊
  int get registerUserMustCompleteInfoOn; // 是否要求注册用户必须填写完整信息
  int get channelPinnedMessageMaxCount; // 频道置顶消息最大数量
  int get canModifyApiUrl; // 是否可以修改API地址
  int get shortnoEditOff; // 是否关闭短编号编辑
  int get revokeSecond; // 消息可撤回时长
  String get ipWhiteList; // 后台IP白名单
  int get loginType; // app登录类型
  String get sensitiveWords; // 敏感词
  int get disableChangeDevice; // 是否禁止更换设备
  int get signupDeviceLimit; // 设备限制注册限制数
  int get sigleIpRegisterLimitIn12hour; // 单IP12小时注册限制数
  int get autoClearHistoryMsg; // 自动清除几天前历史消息
  int get miniProgramVisible; // 小程序页是否可见
  int get discoveryVisible; // 发现页是否可见
  int get chargeAndPayoutVisible; // 充值和提现是否可见
  int get voiceCallVisible; // 语音通话是否可见
  int get videoCallVisible; // 视频通话是否可见
  int get signinAuthCodeVisible; // 登录授权码是否可见
  int get friendOnlineStatusVisible; // 好友在线状态是否可见
  int get mobileMsgReadStatusVisible; // 手机消息已读状态是否可见
  int get signRedEnvelopeVisible; // 签到红包模块是否开启
  int get mineWalletVisible; // 我的钱包是否开启
  int get walletPayoutMin; // 钱包提现最小金额
  int get redEnvelopeVisible; // 红包模块是否开启
  int get transferVisible; // 转账模块是否开启
  int get transferMinAmount; // 转账最小金额
  int get mobileEditMsg; // 手机端是否可以编辑消息
  int get groupMemberSeeMember; // 普通群成员是否可以查看其他群成员
  int get msgTimeVisible; // 消息时间是否可见
  int get pinnedConversationSync; // 置顶会话是否同步
  int get onlyInternalFriendAdd; // 仅内部号可被加好友及加非内部号好友
  int get onlyInternalFriendCreateGroup; // 仅内部号可建群
  int get onlyInternalFriendSendGroupRedEnvelope; // 仅内部号可发群红包
  int get onlyInternalFriendSendGroupCard; // 仅内部号可群内推送名片
  int get onlyInternalFriendGroupRobotFreeMsg; // 群机器人免消息
  int get groupMemberLimit; // 群人数限制
  String get userAgreementContent; // 用户协议内容
  String get privacyPolicyContent; // 隐私政策内容
  int get momentsVisible;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppConfigCopyWith<AppConfig> get copyWith =>
      _$AppConfigCopyWithImpl<AppConfig>(this as AppConfig, _$identity);

  /// Serializes this AppConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppConfig &&
            (identical(other.rsaPublicKey, rsaPublicKey) ||
                other.rsaPublicKey == rsaPublicKey) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.superToken, superToken) ||
                other.superToken == superToken) &&
            (identical(other.superTokenOn, superTokenOn) ||
                other.superTokenOn == superTokenOn) &&
            (identical(other.welcomeMessage, welcomeMessage) ||
                other.welcomeMessage == welcomeMessage) &&
            (identical(other.newUserJoinSystemGroup, newUserJoinSystemGroup) ||
                other.newUserJoinSystemGroup == newUserJoinSystemGroup) &&
            (identical(other.searchByPhone, searchByPhone) ||
                other.searchByPhone == searchByPhone) &&
            (identical(other.registerInviteOn, registerInviteOn) ||
                other.registerInviteOn == registerInviteOn) &&
            (identical(other.sendWelcomeMessageOn, sendWelcomeMessageOn) ||
                other.sendWelcomeMessageOn == sendWelcomeMessageOn) &&
            (identical(other.inviteSystemAccountJoinGroupOn, inviteSystemAccountJoinGroupOn) ||
                other.inviteSystemAccountJoinGroupOn ==
                    inviteSystemAccountJoinGroupOn) &&
            (identical(other.registerUserMustCompleteInfoOn, registerUserMustCompleteInfoOn) ||
                other.registerUserMustCompleteInfoOn ==
                    registerUserMustCompleteInfoOn) &&
            (identical(other.channelPinnedMessageMaxCount, channelPinnedMessageMaxCount) ||
                other.channelPinnedMessageMaxCount ==
                    channelPinnedMessageMaxCount) &&
            (identical(other.canModifyApiUrl, canModifyApiUrl) ||
                other.canModifyApiUrl == canModifyApiUrl) &&
            (identical(other.shortnoEditOff, shortnoEditOff) ||
                other.shortnoEditOff == shortnoEditOff) &&
            (identical(other.revokeSecond, revokeSecond) ||
                other.revokeSecond == revokeSecond) &&
            (identical(other.ipWhiteList, ipWhiteList) ||
                other.ipWhiteList == ipWhiteList) &&
            (identical(other.loginType, loginType) ||
                other.loginType == loginType) &&
            (identical(other.sensitiveWords, sensitiveWords) ||
                other.sensitiveWords == sensitiveWords) &&
            (identical(other.disableChangeDevice, disableChangeDevice) ||
                other.disableChangeDevice == disableChangeDevice) &&
            (identical(other.signupDeviceLimit, signupDeviceLimit) ||
                other.signupDeviceLimit == signupDeviceLimit) &&
            (identical(other.sigleIpRegisterLimitIn12hour, sigleIpRegisterLimitIn12hour) ||
                other.sigleIpRegisterLimitIn12hour ==
                    sigleIpRegisterLimitIn12hour) &&
            (identical(other.autoClearHistoryMsg, autoClearHistoryMsg) ||
                other.autoClearHistoryMsg == autoClearHistoryMsg) &&
            (identical(other.miniProgramVisible, miniProgramVisible) ||
                other.miniProgramVisible == miniProgramVisible) &&
            (identical(other.discoveryVisible, discoveryVisible) ||
                other.discoveryVisible == discoveryVisible) &&
            (identical(other.chargeAndPayoutVisible, chargeAndPayoutVisible) ||
                other.chargeAndPayoutVisible == chargeAndPayoutVisible) &&
            (identical(other.voiceCallVisible, voiceCallVisible) ||
                other.voiceCallVisible == voiceCallVisible) &&
            (identical(other.videoCallVisible, videoCallVisible) ||
                other.videoCallVisible == videoCallVisible) &&
            (identical(other.signinAuthCodeVisible, signinAuthCodeVisible) ||
                other.signinAuthCodeVisible == signinAuthCodeVisible) &&
            (identical(other.friendOnlineStatusVisible, friendOnlineStatusVisible) || other.friendOnlineStatusVisible == friendOnlineStatusVisible) &&
            (identical(other.mobileMsgReadStatusVisible, mobileMsgReadStatusVisible) || other.mobileMsgReadStatusVisible == mobileMsgReadStatusVisible) &&
            (identical(other.signRedEnvelopeVisible, signRedEnvelopeVisible) || other.signRedEnvelopeVisible == signRedEnvelopeVisible) &&
            (identical(other.mineWalletVisible, mineWalletVisible) || other.mineWalletVisible == mineWalletVisible) &&
            (identical(other.walletPayoutMin, walletPayoutMin) || other.walletPayoutMin == walletPayoutMin) &&
            (identical(other.redEnvelopeVisible, redEnvelopeVisible) || other.redEnvelopeVisible == redEnvelopeVisible) &&
            (identical(other.transferVisible, transferVisible) || other.transferVisible == transferVisible) &&
            (identical(other.transferMinAmount, transferMinAmount) || other.transferMinAmount == transferMinAmount) &&
            (identical(other.mobileEditMsg, mobileEditMsg) || other.mobileEditMsg == mobileEditMsg) &&
            (identical(other.groupMemberSeeMember, groupMemberSeeMember) || other.groupMemberSeeMember == groupMemberSeeMember) &&
            (identical(other.msgTimeVisible, msgTimeVisible) || other.msgTimeVisible == msgTimeVisible) &&
            (identical(other.pinnedConversationSync, pinnedConversationSync) || other.pinnedConversationSync == pinnedConversationSync) &&
            (identical(other.onlyInternalFriendAdd, onlyInternalFriendAdd) || other.onlyInternalFriendAdd == onlyInternalFriendAdd) &&
            (identical(other.onlyInternalFriendCreateGroup, onlyInternalFriendCreateGroup) || other.onlyInternalFriendCreateGroup == onlyInternalFriendCreateGroup) &&
            (identical(other.onlyInternalFriendSendGroupRedEnvelope, onlyInternalFriendSendGroupRedEnvelope) || other.onlyInternalFriendSendGroupRedEnvelope == onlyInternalFriendSendGroupRedEnvelope) &&
            (identical(other.onlyInternalFriendSendGroupCard, onlyInternalFriendSendGroupCard) || other.onlyInternalFriendSendGroupCard == onlyInternalFriendSendGroupCard) &&
            (identical(other.onlyInternalFriendGroupRobotFreeMsg, onlyInternalFriendGroupRobotFreeMsg) || other.onlyInternalFriendGroupRobotFreeMsg == onlyInternalFriendGroupRobotFreeMsg) &&
            (identical(other.groupMemberLimit, groupMemberLimit) || other.groupMemberLimit == groupMemberLimit) &&
            (identical(other.userAgreementContent, userAgreementContent) || other.userAgreementContent == userAgreementContent) &&
            (identical(other.privacyPolicyContent, privacyPolicyContent) || other.privacyPolicyContent == privacyPolicyContent) &&
            (identical(other.momentsVisible, momentsVisible) || other.momentsVisible == momentsVisible));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        rsaPublicKey,
        version,
        superToken,
        superTokenOn,
        welcomeMessage,
        newUserJoinSystemGroup,
        searchByPhone,
        registerInviteOn,
        sendWelcomeMessageOn,
        inviteSystemAccountJoinGroupOn,
        registerUserMustCompleteInfoOn,
        channelPinnedMessageMaxCount,
        canModifyApiUrl,
        shortnoEditOff,
        revokeSecond,
        ipWhiteList,
        loginType,
        sensitiveWords,
        disableChangeDevice,
        signupDeviceLimit,
        sigleIpRegisterLimitIn12hour,
        autoClearHistoryMsg,
        miniProgramVisible,
        discoveryVisible,
        chargeAndPayoutVisible,
        voiceCallVisible,
        videoCallVisible,
        signinAuthCodeVisible,
        friendOnlineStatusVisible,
        mobileMsgReadStatusVisible,
        signRedEnvelopeVisible,
        mineWalletVisible,
        walletPayoutMin,
        redEnvelopeVisible,
        transferVisible,
        transferMinAmount,
        mobileEditMsg,
        groupMemberSeeMember,
        msgTimeVisible,
        pinnedConversationSync,
        onlyInternalFriendAdd,
        onlyInternalFriendCreateGroup,
        onlyInternalFriendSendGroupRedEnvelope,
        onlyInternalFriendSendGroupCard,
        onlyInternalFriendGroupRobotFreeMsg,
        groupMemberLimit,
        userAgreementContent,
        privacyPolicyContent,
        momentsVisible
      ]);

  @override
  String toString() {
    return 'AppConfig(rsaPublicKey: $rsaPublicKey, version: $version, superToken: $superToken, superTokenOn: $superTokenOn, welcomeMessage: $welcomeMessage, newUserJoinSystemGroup: $newUserJoinSystemGroup, searchByPhone: $searchByPhone, registerInviteOn: $registerInviteOn, sendWelcomeMessageOn: $sendWelcomeMessageOn, inviteSystemAccountJoinGroupOn: $inviteSystemAccountJoinGroupOn, registerUserMustCompleteInfoOn: $registerUserMustCompleteInfoOn, channelPinnedMessageMaxCount: $channelPinnedMessageMaxCount, canModifyApiUrl: $canModifyApiUrl, shortnoEditOff: $shortnoEditOff, revokeSecond: $revokeSecond, ipWhiteList: $ipWhiteList, loginType: $loginType, sensitiveWords: $sensitiveWords, disableChangeDevice: $disableChangeDevice, signupDeviceLimit: $signupDeviceLimit, sigleIpRegisterLimitIn12hour: $sigleIpRegisterLimitIn12hour, autoClearHistoryMsg: $autoClearHistoryMsg, miniProgramVisible: $miniProgramVisible, discoveryVisible: $discoveryVisible, chargeAndPayoutVisible: $chargeAndPayoutVisible, voiceCallVisible: $voiceCallVisible, videoCallVisible: $videoCallVisible, signinAuthCodeVisible: $signinAuthCodeVisible, friendOnlineStatusVisible: $friendOnlineStatusVisible, mobileMsgReadStatusVisible: $mobileMsgReadStatusVisible, signRedEnvelopeVisible: $signRedEnvelopeVisible, mineWalletVisible: $mineWalletVisible, walletPayoutMin: $walletPayoutMin, redEnvelopeVisible: $redEnvelopeVisible, transferVisible: $transferVisible, transferMinAmount: $transferMinAmount, mobileEditMsg: $mobileEditMsg, groupMemberSeeMember: $groupMemberSeeMember, msgTimeVisible: $msgTimeVisible, pinnedConversationSync: $pinnedConversationSync, onlyInternalFriendAdd: $onlyInternalFriendAdd, onlyInternalFriendCreateGroup: $onlyInternalFriendCreateGroup, onlyInternalFriendSendGroupRedEnvelope: $onlyInternalFriendSendGroupRedEnvelope, onlyInternalFriendSendGroupCard: $onlyInternalFriendSendGroupCard, onlyInternalFriendGroupRobotFreeMsg: $onlyInternalFriendGroupRobotFreeMsg, groupMemberLimit: $groupMemberLimit, userAgreementContent: $userAgreementContent, privacyPolicyContent: $privacyPolicyContent, momentsVisible: $momentsVisible)';
  }
}

/// @nodoc
abstract mixin class $AppConfigCopyWith<$Res> {
  factory $AppConfigCopyWith(AppConfig value, $Res Function(AppConfig) _then) =
      _$AppConfigCopyWithImpl;
  @useResult
  $Res call(
      {String rsaPublicKey,
      int version,
      String superToken,
      int superTokenOn,
      String welcomeMessage,
      int newUserJoinSystemGroup,
      int searchByPhone,
      int registerInviteOn,
      int sendWelcomeMessageOn,
      int inviteSystemAccountJoinGroupOn,
      int registerUserMustCompleteInfoOn,
      int channelPinnedMessageMaxCount,
      int canModifyApiUrl,
      int shortnoEditOff,
      int revokeSecond,
      String ipWhiteList,
      int loginType,
      String sensitiveWords,
      int disableChangeDevice,
      int signupDeviceLimit,
      int sigleIpRegisterLimitIn12hour,
      int autoClearHistoryMsg,
      int miniProgramVisible,
      int discoveryVisible,
      int chargeAndPayoutVisible,
      int voiceCallVisible,
      int videoCallVisible,
      int signinAuthCodeVisible,
      int friendOnlineStatusVisible,
      int mobileMsgReadStatusVisible,
      int signRedEnvelopeVisible,
      int mineWalletVisible,
      int walletPayoutMin,
      int redEnvelopeVisible,
      int transferVisible,
      int transferMinAmount,
      int mobileEditMsg,
      int groupMemberSeeMember,
      int msgTimeVisible,
      int pinnedConversationSync,
      int onlyInternalFriendAdd,
      int onlyInternalFriendCreateGroup,
      int onlyInternalFriendSendGroupRedEnvelope,
      int onlyInternalFriendSendGroupCard,
      int onlyInternalFriendGroupRobotFreeMsg,
      int groupMemberLimit,
      String userAgreementContent,
      String privacyPolicyContent,
      int momentsVisible});
}

/// @nodoc
class _$AppConfigCopyWithImpl<$Res> implements $AppConfigCopyWith<$Res> {
  _$AppConfigCopyWithImpl(this._self, this._then);

  final AppConfig _self;
  final $Res Function(AppConfig) _then;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rsaPublicKey = null,
    Object? version = null,
    Object? superToken = null,
    Object? superTokenOn = null,
    Object? welcomeMessage = null,
    Object? newUserJoinSystemGroup = null,
    Object? searchByPhone = null,
    Object? registerInviteOn = null,
    Object? sendWelcomeMessageOn = null,
    Object? inviteSystemAccountJoinGroupOn = null,
    Object? registerUserMustCompleteInfoOn = null,
    Object? channelPinnedMessageMaxCount = null,
    Object? canModifyApiUrl = null,
    Object? shortnoEditOff = null,
    Object? revokeSecond = null,
    Object? ipWhiteList = null,
    Object? loginType = null,
    Object? sensitiveWords = null,
    Object? disableChangeDevice = null,
    Object? signupDeviceLimit = null,
    Object? sigleIpRegisterLimitIn12hour = null,
    Object? autoClearHistoryMsg = null,
    Object? miniProgramVisible = null,
    Object? discoveryVisible = null,
    Object? chargeAndPayoutVisible = null,
    Object? voiceCallVisible = null,
    Object? videoCallVisible = null,
    Object? signinAuthCodeVisible = null,
    Object? friendOnlineStatusVisible = null,
    Object? mobileMsgReadStatusVisible = null,
    Object? signRedEnvelopeVisible = null,
    Object? mineWalletVisible = null,
    Object? walletPayoutMin = null,
    Object? redEnvelopeVisible = null,
    Object? transferVisible = null,
    Object? transferMinAmount = null,
    Object? mobileEditMsg = null,
    Object? groupMemberSeeMember = null,
    Object? msgTimeVisible = null,
    Object? pinnedConversationSync = null,
    Object? onlyInternalFriendAdd = null,
    Object? onlyInternalFriendCreateGroup = null,
    Object? onlyInternalFriendSendGroupRedEnvelope = null,
    Object? onlyInternalFriendSendGroupCard = null,
    Object? onlyInternalFriendGroupRobotFreeMsg = null,
    Object? groupMemberLimit = null,
    Object? userAgreementContent = null,
    Object? privacyPolicyContent = null,
    Object? momentsVisible = null,
  }) {
    return _then(_self.copyWith(
      rsaPublicKey: null == rsaPublicKey
          ? _self.rsaPublicKey
          : rsaPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      superToken: null == superToken
          ? _self.superToken
          : superToken // ignore: cast_nullable_to_non_nullable
              as String,
      superTokenOn: null == superTokenOn
          ? _self.superTokenOn
          : superTokenOn // ignore: cast_nullable_to_non_nullable
              as int,
      welcomeMessage: null == welcomeMessage
          ? _self.welcomeMessage
          : welcomeMessage // ignore: cast_nullable_to_non_nullable
              as String,
      newUserJoinSystemGroup: null == newUserJoinSystemGroup
          ? _self.newUserJoinSystemGroup
          : newUserJoinSystemGroup // ignore: cast_nullable_to_non_nullable
              as int,
      searchByPhone: null == searchByPhone
          ? _self.searchByPhone
          : searchByPhone // ignore: cast_nullable_to_non_nullable
              as int,
      registerInviteOn: null == registerInviteOn
          ? _self.registerInviteOn
          : registerInviteOn // ignore: cast_nullable_to_non_nullable
              as int,
      sendWelcomeMessageOn: null == sendWelcomeMessageOn
          ? _self.sendWelcomeMessageOn
          : sendWelcomeMessageOn // ignore: cast_nullable_to_non_nullable
              as int,
      inviteSystemAccountJoinGroupOn: null == inviteSystemAccountJoinGroupOn
          ? _self.inviteSystemAccountJoinGroupOn
          : inviteSystemAccountJoinGroupOn // ignore: cast_nullable_to_non_nullable
              as int,
      registerUserMustCompleteInfoOn: null == registerUserMustCompleteInfoOn
          ? _self.registerUserMustCompleteInfoOn
          : registerUserMustCompleteInfoOn // ignore: cast_nullable_to_non_nullable
              as int,
      channelPinnedMessageMaxCount: null == channelPinnedMessageMaxCount
          ? _self.channelPinnedMessageMaxCount
          : channelPinnedMessageMaxCount // ignore: cast_nullable_to_non_nullable
              as int,
      canModifyApiUrl: null == canModifyApiUrl
          ? _self.canModifyApiUrl
          : canModifyApiUrl // ignore: cast_nullable_to_non_nullable
              as int,
      shortnoEditOff: null == shortnoEditOff
          ? _self.shortnoEditOff
          : shortnoEditOff // ignore: cast_nullable_to_non_nullable
              as int,
      revokeSecond: null == revokeSecond
          ? _self.revokeSecond
          : revokeSecond // ignore: cast_nullable_to_non_nullable
              as int,
      ipWhiteList: null == ipWhiteList
          ? _self.ipWhiteList
          : ipWhiteList // ignore: cast_nullable_to_non_nullable
              as String,
      loginType: null == loginType
          ? _self.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as int,
      sensitiveWords: null == sensitiveWords
          ? _self.sensitiveWords
          : sensitiveWords // ignore: cast_nullable_to_non_nullable
              as String,
      disableChangeDevice: null == disableChangeDevice
          ? _self.disableChangeDevice
          : disableChangeDevice // ignore: cast_nullable_to_non_nullable
              as int,
      signupDeviceLimit: null == signupDeviceLimit
          ? _self.signupDeviceLimit
          : signupDeviceLimit // ignore: cast_nullable_to_non_nullable
              as int,
      sigleIpRegisterLimitIn12hour: null == sigleIpRegisterLimitIn12hour
          ? _self.sigleIpRegisterLimitIn12hour
          : sigleIpRegisterLimitIn12hour // ignore: cast_nullable_to_non_nullable
              as int,
      autoClearHistoryMsg: null == autoClearHistoryMsg
          ? _self.autoClearHistoryMsg
          : autoClearHistoryMsg // ignore: cast_nullable_to_non_nullable
              as int,
      miniProgramVisible: null == miniProgramVisible
          ? _self.miniProgramVisible
          : miniProgramVisible // ignore: cast_nullable_to_non_nullable
              as int,
      discoveryVisible: null == discoveryVisible
          ? _self.discoveryVisible
          : discoveryVisible // ignore: cast_nullable_to_non_nullable
              as int,
      chargeAndPayoutVisible: null == chargeAndPayoutVisible
          ? _self.chargeAndPayoutVisible
          : chargeAndPayoutVisible // ignore: cast_nullable_to_non_nullable
              as int,
      voiceCallVisible: null == voiceCallVisible
          ? _self.voiceCallVisible
          : voiceCallVisible // ignore: cast_nullable_to_non_nullable
              as int,
      videoCallVisible: null == videoCallVisible
          ? _self.videoCallVisible
          : videoCallVisible // ignore: cast_nullable_to_non_nullable
              as int,
      signinAuthCodeVisible: null == signinAuthCodeVisible
          ? _self.signinAuthCodeVisible
          : signinAuthCodeVisible // ignore: cast_nullable_to_non_nullable
              as int,
      friendOnlineStatusVisible: null == friendOnlineStatusVisible
          ? _self.friendOnlineStatusVisible
          : friendOnlineStatusVisible // ignore: cast_nullable_to_non_nullable
              as int,
      mobileMsgReadStatusVisible: null == mobileMsgReadStatusVisible
          ? _self.mobileMsgReadStatusVisible
          : mobileMsgReadStatusVisible // ignore: cast_nullable_to_non_nullable
              as int,
      signRedEnvelopeVisible: null == signRedEnvelopeVisible
          ? _self.signRedEnvelopeVisible
          : signRedEnvelopeVisible // ignore: cast_nullable_to_non_nullable
              as int,
      mineWalletVisible: null == mineWalletVisible
          ? _self.mineWalletVisible
          : mineWalletVisible // ignore: cast_nullable_to_non_nullable
              as int,
      walletPayoutMin: null == walletPayoutMin
          ? _self.walletPayoutMin
          : walletPayoutMin // ignore: cast_nullable_to_non_nullable
              as int,
      redEnvelopeVisible: null == redEnvelopeVisible
          ? _self.redEnvelopeVisible
          : redEnvelopeVisible // ignore: cast_nullable_to_non_nullable
              as int,
      transferVisible: null == transferVisible
          ? _self.transferVisible
          : transferVisible // ignore: cast_nullable_to_non_nullable
              as int,
      transferMinAmount: null == transferMinAmount
          ? _self.transferMinAmount
          : transferMinAmount // ignore: cast_nullable_to_non_nullable
              as int,
      mobileEditMsg: null == mobileEditMsg
          ? _self.mobileEditMsg
          : mobileEditMsg // ignore: cast_nullable_to_non_nullable
              as int,
      groupMemberSeeMember: null == groupMemberSeeMember
          ? _self.groupMemberSeeMember
          : groupMemberSeeMember // ignore: cast_nullable_to_non_nullable
              as int,
      msgTimeVisible: null == msgTimeVisible
          ? _self.msgTimeVisible
          : msgTimeVisible // ignore: cast_nullable_to_non_nullable
              as int,
      pinnedConversationSync: null == pinnedConversationSync
          ? _self.pinnedConversationSync
          : pinnedConversationSync // ignore: cast_nullable_to_non_nullable
              as int,
      onlyInternalFriendAdd: null == onlyInternalFriendAdd
          ? _self.onlyInternalFriendAdd
          : onlyInternalFriendAdd // ignore: cast_nullable_to_non_nullable
              as int,
      onlyInternalFriendCreateGroup: null == onlyInternalFriendCreateGroup
          ? _self.onlyInternalFriendCreateGroup
          : onlyInternalFriendCreateGroup // ignore: cast_nullable_to_non_nullable
              as int,
      onlyInternalFriendSendGroupRedEnvelope: null ==
              onlyInternalFriendSendGroupRedEnvelope
          ? _self.onlyInternalFriendSendGroupRedEnvelope
          : onlyInternalFriendSendGroupRedEnvelope // ignore: cast_nullable_to_non_nullable
              as int,
      onlyInternalFriendSendGroupCard: null == onlyInternalFriendSendGroupCard
          ? _self.onlyInternalFriendSendGroupCard
          : onlyInternalFriendSendGroupCard // ignore: cast_nullable_to_non_nullable
              as int,
      onlyInternalFriendGroupRobotFreeMsg: null ==
              onlyInternalFriendGroupRobotFreeMsg
          ? _self.onlyInternalFriendGroupRobotFreeMsg
          : onlyInternalFriendGroupRobotFreeMsg // ignore: cast_nullable_to_non_nullable
              as int,
      groupMemberLimit: null == groupMemberLimit
          ? _self.groupMemberLimit
          : groupMemberLimit // ignore: cast_nullable_to_non_nullable
              as int,
      userAgreementContent: null == userAgreementContent
          ? _self.userAgreementContent
          : userAgreementContent // ignore: cast_nullable_to_non_nullable
              as String,
      privacyPolicyContent: null == privacyPolicyContent
          ? _self.privacyPolicyContent
          : privacyPolicyContent // ignore: cast_nullable_to_non_nullable
              as String,
      momentsVisible: null == momentsVisible
          ? _self.momentsVisible
          : momentsVisible // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AppConfig implements AppConfig {
  const _AppConfig(
      {required this.rsaPublicKey,
      required this.version,
      required this.superToken,
      required this.superTokenOn,
      required this.welcomeMessage,
      required this.newUserJoinSystemGroup,
      required this.searchByPhone,
      required this.registerInviteOn,
      required this.sendWelcomeMessageOn,
      required this.inviteSystemAccountJoinGroupOn,
      required this.registerUserMustCompleteInfoOn,
      required this.channelPinnedMessageMaxCount,
      required this.canModifyApiUrl,
      required this.shortnoEditOff,
      required this.revokeSecond,
      required this.ipWhiteList,
      required this.loginType,
      required this.sensitiveWords,
      required this.disableChangeDevice,
      required this.signupDeviceLimit,
      required this.sigleIpRegisterLimitIn12hour,
      required this.autoClearHistoryMsg,
      required this.miniProgramVisible,
      required this.discoveryVisible,
      required this.chargeAndPayoutVisible,
      required this.voiceCallVisible,
      required this.videoCallVisible,
      required this.signinAuthCodeVisible,
      required this.friendOnlineStatusVisible,
      required this.mobileMsgReadStatusVisible,
      required this.signRedEnvelopeVisible,
      required this.mineWalletVisible,
      required this.walletPayoutMin,
      required this.redEnvelopeVisible,
      required this.transferVisible,
      required this.transferMinAmount,
      required this.mobileEditMsg,
      required this.groupMemberSeeMember,
      required this.msgTimeVisible,
      required this.pinnedConversationSync,
      required this.onlyInternalFriendAdd,
      required this.onlyInternalFriendCreateGroup,
      required this.onlyInternalFriendSendGroupRedEnvelope,
      required this.onlyInternalFriendSendGroupCard,
      required this.onlyInternalFriendGroupRobotFreeMsg,
      required this.groupMemberLimit,
      required this.userAgreementContent,
      required this.privacyPolicyContent,
      required this.momentsVisible});
  factory _AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);

  @override
  final String rsaPublicKey;
// 公钥
  @override
  final int version;
// 版本
  @override
  final String superToken;
// 超级token
  @override
  final int superTokenOn;
// 超级token是否开启
  @override
  final String welcomeMessage;
// 登录欢迎语
  @override
  final int newUserJoinSystemGroup;
// 新用户是否加入系统群聊
  @override
  final int searchByPhone;
// 是否可通过手机号搜索
  @override
  final int registerInviteOn;
// 是否开启注册邀请
  @override
  final int sendWelcomeMessageOn;
// 是否发送登录欢迎语
  @override
  final int inviteSystemAccountJoinGroupOn;
// 是否允许邀请系统账号进入群聊
  @override
  final int registerUserMustCompleteInfoOn;
// 是否要求注册用户必须填写完整信息
  @override
  final int channelPinnedMessageMaxCount;
// 频道置顶消息最大数量
  @override
  final int canModifyApiUrl;
// 是否可以修改API地址
  @override
  final int shortnoEditOff;
// 是否关闭短编号编辑
  @override
  final int revokeSecond;
// 消息可撤回时长
  @override
  final String ipWhiteList;
// 后台IP白名单
  @override
  final int loginType;
// app登录类型
  @override
  final String sensitiveWords;
// 敏感词
  @override
  final int disableChangeDevice;
// 是否禁止更换设备
  @override
  final int signupDeviceLimit;
// 设备限制注册限制数
  @override
  final int sigleIpRegisterLimitIn12hour;
// 单IP12小时注册限制数
  @override
  final int autoClearHistoryMsg;
// 自动清除几天前历史消息
  @override
  final int miniProgramVisible;
// 小程序页是否可见
  @override
  final int discoveryVisible;
// 发现页是否可见
  @override
  final int chargeAndPayoutVisible;
// 充值和提现是否可见
  @override
  final int voiceCallVisible;
// 语音通话是否可见
  @override
  final int videoCallVisible;
// 视频通话是否可见
  @override
  final int signinAuthCodeVisible;
// 登录授权码是否可见
  @override
  final int friendOnlineStatusVisible;
// 好友在线状态是否可见
  @override
  final int mobileMsgReadStatusVisible;
// 手机消息已读状态是否可见
  @override
  final int signRedEnvelopeVisible;
// 签到红包模块是否开启
  @override
  final int mineWalletVisible;
// 我的钱包是否开启
  @override
  final int walletPayoutMin;
// 钱包提现最小金额
  @override
  final int redEnvelopeVisible;
// 红包模块是否开启
  @override
  final int transferVisible;
// 转账模块是否开启
  @override
  final int transferMinAmount;
// 转账最小金额
  @override
  final int mobileEditMsg;
// 手机端是否可以编辑消息
  @override
  final int groupMemberSeeMember;
// 普通群成员是否可以查看其他群成员
  @override
  final int msgTimeVisible;
// 消息时间是否可见
  @override
  final int pinnedConversationSync;
// 置顶会话是否同步
  @override
  final int onlyInternalFriendAdd;
// 仅内部号可被加好友及加非内部号好友
  @override
  final int onlyInternalFriendCreateGroup;
// 仅内部号可建群
  @override
  final int onlyInternalFriendSendGroupRedEnvelope;
// 仅内部号可发群红包
  @override
  final int onlyInternalFriendSendGroupCard;
// 仅内部号可群内推送名片
  @override
  final int onlyInternalFriendGroupRobotFreeMsg;
// 群机器人免消息
  @override
  final int groupMemberLimit;
// 群人数限制
  @override
  final String userAgreementContent;
// 用户协议内容
  @override
  final String privacyPolicyContent;
// 隐私政策内容
  @override
  final int momentsVisible;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppConfigCopyWith<_AppConfig> get copyWith =>
      __$AppConfigCopyWithImpl<_AppConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppConfig &&
            (identical(other.rsaPublicKey, rsaPublicKey) ||
                other.rsaPublicKey == rsaPublicKey) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.superToken, superToken) ||
                other.superToken == superToken) &&
            (identical(other.superTokenOn, superTokenOn) ||
                other.superTokenOn == superTokenOn) &&
            (identical(other.welcomeMessage, welcomeMessage) ||
                other.welcomeMessage == welcomeMessage) &&
            (identical(other.newUserJoinSystemGroup, newUserJoinSystemGroup) ||
                other.newUserJoinSystemGroup == newUserJoinSystemGroup) &&
            (identical(other.searchByPhone, searchByPhone) ||
                other.searchByPhone == searchByPhone) &&
            (identical(other.registerInviteOn, registerInviteOn) ||
                other.registerInviteOn == registerInviteOn) &&
            (identical(other.sendWelcomeMessageOn, sendWelcomeMessageOn) ||
                other.sendWelcomeMessageOn == sendWelcomeMessageOn) &&
            (identical(other.inviteSystemAccountJoinGroupOn, inviteSystemAccountJoinGroupOn) ||
                other.inviteSystemAccountJoinGroupOn ==
                    inviteSystemAccountJoinGroupOn) &&
            (identical(other.registerUserMustCompleteInfoOn, registerUserMustCompleteInfoOn) ||
                other.registerUserMustCompleteInfoOn ==
                    registerUserMustCompleteInfoOn) &&
            (identical(other.channelPinnedMessageMaxCount, channelPinnedMessageMaxCount) ||
                other.channelPinnedMessageMaxCount ==
                    channelPinnedMessageMaxCount) &&
            (identical(other.canModifyApiUrl, canModifyApiUrl) ||
                other.canModifyApiUrl == canModifyApiUrl) &&
            (identical(other.shortnoEditOff, shortnoEditOff) ||
                other.shortnoEditOff == shortnoEditOff) &&
            (identical(other.revokeSecond, revokeSecond) ||
                other.revokeSecond == revokeSecond) &&
            (identical(other.ipWhiteList, ipWhiteList) ||
                other.ipWhiteList == ipWhiteList) &&
            (identical(other.loginType, loginType) ||
                other.loginType == loginType) &&
            (identical(other.sensitiveWords, sensitiveWords) ||
                other.sensitiveWords == sensitiveWords) &&
            (identical(other.disableChangeDevice, disableChangeDevice) ||
                other.disableChangeDevice == disableChangeDevice) &&
            (identical(other.signupDeviceLimit, signupDeviceLimit) ||
                other.signupDeviceLimit == signupDeviceLimit) &&
            (identical(other.sigleIpRegisterLimitIn12hour, sigleIpRegisterLimitIn12hour) ||
                other.sigleIpRegisterLimitIn12hour ==
                    sigleIpRegisterLimitIn12hour) &&
            (identical(other.autoClearHistoryMsg, autoClearHistoryMsg) ||
                other.autoClearHistoryMsg == autoClearHistoryMsg) &&
            (identical(other.miniProgramVisible, miniProgramVisible) ||
                other.miniProgramVisible == miniProgramVisible) &&
            (identical(other.discoveryVisible, discoveryVisible) ||
                other.discoveryVisible == discoveryVisible) &&
            (identical(other.chargeAndPayoutVisible, chargeAndPayoutVisible) ||
                other.chargeAndPayoutVisible == chargeAndPayoutVisible) &&
            (identical(other.voiceCallVisible, voiceCallVisible) ||
                other.voiceCallVisible == voiceCallVisible) &&
            (identical(other.videoCallVisible, videoCallVisible) ||
                other.videoCallVisible == videoCallVisible) &&
            (identical(other.signinAuthCodeVisible, signinAuthCodeVisible) ||
                other.signinAuthCodeVisible == signinAuthCodeVisible) &&
            (identical(other.friendOnlineStatusVisible, friendOnlineStatusVisible) || other.friendOnlineStatusVisible == friendOnlineStatusVisible) &&
            (identical(other.mobileMsgReadStatusVisible, mobileMsgReadStatusVisible) || other.mobileMsgReadStatusVisible == mobileMsgReadStatusVisible) &&
            (identical(other.signRedEnvelopeVisible, signRedEnvelopeVisible) || other.signRedEnvelopeVisible == signRedEnvelopeVisible) &&
            (identical(other.mineWalletVisible, mineWalletVisible) || other.mineWalletVisible == mineWalletVisible) &&
            (identical(other.walletPayoutMin, walletPayoutMin) || other.walletPayoutMin == walletPayoutMin) &&
            (identical(other.redEnvelopeVisible, redEnvelopeVisible) || other.redEnvelopeVisible == redEnvelopeVisible) &&
            (identical(other.transferVisible, transferVisible) || other.transferVisible == transferVisible) &&
            (identical(other.transferMinAmount, transferMinAmount) || other.transferMinAmount == transferMinAmount) &&
            (identical(other.mobileEditMsg, mobileEditMsg) || other.mobileEditMsg == mobileEditMsg) &&
            (identical(other.groupMemberSeeMember, groupMemberSeeMember) || other.groupMemberSeeMember == groupMemberSeeMember) &&
            (identical(other.msgTimeVisible, msgTimeVisible) || other.msgTimeVisible == msgTimeVisible) &&
            (identical(other.pinnedConversationSync, pinnedConversationSync) || other.pinnedConversationSync == pinnedConversationSync) &&
            (identical(other.onlyInternalFriendAdd, onlyInternalFriendAdd) || other.onlyInternalFriendAdd == onlyInternalFriendAdd) &&
            (identical(other.onlyInternalFriendCreateGroup, onlyInternalFriendCreateGroup) || other.onlyInternalFriendCreateGroup == onlyInternalFriendCreateGroup) &&
            (identical(other.onlyInternalFriendSendGroupRedEnvelope, onlyInternalFriendSendGroupRedEnvelope) || other.onlyInternalFriendSendGroupRedEnvelope == onlyInternalFriendSendGroupRedEnvelope) &&
            (identical(other.onlyInternalFriendSendGroupCard, onlyInternalFriendSendGroupCard) || other.onlyInternalFriendSendGroupCard == onlyInternalFriendSendGroupCard) &&
            (identical(other.onlyInternalFriendGroupRobotFreeMsg, onlyInternalFriendGroupRobotFreeMsg) || other.onlyInternalFriendGroupRobotFreeMsg == onlyInternalFriendGroupRobotFreeMsg) &&
            (identical(other.groupMemberLimit, groupMemberLimit) || other.groupMemberLimit == groupMemberLimit) &&
            (identical(other.userAgreementContent, userAgreementContent) || other.userAgreementContent == userAgreementContent) &&
            (identical(other.privacyPolicyContent, privacyPolicyContent) || other.privacyPolicyContent == privacyPolicyContent) &&
            (identical(other.momentsVisible, momentsVisible) || other.momentsVisible == momentsVisible));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        rsaPublicKey,
        version,
        superToken,
        superTokenOn,
        welcomeMessage,
        newUserJoinSystemGroup,
        searchByPhone,
        registerInviteOn,
        sendWelcomeMessageOn,
        inviteSystemAccountJoinGroupOn,
        registerUserMustCompleteInfoOn,
        channelPinnedMessageMaxCount,
        canModifyApiUrl,
        shortnoEditOff,
        revokeSecond,
        ipWhiteList,
        loginType,
        sensitiveWords,
        disableChangeDevice,
        signupDeviceLimit,
        sigleIpRegisterLimitIn12hour,
        autoClearHistoryMsg,
        miniProgramVisible,
        discoveryVisible,
        chargeAndPayoutVisible,
        voiceCallVisible,
        videoCallVisible,
        signinAuthCodeVisible,
        friendOnlineStatusVisible,
        mobileMsgReadStatusVisible,
        signRedEnvelopeVisible,
        mineWalletVisible,
        walletPayoutMin,
        redEnvelopeVisible,
        transferVisible,
        transferMinAmount,
        mobileEditMsg,
        groupMemberSeeMember,
        msgTimeVisible,
        pinnedConversationSync,
        onlyInternalFriendAdd,
        onlyInternalFriendCreateGroup,
        onlyInternalFriendSendGroupRedEnvelope,
        onlyInternalFriendSendGroupCard,
        onlyInternalFriendGroupRobotFreeMsg,
        groupMemberLimit,
        userAgreementContent,
        privacyPolicyContent,
        momentsVisible
      ]);

  @override
  String toString() {
    return 'AppConfig(rsaPublicKey: $rsaPublicKey, version: $version, superToken: $superToken, superTokenOn: $superTokenOn, welcomeMessage: $welcomeMessage, newUserJoinSystemGroup: $newUserJoinSystemGroup, searchByPhone: $searchByPhone, registerInviteOn: $registerInviteOn, sendWelcomeMessageOn: $sendWelcomeMessageOn, inviteSystemAccountJoinGroupOn: $inviteSystemAccountJoinGroupOn, registerUserMustCompleteInfoOn: $registerUserMustCompleteInfoOn, channelPinnedMessageMaxCount: $channelPinnedMessageMaxCount, canModifyApiUrl: $canModifyApiUrl, shortnoEditOff: $shortnoEditOff, revokeSecond: $revokeSecond, ipWhiteList: $ipWhiteList, loginType: $loginType, sensitiveWords: $sensitiveWords, disableChangeDevice: $disableChangeDevice, signupDeviceLimit: $signupDeviceLimit, sigleIpRegisterLimitIn12hour: $sigleIpRegisterLimitIn12hour, autoClearHistoryMsg: $autoClearHistoryMsg, miniProgramVisible: $miniProgramVisible, discoveryVisible: $discoveryVisible, chargeAndPayoutVisible: $chargeAndPayoutVisible, voiceCallVisible: $voiceCallVisible, videoCallVisible: $videoCallVisible, signinAuthCodeVisible: $signinAuthCodeVisible, friendOnlineStatusVisible: $friendOnlineStatusVisible, mobileMsgReadStatusVisible: $mobileMsgReadStatusVisible, signRedEnvelopeVisible: $signRedEnvelopeVisible, mineWalletVisible: $mineWalletVisible, walletPayoutMin: $walletPayoutMin, redEnvelopeVisible: $redEnvelopeVisible, transferVisible: $transferVisible, transferMinAmount: $transferMinAmount, mobileEditMsg: $mobileEditMsg, groupMemberSeeMember: $groupMemberSeeMember, msgTimeVisible: $msgTimeVisible, pinnedConversationSync: $pinnedConversationSync, onlyInternalFriendAdd: $onlyInternalFriendAdd, onlyInternalFriendCreateGroup: $onlyInternalFriendCreateGroup, onlyInternalFriendSendGroupRedEnvelope: $onlyInternalFriendSendGroupRedEnvelope, onlyInternalFriendSendGroupCard: $onlyInternalFriendSendGroupCard, onlyInternalFriendGroupRobotFreeMsg: $onlyInternalFriendGroupRobotFreeMsg, groupMemberLimit: $groupMemberLimit, userAgreementContent: $userAgreementContent, privacyPolicyContent: $privacyPolicyContent, momentsVisible: $momentsVisible)';
  }
}

/// @nodoc
abstract mixin class _$AppConfigCopyWith<$Res>
    implements $AppConfigCopyWith<$Res> {
  factory _$AppConfigCopyWith(
          _AppConfig value, $Res Function(_AppConfig) _then) =
      __$AppConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String rsaPublicKey,
      int version,
      String superToken,
      int superTokenOn,
      String welcomeMessage,
      int newUserJoinSystemGroup,
      int searchByPhone,
      int registerInviteOn,
      int sendWelcomeMessageOn,
      int inviteSystemAccountJoinGroupOn,
      int registerUserMustCompleteInfoOn,
      int channelPinnedMessageMaxCount,
      int canModifyApiUrl,
      int shortnoEditOff,
      int revokeSecond,
      String ipWhiteList,
      int loginType,
      String sensitiveWords,
      int disableChangeDevice,
      int signupDeviceLimit,
      int sigleIpRegisterLimitIn12hour,
      int autoClearHistoryMsg,
      int miniProgramVisible,
      int discoveryVisible,
      int chargeAndPayoutVisible,
      int voiceCallVisible,
      int videoCallVisible,
      int signinAuthCodeVisible,
      int friendOnlineStatusVisible,
      int mobileMsgReadStatusVisible,
      int signRedEnvelopeVisible,
      int mineWalletVisible,
      int walletPayoutMin,
      int redEnvelopeVisible,
      int transferVisible,
      int transferMinAmount,
      int mobileEditMsg,
      int groupMemberSeeMember,
      int msgTimeVisible,
      int pinnedConversationSync,
      int onlyInternalFriendAdd,
      int onlyInternalFriendCreateGroup,
      int onlyInternalFriendSendGroupRedEnvelope,
      int onlyInternalFriendSendGroupCard,
      int onlyInternalFriendGroupRobotFreeMsg,
      int groupMemberLimit,
      String userAgreementContent,
      String privacyPolicyContent,
      int momentsVisible});
}

/// @nodoc
class __$AppConfigCopyWithImpl<$Res> implements _$AppConfigCopyWith<$Res> {
  __$AppConfigCopyWithImpl(this._self, this._then);

  final _AppConfig _self;
  final $Res Function(_AppConfig) _then;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rsaPublicKey = null,
    Object? version = null,
    Object? superToken = null,
    Object? superTokenOn = null,
    Object? welcomeMessage = null,
    Object? newUserJoinSystemGroup = null,
    Object? searchByPhone = null,
    Object? registerInviteOn = null,
    Object? sendWelcomeMessageOn = null,
    Object? inviteSystemAccountJoinGroupOn = null,
    Object? registerUserMustCompleteInfoOn = null,
    Object? channelPinnedMessageMaxCount = null,
    Object? canModifyApiUrl = null,
    Object? shortnoEditOff = null,
    Object? revokeSecond = null,
    Object? ipWhiteList = null,
    Object? loginType = null,
    Object? sensitiveWords = null,
    Object? disableChangeDevice = null,
    Object? signupDeviceLimit = null,
    Object? sigleIpRegisterLimitIn12hour = null,
    Object? autoClearHistoryMsg = null,
    Object? miniProgramVisible = null,
    Object? discoveryVisible = null,
    Object? chargeAndPayoutVisible = null,
    Object? voiceCallVisible = null,
    Object? videoCallVisible = null,
    Object? signinAuthCodeVisible = null,
    Object? friendOnlineStatusVisible = null,
    Object? mobileMsgReadStatusVisible = null,
    Object? signRedEnvelopeVisible = null,
    Object? mineWalletVisible = null,
    Object? walletPayoutMin = null,
    Object? redEnvelopeVisible = null,
    Object? transferVisible = null,
    Object? transferMinAmount = null,
    Object? mobileEditMsg = null,
    Object? groupMemberSeeMember = null,
    Object? msgTimeVisible = null,
    Object? pinnedConversationSync = null,
    Object? onlyInternalFriendAdd = null,
    Object? onlyInternalFriendCreateGroup = null,
    Object? onlyInternalFriendSendGroupRedEnvelope = null,
    Object? onlyInternalFriendSendGroupCard = null,
    Object? onlyInternalFriendGroupRobotFreeMsg = null,
    Object? groupMemberLimit = null,
    Object? userAgreementContent = null,
    Object? privacyPolicyContent = null,
    Object? momentsVisible = null,
  }) {
    return _then(_AppConfig(
      rsaPublicKey: null == rsaPublicKey
          ? _self.rsaPublicKey
          : rsaPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      superToken: null == superToken
          ? _self.superToken
          : superToken // ignore: cast_nullable_to_non_nullable
              as String,
      superTokenOn: null == superTokenOn
          ? _self.superTokenOn
          : superTokenOn // ignore: cast_nullable_to_non_nullable
              as int,
      welcomeMessage: null == welcomeMessage
          ? _self.welcomeMessage
          : welcomeMessage // ignore: cast_nullable_to_non_nullable
              as String,
      newUserJoinSystemGroup: null == newUserJoinSystemGroup
          ? _self.newUserJoinSystemGroup
          : newUserJoinSystemGroup // ignore: cast_nullable_to_non_nullable
              as int,
      searchByPhone: null == searchByPhone
          ? _self.searchByPhone
          : searchByPhone // ignore: cast_nullable_to_non_nullable
              as int,
      registerInviteOn: null == registerInviteOn
          ? _self.registerInviteOn
          : registerInviteOn // ignore: cast_nullable_to_non_nullable
              as int,
      sendWelcomeMessageOn: null == sendWelcomeMessageOn
          ? _self.sendWelcomeMessageOn
          : sendWelcomeMessageOn // ignore: cast_nullable_to_non_nullable
              as int,
      inviteSystemAccountJoinGroupOn: null == inviteSystemAccountJoinGroupOn
          ? _self.inviteSystemAccountJoinGroupOn
          : inviteSystemAccountJoinGroupOn // ignore: cast_nullable_to_non_nullable
              as int,
      registerUserMustCompleteInfoOn: null == registerUserMustCompleteInfoOn
          ? _self.registerUserMustCompleteInfoOn
          : registerUserMustCompleteInfoOn // ignore: cast_nullable_to_non_nullable
              as int,
      channelPinnedMessageMaxCount: null == channelPinnedMessageMaxCount
          ? _self.channelPinnedMessageMaxCount
          : channelPinnedMessageMaxCount // ignore: cast_nullable_to_non_nullable
              as int,
      canModifyApiUrl: null == canModifyApiUrl
          ? _self.canModifyApiUrl
          : canModifyApiUrl // ignore: cast_nullable_to_non_nullable
              as int,
      shortnoEditOff: null == shortnoEditOff
          ? _self.shortnoEditOff
          : shortnoEditOff // ignore: cast_nullable_to_non_nullable
              as int,
      revokeSecond: null == revokeSecond
          ? _self.revokeSecond
          : revokeSecond // ignore: cast_nullable_to_non_nullable
              as int,
      ipWhiteList: null == ipWhiteList
          ? _self.ipWhiteList
          : ipWhiteList // ignore: cast_nullable_to_non_nullable
              as String,
      loginType: null == loginType
          ? _self.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as int,
      sensitiveWords: null == sensitiveWords
          ? _self.sensitiveWords
          : sensitiveWords // ignore: cast_nullable_to_non_nullable
              as String,
      disableChangeDevice: null == disableChangeDevice
          ? _self.disableChangeDevice
          : disableChangeDevice // ignore: cast_nullable_to_non_nullable
              as int,
      signupDeviceLimit: null == signupDeviceLimit
          ? _self.signupDeviceLimit
          : signupDeviceLimit // ignore: cast_nullable_to_non_nullable
              as int,
      sigleIpRegisterLimitIn12hour: null == sigleIpRegisterLimitIn12hour
          ? _self.sigleIpRegisterLimitIn12hour
          : sigleIpRegisterLimitIn12hour // ignore: cast_nullable_to_non_nullable
              as int,
      autoClearHistoryMsg: null == autoClearHistoryMsg
          ? _self.autoClearHistoryMsg
          : autoClearHistoryMsg // ignore: cast_nullable_to_non_nullable
              as int,
      miniProgramVisible: null == miniProgramVisible
          ? _self.miniProgramVisible
          : miniProgramVisible // ignore: cast_nullable_to_non_nullable
              as int,
      discoveryVisible: null == discoveryVisible
          ? _self.discoveryVisible
          : discoveryVisible // ignore: cast_nullable_to_non_nullable
              as int,
      chargeAndPayoutVisible: null == chargeAndPayoutVisible
          ? _self.chargeAndPayoutVisible
          : chargeAndPayoutVisible // ignore: cast_nullable_to_non_nullable
              as int,
      voiceCallVisible: null == voiceCallVisible
          ? _self.voiceCallVisible
          : voiceCallVisible // ignore: cast_nullable_to_non_nullable
              as int,
      videoCallVisible: null == videoCallVisible
          ? _self.videoCallVisible
          : videoCallVisible // ignore: cast_nullable_to_non_nullable
              as int,
      signinAuthCodeVisible: null == signinAuthCodeVisible
          ? _self.signinAuthCodeVisible
          : signinAuthCodeVisible // ignore: cast_nullable_to_non_nullable
              as int,
      friendOnlineStatusVisible: null == friendOnlineStatusVisible
          ? _self.friendOnlineStatusVisible
          : friendOnlineStatusVisible // ignore: cast_nullable_to_non_nullable
              as int,
      mobileMsgReadStatusVisible: null == mobileMsgReadStatusVisible
          ? _self.mobileMsgReadStatusVisible
          : mobileMsgReadStatusVisible // ignore: cast_nullable_to_non_nullable
              as int,
      signRedEnvelopeVisible: null == signRedEnvelopeVisible
          ? _self.signRedEnvelopeVisible
          : signRedEnvelopeVisible // ignore: cast_nullable_to_non_nullable
              as int,
      mineWalletVisible: null == mineWalletVisible
          ? _self.mineWalletVisible
          : mineWalletVisible // ignore: cast_nullable_to_non_nullable
              as int,
      walletPayoutMin: null == walletPayoutMin
          ? _self.walletPayoutMin
          : walletPayoutMin // ignore: cast_nullable_to_non_nullable
              as int,
      redEnvelopeVisible: null == redEnvelopeVisible
          ? _self.redEnvelopeVisible
          : redEnvelopeVisible // ignore: cast_nullable_to_non_nullable
              as int,
      transferVisible: null == transferVisible
          ? _self.transferVisible
          : transferVisible // ignore: cast_nullable_to_non_nullable
              as int,
      transferMinAmount: null == transferMinAmount
          ? _self.transferMinAmount
          : transferMinAmount // ignore: cast_nullable_to_non_nullable
              as int,
      mobileEditMsg: null == mobileEditMsg
          ? _self.mobileEditMsg
          : mobileEditMsg // ignore: cast_nullable_to_non_nullable
              as int,
      groupMemberSeeMember: null == groupMemberSeeMember
          ? _self.groupMemberSeeMember
          : groupMemberSeeMember // ignore: cast_nullable_to_non_nullable
              as int,
      msgTimeVisible: null == msgTimeVisible
          ? _self.msgTimeVisible
          : msgTimeVisible // ignore: cast_nullable_to_non_nullable
              as int,
      pinnedConversationSync: null == pinnedConversationSync
          ? _self.pinnedConversationSync
          : pinnedConversationSync // ignore: cast_nullable_to_non_nullable
              as int,
      onlyInternalFriendAdd: null == onlyInternalFriendAdd
          ? _self.onlyInternalFriendAdd
          : onlyInternalFriendAdd // ignore: cast_nullable_to_non_nullable
              as int,
      onlyInternalFriendCreateGroup: null == onlyInternalFriendCreateGroup
          ? _self.onlyInternalFriendCreateGroup
          : onlyInternalFriendCreateGroup // ignore: cast_nullable_to_non_nullable
              as int,
      onlyInternalFriendSendGroupRedEnvelope: null ==
              onlyInternalFriendSendGroupRedEnvelope
          ? _self.onlyInternalFriendSendGroupRedEnvelope
          : onlyInternalFriendSendGroupRedEnvelope // ignore: cast_nullable_to_non_nullable
              as int,
      onlyInternalFriendSendGroupCard: null == onlyInternalFriendSendGroupCard
          ? _self.onlyInternalFriendSendGroupCard
          : onlyInternalFriendSendGroupCard // ignore: cast_nullable_to_non_nullable
              as int,
      onlyInternalFriendGroupRobotFreeMsg: null ==
              onlyInternalFriendGroupRobotFreeMsg
          ? _self.onlyInternalFriendGroupRobotFreeMsg
          : onlyInternalFriendGroupRobotFreeMsg // ignore: cast_nullable_to_non_nullable
              as int,
      groupMemberLimit: null == groupMemberLimit
          ? _self.groupMemberLimit
          : groupMemberLimit // ignore: cast_nullable_to_non_nullable
              as int,
      userAgreementContent: null == userAgreementContent
          ? _self.userAgreementContent
          : userAgreementContent // ignore: cast_nullable_to_non_nullable
              as String,
      privacyPolicyContent: null == privacyPolicyContent
          ? _self.privacyPolicyContent
          : privacyPolicyContent // ignore: cast_nullable_to_non_nullable
              as String,
      momentsVisible: null == momentsVisible
          ? _self.momentsVisible
          : momentsVisible // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
