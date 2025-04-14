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

@JsonKey(name: 'rsa_public_key') String get rsaPublicKey;// 公钥
@JsonKey(name: 'version') int get version;// 版本
@JsonKey(name: 'super_token') String get superToken;// 超级token
@JsonKey(name: 'super_token_on') int get superTokenOn;// 超级token是否开启
@JsonKey(name: 'welcome_message') String get welcomeMessage;// 登录欢迎语
@JsonKey(name: 'new_user_join_system_group') int get newUserJoinSystemGroup;// 新用户是否加入系统群聊
@JsonKey(name: 'search_by_phone') int get searchByPhone;// 是否可通过手机号搜索
@JsonKey(name: 'register_invite_on') int get registerInviteOn;// 是否开启注册邀请
@JsonKey(name: 'send_welcome_message_on') int get sendWelcomeMessageOn;// 是否发送登录欢迎语
@JsonKey(name: 'invite_system_account_join_group_on') int get inviteSystemAccountJoinGroupOn;// 是否允许邀请系统账号进入群聊
@JsonKey(name: 'register_user_must_complete_info_on') int get registerUserMustCompleteInfoOn;// 是否要求注册用户必须填写完整信息
@JsonKey(name: 'channel_pinned_message_max_count') int get channelPinnedMessageMaxCount;// 频道置顶消息最大数量
@JsonKey(name: 'can_modify_api_url') int get canModifyApiUrl;// 是否可以修改API地址
@JsonKey(name: 'shortno_edit_off') int get shortnoEditOff;// 是否关闭短编号编辑
@JsonKey(name: 'revoke_second') int get revokeSecond;// 消息可撤回时长
@JsonKey(name: 'ip_white_list') String get ipWhiteList;// 后台IP白名单
@JsonKey(name: 'login_type') int get loginType;// app登录类型
@JsonKey(name: 'sensitive_words') String get sensitiveWords;// 敏感词
@JsonKey(name: 'disable_change_device') int get disableChangeDevice;// 是否禁止更换设备
@JsonKey(name: 'signup_device_limit') int get signupDeviceLimit;// 设备限制注册限制数
@JsonKey(name: 'sigle_ip_register_limit_in12hour') int get sigleIpRegisterLimitIn12hour;// 单IP12小时注册限制数
@JsonKey(name: 'auto_clear_history_msg') int get autoClearHistoryMsg;// 自动清除几天前历史消息
@JsonKey(name: 'mini_program_visible') int get miniProgramVisible;// 小程序页是否可见
@JsonKey(name: 'discovery_visible') int get discoveryVisible;// 发现页是否可见
@JsonKey(name: 'charge_and_payout_visible') int get chargeAndPayoutVisible;// 充值和提现是否可见
@JsonKey(name: 'voice_call_visible') int get voiceCallVisible;// 语音通话是否可见
@JsonKey(name: 'video_call_visible') int get videoCallVisible;// 视频通话是否可见
@JsonKey(name: 'signup_invite_code_visible') int get signupInviteCodeVisible;// 注册邀请码是否可见
@JsonKey(name: 'signin_auth_code_visible') int get signinAuthCodeVisible;// 登录授权码是否可见
@JsonKey(name: 'friend_online_status_visible') int get friendOnlineStatusVisible;// 好友在线状态是否可见
@JsonKey(name: 'mobile_msg_read_status_visible') int get mobileMsgReadStatusVisible;// 手机消息已读状态是否可见
@JsonKey(name: 'sign_red_envelope_visible') int get signRedEnvelopeVisible;// 签到红包模块是否开启
@JsonKey(name: 'mine_wallet_visible') int get mineWalletVisible;// 我的钱包是否开启
@JsonKey(name: 'wallet_payout_min') int get walletPayoutMin;// 钱包提现最小金额
@JsonKey(name: 'red_envelope_visible') int get redEnvelopeVisible;// 红包模块是否开启
@JsonKey(name: 'transfer_visible') int get transferVisible;// 转账模块是否开启
@JsonKey(name: 'transfer_min_amount') int get transferMinAmount;// 转账最小金额
@JsonKey(name: 'mobile_edit_msg') int get mobileEditMsg;// 手机端是否可以编辑消息
@JsonKey(name: 'group_member_see_member') int get groupMemberSeeMember;// 普通群成员是否可以查看其他群成员
@JsonKey(name: 'msg_time_visible') int get msgTimeVisible;// 消息时间是否可见
@JsonKey(name: 'pinned_conversation_sync') int get pinnedConversationSync;// 置顶会话是否同步
@JsonKey(name: 'only_internal_friend_add') int get onlyInternalFriendAdd;// 仅内部号可被加好友及加非内部号好友
@JsonKey(name: 'only_internal_friend_create_group') int get onlyInternalFriendCreateGroup;// 仅内部号可建群
@JsonKey(name: 'only_internal_friend_send_group_red_envelope') int get onlyInternalFriendSendGroupRedEnvelope;// 仅内部号可发群红包
@JsonKey(name: 'only_internal_friend_send_group_card') int get onlyInternalFriendSendGroupCard;// 仅内部号可群内推送名片
@JsonKey(name: 'only_internal_friend_group_robot_free_msg') int get onlyInternalFriendGroupRobotFreeMsg;// 群机器人免消息
@JsonKey(name: 'group_member_limit') int get groupMemberLimit;// 群人数限制
@JsonKey(name: 'user_agreement_content') String get userAgreementContent;// 用户协议内容
@JsonKey(name: 'privacy_policy_content') String get privacyPolicyContent;// 隐私政策内容
@JsonKey(name: 'moments_visible') int get momentsVisible;
/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppConfigCopyWith<AppConfig> get copyWith => _$AppConfigCopyWithImpl<AppConfig>(this as AppConfig, _$identity);

  /// Serializes this AppConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppConfig&&(identical(other.rsaPublicKey, rsaPublicKey) || other.rsaPublicKey == rsaPublicKey)&&(identical(other.version, version) || other.version == version)&&(identical(other.superToken, superToken) || other.superToken == superToken)&&(identical(other.superTokenOn, superTokenOn) || other.superTokenOn == superTokenOn)&&(identical(other.welcomeMessage, welcomeMessage) || other.welcomeMessage == welcomeMessage)&&(identical(other.newUserJoinSystemGroup, newUserJoinSystemGroup) || other.newUserJoinSystemGroup == newUserJoinSystemGroup)&&(identical(other.searchByPhone, searchByPhone) || other.searchByPhone == searchByPhone)&&(identical(other.registerInviteOn, registerInviteOn) || other.registerInviteOn == registerInviteOn)&&(identical(other.sendWelcomeMessageOn, sendWelcomeMessageOn) || other.sendWelcomeMessageOn == sendWelcomeMessageOn)&&(identical(other.inviteSystemAccountJoinGroupOn, inviteSystemAccountJoinGroupOn) || other.inviteSystemAccountJoinGroupOn == inviteSystemAccountJoinGroupOn)&&(identical(other.registerUserMustCompleteInfoOn, registerUserMustCompleteInfoOn) || other.registerUserMustCompleteInfoOn == registerUserMustCompleteInfoOn)&&(identical(other.channelPinnedMessageMaxCount, channelPinnedMessageMaxCount) || other.channelPinnedMessageMaxCount == channelPinnedMessageMaxCount)&&(identical(other.canModifyApiUrl, canModifyApiUrl) || other.canModifyApiUrl == canModifyApiUrl)&&(identical(other.shortnoEditOff, shortnoEditOff) || other.shortnoEditOff == shortnoEditOff)&&(identical(other.revokeSecond, revokeSecond) || other.revokeSecond == revokeSecond)&&(identical(other.ipWhiteList, ipWhiteList) || other.ipWhiteList == ipWhiteList)&&(identical(other.loginType, loginType) || other.loginType == loginType)&&(identical(other.sensitiveWords, sensitiveWords) || other.sensitiveWords == sensitiveWords)&&(identical(other.disableChangeDevice, disableChangeDevice) || other.disableChangeDevice == disableChangeDevice)&&(identical(other.signupDeviceLimit, signupDeviceLimit) || other.signupDeviceLimit == signupDeviceLimit)&&(identical(other.sigleIpRegisterLimitIn12hour, sigleIpRegisterLimitIn12hour) || other.sigleIpRegisterLimitIn12hour == sigleIpRegisterLimitIn12hour)&&(identical(other.autoClearHistoryMsg, autoClearHistoryMsg) || other.autoClearHistoryMsg == autoClearHistoryMsg)&&(identical(other.miniProgramVisible, miniProgramVisible) || other.miniProgramVisible == miniProgramVisible)&&(identical(other.discoveryVisible, discoveryVisible) || other.discoveryVisible == discoveryVisible)&&(identical(other.chargeAndPayoutVisible, chargeAndPayoutVisible) || other.chargeAndPayoutVisible == chargeAndPayoutVisible)&&(identical(other.voiceCallVisible, voiceCallVisible) || other.voiceCallVisible == voiceCallVisible)&&(identical(other.videoCallVisible, videoCallVisible) || other.videoCallVisible == videoCallVisible)&&(identical(other.signupInviteCodeVisible, signupInviteCodeVisible) || other.signupInviteCodeVisible == signupInviteCodeVisible)&&(identical(other.signinAuthCodeVisible, signinAuthCodeVisible) || other.signinAuthCodeVisible == signinAuthCodeVisible)&&(identical(other.friendOnlineStatusVisible, friendOnlineStatusVisible) || other.friendOnlineStatusVisible == friendOnlineStatusVisible)&&(identical(other.mobileMsgReadStatusVisible, mobileMsgReadStatusVisible) || other.mobileMsgReadStatusVisible == mobileMsgReadStatusVisible)&&(identical(other.signRedEnvelopeVisible, signRedEnvelopeVisible) || other.signRedEnvelopeVisible == signRedEnvelopeVisible)&&(identical(other.mineWalletVisible, mineWalletVisible) || other.mineWalletVisible == mineWalletVisible)&&(identical(other.walletPayoutMin, walletPayoutMin) || other.walletPayoutMin == walletPayoutMin)&&(identical(other.redEnvelopeVisible, redEnvelopeVisible) || other.redEnvelopeVisible == redEnvelopeVisible)&&(identical(other.transferVisible, transferVisible) || other.transferVisible == transferVisible)&&(identical(other.transferMinAmount, transferMinAmount) || other.transferMinAmount == transferMinAmount)&&(identical(other.mobileEditMsg, mobileEditMsg) || other.mobileEditMsg == mobileEditMsg)&&(identical(other.groupMemberSeeMember, groupMemberSeeMember) || other.groupMemberSeeMember == groupMemberSeeMember)&&(identical(other.msgTimeVisible, msgTimeVisible) || other.msgTimeVisible == msgTimeVisible)&&(identical(other.pinnedConversationSync, pinnedConversationSync) || other.pinnedConversationSync == pinnedConversationSync)&&(identical(other.onlyInternalFriendAdd, onlyInternalFriendAdd) || other.onlyInternalFriendAdd == onlyInternalFriendAdd)&&(identical(other.onlyInternalFriendCreateGroup, onlyInternalFriendCreateGroup) || other.onlyInternalFriendCreateGroup == onlyInternalFriendCreateGroup)&&(identical(other.onlyInternalFriendSendGroupRedEnvelope, onlyInternalFriendSendGroupRedEnvelope) || other.onlyInternalFriendSendGroupRedEnvelope == onlyInternalFriendSendGroupRedEnvelope)&&(identical(other.onlyInternalFriendSendGroupCard, onlyInternalFriendSendGroupCard) || other.onlyInternalFriendSendGroupCard == onlyInternalFriendSendGroupCard)&&(identical(other.onlyInternalFriendGroupRobotFreeMsg, onlyInternalFriendGroupRobotFreeMsg) || other.onlyInternalFriendGroupRobotFreeMsg == onlyInternalFriendGroupRobotFreeMsg)&&(identical(other.groupMemberLimit, groupMemberLimit) || other.groupMemberLimit == groupMemberLimit)&&(identical(other.userAgreementContent, userAgreementContent) || other.userAgreementContent == userAgreementContent)&&(identical(other.privacyPolicyContent, privacyPolicyContent) || other.privacyPolicyContent == privacyPolicyContent)&&(identical(other.momentsVisible, momentsVisible) || other.momentsVisible == momentsVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,rsaPublicKey,version,superToken,superTokenOn,welcomeMessage,newUserJoinSystemGroup,searchByPhone,registerInviteOn,sendWelcomeMessageOn,inviteSystemAccountJoinGroupOn,registerUserMustCompleteInfoOn,channelPinnedMessageMaxCount,canModifyApiUrl,shortnoEditOff,revokeSecond,ipWhiteList,loginType,sensitiveWords,disableChangeDevice,signupDeviceLimit,sigleIpRegisterLimitIn12hour,autoClearHistoryMsg,miniProgramVisible,discoveryVisible,chargeAndPayoutVisible,voiceCallVisible,videoCallVisible,signupInviteCodeVisible,signinAuthCodeVisible,friendOnlineStatusVisible,mobileMsgReadStatusVisible,signRedEnvelopeVisible,mineWalletVisible,walletPayoutMin,redEnvelopeVisible,transferVisible,transferMinAmount,mobileEditMsg,groupMemberSeeMember,msgTimeVisible,pinnedConversationSync,onlyInternalFriendAdd,onlyInternalFriendCreateGroup,onlyInternalFriendSendGroupRedEnvelope,onlyInternalFriendSendGroupCard,onlyInternalFriendGroupRobotFreeMsg,groupMemberLimit,userAgreementContent,privacyPolicyContent,momentsVisible]);

@override
String toString() {
  return 'AppConfig(rsaPublicKey: $rsaPublicKey, version: $version, superToken: $superToken, superTokenOn: $superTokenOn, welcomeMessage: $welcomeMessage, newUserJoinSystemGroup: $newUserJoinSystemGroup, searchByPhone: $searchByPhone, registerInviteOn: $registerInviteOn, sendWelcomeMessageOn: $sendWelcomeMessageOn, inviteSystemAccountJoinGroupOn: $inviteSystemAccountJoinGroupOn, registerUserMustCompleteInfoOn: $registerUserMustCompleteInfoOn, channelPinnedMessageMaxCount: $channelPinnedMessageMaxCount, canModifyApiUrl: $canModifyApiUrl, shortnoEditOff: $shortnoEditOff, revokeSecond: $revokeSecond, ipWhiteList: $ipWhiteList, loginType: $loginType, sensitiveWords: $sensitiveWords, disableChangeDevice: $disableChangeDevice, signupDeviceLimit: $signupDeviceLimit, sigleIpRegisterLimitIn12hour: $sigleIpRegisterLimitIn12hour, autoClearHistoryMsg: $autoClearHistoryMsg, miniProgramVisible: $miniProgramVisible, discoveryVisible: $discoveryVisible, chargeAndPayoutVisible: $chargeAndPayoutVisible, voiceCallVisible: $voiceCallVisible, videoCallVisible: $videoCallVisible, signupInviteCodeVisible: $signupInviteCodeVisible, signinAuthCodeVisible: $signinAuthCodeVisible, friendOnlineStatusVisible: $friendOnlineStatusVisible, mobileMsgReadStatusVisible: $mobileMsgReadStatusVisible, signRedEnvelopeVisible: $signRedEnvelopeVisible, mineWalletVisible: $mineWalletVisible, walletPayoutMin: $walletPayoutMin, redEnvelopeVisible: $redEnvelopeVisible, transferVisible: $transferVisible, transferMinAmount: $transferMinAmount, mobileEditMsg: $mobileEditMsg, groupMemberSeeMember: $groupMemberSeeMember, msgTimeVisible: $msgTimeVisible, pinnedConversationSync: $pinnedConversationSync, onlyInternalFriendAdd: $onlyInternalFriendAdd, onlyInternalFriendCreateGroup: $onlyInternalFriendCreateGroup, onlyInternalFriendSendGroupRedEnvelope: $onlyInternalFriendSendGroupRedEnvelope, onlyInternalFriendSendGroupCard: $onlyInternalFriendSendGroupCard, onlyInternalFriendGroupRobotFreeMsg: $onlyInternalFriendGroupRobotFreeMsg, groupMemberLimit: $groupMemberLimit, userAgreementContent: $userAgreementContent, privacyPolicyContent: $privacyPolicyContent, momentsVisible: $momentsVisible)';
}


}

/// @nodoc
abstract mixin class $AppConfigCopyWith<$Res>  {
  factory $AppConfigCopyWith(AppConfig value, $Res Function(AppConfig) _then) = _$AppConfigCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'rsa_public_key') String rsaPublicKey,@JsonKey(name: 'version') int version,@JsonKey(name: 'super_token') String superToken,@JsonKey(name: 'super_token_on') int superTokenOn,@JsonKey(name: 'welcome_message') String welcomeMessage,@JsonKey(name: 'new_user_join_system_group') int newUserJoinSystemGroup,@JsonKey(name: 'search_by_phone') int searchByPhone,@JsonKey(name: 'register_invite_on') int registerInviteOn,@JsonKey(name: 'send_welcome_message_on') int sendWelcomeMessageOn,@JsonKey(name: 'invite_system_account_join_group_on') int inviteSystemAccountJoinGroupOn,@JsonKey(name: 'register_user_must_complete_info_on') int registerUserMustCompleteInfoOn,@JsonKey(name: 'channel_pinned_message_max_count') int channelPinnedMessageMaxCount,@JsonKey(name: 'can_modify_api_url') int canModifyApiUrl,@JsonKey(name: 'shortno_edit_off') int shortnoEditOff,@JsonKey(name: 'revoke_second') int revokeSecond,@JsonKey(name: 'ip_white_list') String ipWhiteList,@JsonKey(name: 'login_type') int loginType,@JsonKey(name: 'sensitive_words') String sensitiveWords,@JsonKey(name: 'disable_change_device') int disableChangeDevice,@JsonKey(name: 'signup_device_limit') int signupDeviceLimit,@JsonKey(name: 'sigle_ip_register_limit_in12hour') int sigleIpRegisterLimitIn12hour,@JsonKey(name: 'auto_clear_history_msg') int autoClearHistoryMsg,@JsonKey(name: 'mini_program_visible') int miniProgramVisible,@JsonKey(name: 'discovery_visible') int discoveryVisible,@JsonKey(name: 'charge_and_payout_visible') int chargeAndPayoutVisible,@JsonKey(name: 'voice_call_visible') int voiceCallVisible,@JsonKey(name: 'video_call_visible') int videoCallVisible,@JsonKey(name: 'signup_invite_code_visible') int signupInviteCodeVisible,@JsonKey(name: 'signin_auth_code_visible') int signinAuthCodeVisible,@JsonKey(name: 'friend_online_status_visible') int friendOnlineStatusVisible,@JsonKey(name: 'mobile_msg_read_status_visible') int mobileMsgReadStatusVisible,@JsonKey(name: 'sign_red_envelope_visible') int signRedEnvelopeVisible,@JsonKey(name: 'mine_wallet_visible') int mineWalletVisible,@JsonKey(name: 'wallet_payout_min') int walletPayoutMin,@JsonKey(name: 'red_envelope_visible') int redEnvelopeVisible,@JsonKey(name: 'transfer_visible') int transferVisible,@JsonKey(name: 'transfer_min_amount') int transferMinAmount,@JsonKey(name: 'mobile_edit_msg') int mobileEditMsg,@JsonKey(name: 'group_member_see_member') int groupMemberSeeMember,@JsonKey(name: 'msg_time_visible') int msgTimeVisible,@JsonKey(name: 'pinned_conversation_sync') int pinnedConversationSync,@JsonKey(name: 'only_internal_friend_add') int onlyInternalFriendAdd,@JsonKey(name: 'only_internal_friend_create_group') int onlyInternalFriendCreateGroup,@JsonKey(name: 'only_internal_friend_send_group_red_envelope') int onlyInternalFriendSendGroupRedEnvelope,@JsonKey(name: 'only_internal_friend_send_group_card') int onlyInternalFriendSendGroupCard,@JsonKey(name: 'only_internal_friend_group_robot_free_msg') int onlyInternalFriendGroupRobotFreeMsg,@JsonKey(name: 'group_member_limit') int groupMemberLimit,@JsonKey(name: 'user_agreement_content') String userAgreementContent,@JsonKey(name: 'privacy_policy_content') String privacyPolicyContent,@JsonKey(name: 'moments_visible') int momentsVisible
});




}
/// @nodoc
class _$AppConfigCopyWithImpl<$Res>
    implements $AppConfigCopyWith<$Res> {
  _$AppConfigCopyWithImpl(this._self, this._then);

  final AppConfig _self;
  final $Res Function(AppConfig) _then;

/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rsaPublicKey = null,Object? version = null,Object? superToken = null,Object? superTokenOn = null,Object? welcomeMessage = null,Object? newUserJoinSystemGroup = null,Object? searchByPhone = null,Object? registerInviteOn = null,Object? sendWelcomeMessageOn = null,Object? inviteSystemAccountJoinGroupOn = null,Object? registerUserMustCompleteInfoOn = null,Object? channelPinnedMessageMaxCount = null,Object? canModifyApiUrl = null,Object? shortnoEditOff = null,Object? revokeSecond = null,Object? ipWhiteList = null,Object? loginType = null,Object? sensitiveWords = null,Object? disableChangeDevice = null,Object? signupDeviceLimit = null,Object? sigleIpRegisterLimitIn12hour = null,Object? autoClearHistoryMsg = null,Object? miniProgramVisible = null,Object? discoveryVisible = null,Object? chargeAndPayoutVisible = null,Object? voiceCallVisible = null,Object? videoCallVisible = null,Object? signupInviteCodeVisible = null,Object? signinAuthCodeVisible = null,Object? friendOnlineStatusVisible = null,Object? mobileMsgReadStatusVisible = null,Object? signRedEnvelopeVisible = null,Object? mineWalletVisible = null,Object? walletPayoutMin = null,Object? redEnvelopeVisible = null,Object? transferVisible = null,Object? transferMinAmount = null,Object? mobileEditMsg = null,Object? groupMemberSeeMember = null,Object? msgTimeVisible = null,Object? pinnedConversationSync = null,Object? onlyInternalFriendAdd = null,Object? onlyInternalFriendCreateGroup = null,Object? onlyInternalFriendSendGroupRedEnvelope = null,Object? onlyInternalFriendSendGroupCard = null,Object? onlyInternalFriendGroupRobotFreeMsg = null,Object? groupMemberLimit = null,Object? userAgreementContent = null,Object? privacyPolicyContent = null,Object? momentsVisible = null,}) {
  return _then(_self.copyWith(
rsaPublicKey: null == rsaPublicKey ? _self.rsaPublicKey : rsaPublicKey // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,superToken: null == superToken ? _self.superToken : superToken // ignore: cast_nullable_to_non_nullable
as String,superTokenOn: null == superTokenOn ? _self.superTokenOn : superTokenOn // ignore: cast_nullable_to_non_nullable
as int,welcomeMessage: null == welcomeMessage ? _self.welcomeMessage : welcomeMessage // ignore: cast_nullable_to_non_nullable
as String,newUserJoinSystemGroup: null == newUserJoinSystemGroup ? _self.newUserJoinSystemGroup : newUserJoinSystemGroup // ignore: cast_nullable_to_non_nullable
as int,searchByPhone: null == searchByPhone ? _self.searchByPhone : searchByPhone // ignore: cast_nullable_to_non_nullable
as int,registerInviteOn: null == registerInviteOn ? _self.registerInviteOn : registerInviteOn // ignore: cast_nullable_to_non_nullable
as int,sendWelcomeMessageOn: null == sendWelcomeMessageOn ? _self.sendWelcomeMessageOn : sendWelcomeMessageOn // ignore: cast_nullable_to_non_nullable
as int,inviteSystemAccountJoinGroupOn: null == inviteSystemAccountJoinGroupOn ? _self.inviteSystemAccountJoinGroupOn : inviteSystemAccountJoinGroupOn // ignore: cast_nullable_to_non_nullable
as int,registerUserMustCompleteInfoOn: null == registerUserMustCompleteInfoOn ? _self.registerUserMustCompleteInfoOn : registerUserMustCompleteInfoOn // ignore: cast_nullable_to_non_nullable
as int,channelPinnedMessageMaxCount: null == channelPinnedMessageMaxCount ? _self.channelPinnedMessageMaxCount : channelPinnedMessageMaxCount // ignore: cast_nullable_to_non_nullable
as int,canModifyApiUrl: null == canModifyApiUrl ? _self.canModifyApiUrl : canModifyApiUrl // ignore: cast_nullable_to_non_nullable
as int,shortnoEditOff: null == shortnoEditOff ? _self.shortnoEditOff : shortnoEditOff // ignore: cast_nullable_to_non_nullable
as int,revokeSecond: null == revokeSecond ? _self.revokeSecond : revokeSecond // ignore: cast_nullable_to_non_nullable
as int,ipWhiteList: null == ipWhiteList ? _self.ipWhiteList : ipWhiteList // ignore: cast_nullable_to_non_nullable
as String,loginType: null == loginType ? _self.loginType : loginType // ignore: cast_nullable_to_non_nullable
as int,sensitiveWords: null == sensitiveWords ? _self.sensitiveWords : sensitiveWords // ignore: cast_nullable_to_non_nullable
as String,disableChangeDevice: null == disableChangeDevice ? _self.disableChangeDevice : disableChangeDevice // ignore: cast_nullable_to_non_nullable
as int,signupDeviceLimit: null == signupDeviceLimit ? _self.signupDeviceLimit : signupDeviceLimit // ignore: cast_nullable_to_non_nullable
as int,sigleIpRegisterLimitIn12hour: null == sigleIpRegisterLimitIn12hour ? _self.sigleIpRegisterLimitIn12hour : sigleIpRegisterLimitIn12hour // ignore: cast_nullable_to_non_nullable
as int,autoClearHistoryMsg: null == autoClearHistoryMsg ? _self.autoClearHistoryMsg : autoClearHistoryMsg // ignore: cast_nullable_to_non_nullable
as int,miniProgramVisible: null == miniProgramVisible ? _self.miniProgramVisible : miniProgramVisible // ignore: cast_nullable_to_non_nullable
as int,discoveryVisible: null == discoveryVisible ? _self.discoveryVisible : discoveryVisible // ignore: cast_nullable_to_non_nullable
as int,chargeAndPayoutVisible: null == chargeAndPayoutVisible ? _self.chargeAndPayoutVisible : chargeAndPayoutVisible // ignore: cast_nullable_to_non_nullable
as int,voiceCallVisible: null == voiceCallVisible ? _self.voiceCallVisible : voiceCallVisible // ignore: cast_nullable_to_non_nullable
as int,videoCallVisible: null == videoCallVisible ? _self.videoCallVisible : videoCallVisible // ignore: cast_nullable_to_non_nullable
as int,signupInviteCodeVisible: null == signupInviteCodeVisible ? _self.signupInviteCodeVisible : signupInviteCodeVisible // ignore: cast_nullable_to_non_nullable
as int,signinAuthCodeVisible: null == signinAuthCodeVisible ? _self.signinAuthCodeVisible : signinAuthCodeVisible // ignore: cast_nullable_to_non_nullable
as int,friendOnlineStatusVisible: null == friendOnlineStatusVisible ? _self.friendOnlineStatusVisible : friendOnlineStatusVisible // ignore: cast_nullable_to_non_nullable
as int,mobileMsgReadStatusVisible: null == mobileMsgReadStatusVisible ? _self.mobileMsgReadStatusVisible : mobileMsgReadStatusVisible // ignore: cast_nullable_to_non_nullable
as int,signRedEnvelopeVisible: null == signRedEnvelopeVisible ? _self.signRedEnvelopeVisible : signRedEnvelopeVisible // ignore: cast_nullable_to_non_nullable
as int,mineWalletVisible: null == mineWalletVisible ? _self.mineWalletVisible : mineWalletVisible // ignore: cast_nullable_to_non_nullable
as int,walletPayoutMin: null == walletPayoutMin ? _self.walletPayoutMin : walletPayoutMin // ignore: cast_nullable_to_non_nullable
as int,redEnvelopeVisible: null == redEnvelopeVisible ? _self.redEnvelopeVisible : redEnvelopeVisible // ignore: cast_nullable_to_non_nullable
as int,transferVisible: null == transferVisible ? _self.transferVisible : transferVisible // ignore: cast_nullable_to_non_nullable
as int,transferMinAmount: null == transferMinAmount ? _self.transferMinAmount : transferMinAmount // ignore: cast_nullable_to_non_nullable
as int,mobileEditMsg: null == mobileEditMsg ? _self.mobileEditMsg : mobileEditMsg // ignore: cast_nullable_to_non_nullable
as int,groupMemberSeeMember: null == groupMemberSeeMember ? _self.groupMemberSeeMember : groupMemberSeeMember // ignore: cast_nullable_to_non_nullable
as int,msgTimeVisible: null == msgTimeVisible ? _self.msgTimeVisible : msgTimeVisible // ignore: cast_nullable_to_non_nullable
as int,pinnedConversationSync: null == pinnedConversationSync ? _self.pinnedConversationSync : pinnedConversationSync // ignore: cast_nullable_to_non_nullable
as int,onlyInternalFriendAdd: null == onlyInternalFriendAdd ? _self.onlyInternalFriendAdd : onlyInternalFriendAdd // ignore: cast_nullable_to_non_nullable
as int,onlyInternalFriendCreateGroup: null == onlyInternalFriendCreateGroup ? _self.onlyInternalFriendCreateGroup : onlyInternalFriendCreateGroup // ignore: cast_nullable_to_non_nullable
as int,onlyInternalFriendSendGroupRedEnvelope: null == onlyInternalFriendSendGroupRedEnvelope ? _self.onlyInternalFriendSendGroupRedEnvelope : onlyInternalFriendSendGroupRedEnvelope // ignore: cast_nullable_to_non_nullable
as int,onlyInternalFriendSendGroupCard: null == onlyInternalFriendSendGroupCard ? _self.onlyInternalFriendSendGroupCard : onlyInternalFriendSendGroupCard // ignore: cast_nullable_to_non_nullable
as int,onlyInternalFriendGroupRobotFreeMsg: null == onlyInternalFriendGroupRobotFreeMsg ? _self.onlyInternalFriendGroupRobotFreeMsg : onlyInternalFriendGroupRobotFreeMsg // ignore: cast_nullable_to_non_nullable
as int,groupMemberLimit: null == groupMemberLimit ? _self.groupMemberLimit : groupMemberLimit // ignore: cast_nullable_to_non_nullable
as int,userAgreementContent: null == userAgreementContent ? _self.userAgreementContent : userAgreementContent // ignore: cast_nullable_to_non_nullable
as String,privacyPolicyContent: null == privacyPolicyContent ? _self.privacyPolicyContent : privacyPolicyContent // ignore: cast_nullable_to_non_nullable
as String,momentsVisible: null == momentsVisible ? _self.momentsVisible : momentsVisible // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AppConfig implements AppConfig {
  const _AppConfig({@JsonKey(name: 'rsa_public_key') required this.rsaPublicKey, @JsonKey(name: 'version') required this.version, @JsonKey(name: 'super_token') required this.superToken, @JsonKey(name: 'super_token_on') required this.superTokenOn, @JsonKey(name: 'welcome_message') required this.welcomeMessage, @JsonKey(name: 'new_user_join_system_group') required this.newUserJoinSystemGroup, @JsonKey(name: 'search_by_phone') required this.searchByPhone, @JsonKey(name: 'register_invite_on') required this.registerInviteOn, @JsonKey(name: 'send_welcome_message_on') required this.sendWelcomeMessageOn, @JsonKey(name: 'invite_system_account_join_group_on') required this.inviteSystemAccountJoinGroupOn, @JsonKey(name: 'register_user_must_complete_info_on') required this.registerUserMustCompleteInfoOn, @JsonKey(name: 'channel_pinned_message_max_count') required this.channelPinnedMessageMaxCount, @JsonKey(name: 'can_modify_api_url') required this.canModifyApiUrl, @JsonKey(name: 'shortno_edit_off') required this.shortnoEditOff, @JsonKey(name: 'revoke_second') required this.revokeSecond, @JsonKey(name: 'ip_white_list') required this.ipWhiteList, @JsonKey(name: 'login_type') required this.loginType, @JsonKey(name: 'sensitive_words') required this.sensitiveWords, @JsonKey(name: 'disable_change_device') required this.disableChangeDevice, @JsonKey(name: 'signup_device_limit') required this.signupDeviceLimit, @JsonKey(name: 'sigle_ip_register_limit_in12hour') required this.sigleIpRegisterLimitIn12hour, @JsonKey(name: 'auto_clear_history_msg') required this.autoClearHistoryMsg, @JsonKey(name: 'mini_program_visible') required this.miniProgramVisible, @JsonKey(name: 'discovery_visible') required this.discoveryVisible, @JsonKey(name: 'charge_and_payout_visible') required this.chargeAndPayoutVisible, @JsonKey(name: 'voice_call_visible') required this.voiceCallVisible, @JsonKey(name: 'video_call_visible') required this.videoCallVisible, @JsonKey(name: 'signup_invite_code_visible') required this.signupInviteCodeVisible, @JsonKey(name: 'signin_auth_code_visible') required this.signinAuthCodeVisible, @JsonKey(name: 'friend_online_status_visible') required this.friendOnlineStatusVisible, @JsonKey(name: 'mobile_msg_read_status_visible') required this.mobileMsgReadStatusVisible, @JsonKey(name: 'sign_red_envelope_visible') required this.signRedEnvelopeVisible, @JsonKey(name: 'mine_wallet_visible') required this.mineWalletVisible, @JsonKey(name: 'wallet_payout_min') required this.walletPayoutMin, @JsonKey(name: 'red_envelope_visible') required this.redEnvelopeVisible, @JsonKey(name: 'transfer_visible') required this.transferVisible, @JsonKey(name: 'transfer_min_amount') required this.transferMinAmount, @JsonKey(name: 'mobile_edit_msg') required this.mobileEditMsg, @JsonKey(name: 'group_member_see_member') required this.groupMemberSeeMember, @JsonKey(name: 'msg_time_visible') required this.msgTimeVisible, @JsonKey(name: 'pinned_conversation_sync') required this.pinnedConversationSync, @JsonKey(name: 'only_internal_friend_add') required this.onlyInternalFriendAdd, @JsonKey(name: 'only_internal_friend_create_group') required this.onlyInternalFriendCreateGroup, @JsonKey(name: 'only_internal_friend_send_group_red_envelope') required this.onlyInternalFriendSendGroupRedEnvelope, @JsonKey(name: 'only_internal_friend_send_group_card') required this.onlyInternalFriendSendGroupCard, @JsonKey(name: 'only_internal_friend_group_robot_free_msg') required this.onlyInternalFriendGroupRobotFreeMsg, @JsonKey(name: 'group_member_limit') required this.groupMemberLimit, @JsonKey(name: 'user_agreement_content') required this.userAgreementContent, @JsonKey(name: 'privacy_policy_content') required this.privacyPolicyContent, @JsonKey(name: 'moments_visible') required this.momentsVisible});
  factory _AppConfig.fromJson(Map<String, dynamic> json) => _$AppConfigFromJson(json);

@override@JsonKey(name: 'rsa_public_key') final  String rsaPublicKey;
// 公钥
@override@JsonKey(name: 'version') final  int version;
// 版本
@override@JsonKey(name: 'super_token') final  String superToken;
// 超级token
@override@JsonKey(name: 'super_token_on') final  int superTokenOn;
// 超级token是否开启
@override@JsonKey(name: 'welcome_message') final  String welcomeMessage;
// 登录欢迎语
@override@JsonKey(name: 'new_user_join_system_group') final  int newUserJoinSystemGroup;
// 新用户是否加入系统群聊
@override@JsonKey(name: 'search_by_phone') final  int searchByPhone;
// 是否可通过手机号搜索
@override@JsonKey(name: 'register_invite_on') final  int registerInviteOn;
// 是否开启注册邀请
@override@JsonKey(name: 'send_welcome_message_on') final  int sendWelcomeMessageOn;
// 是否发送登录欢迎语
@override@JsonKey(name: 'invite_system_account_join_group_on') final  int inviteSystemAccountJoinGroupOn;
// 是否允许邀请系统账号进入群聊
@override@JsonKey(name: 'register_user_must_complete_info_on') final  int registerUserMustCompleteInfoOn;
// 是否要求注册用户必须填写完整信息
@override@JsonKey(name: 'channel_pinned_message_max_count') final  int channelPinnedMessageMaxCount;
// 频道置顶消息最大数量
@override@JsonKey(name: 'can_modify_api_url') final  int canModifyApiUrl;
// 是否可以修改API地址
@override@JsonKey(name: 'shortno_edit_off') final  int shortnoEditOff;
// 是否关闭短编号编辑
@override@JsonKey(name: 'revoke_second') final  int revokeSecond;
// 消息可撤回时长
@override@JsonKey(name: 'ip_white_list') final  String ipWhiteList;
// 后台IP白名单
@override@JsonKey(name: 'login_type') final  int loginType;
// app登录类型
@override@JsonKey(name: 'sensitive_words') final  String sensitiveWords;
// 敏感词
@override@JsonKey(name: 'disable_change_device') final  int disableChangeDevice;
// 是否禁止更换设备
@override@JsonKey(name: 'signup_device_limit') final  int signupDeviceLimit;
// 设备限制注册限制数
@override@JsonKey(name: 'sigle_ip_register_limit_in12hour') final  int sigleIpRegisterLimitIn12hour;
// 单IP12小时注册限制数
@override@JsonKey(name: 'auto_clear_history_msg') final  int autoClearHistoryMsg;
// 自动清除几天前历史消息
@override@JsonKey(name: 'mini_program_visible') final  int miniProgramVisible;
// 小程序页是否可见
@override@JsonKey(name: 'discovery_visible') final  int discoveryVisible;
// 发现页是否可见
@override@JsonKey(name: 'charge_and_payout_visible') final  int chargeAndPayoutVisible;
// 充值和提现是否可见
@override@JsonKey(name: 'voice_call_visible') final  int voiceCallVisible;
// 语音通话是否可见
@override@JsonKey(name: 'video_call_visible') final  int videoCallVisible;
// 视频通话是否可见
@override@JsonKey(name: 'signup_invite_code_visible') final  int signupInviteCodeVisible;
// 注册邀请码是否可见
@override@JsonKey(name: 'signin_auth_code_visible') final  int signinAuthCodeVisible;
// 登录授权码是否可见
@override@JsonKey(name: 'friend_online_status_visible') final  int friendOnlineStatusVisible;
// 好友在线状态是否可见
@override@JsonKey(name: 'mobile_msg_read_status_visible') final  int mobileMsgReadStatusVisible;
// 手机消息已读状态是否可见
@override@JsonKey(name: 'sign_red_envelope_visible') final  int signRedEnvelopeVisible;
// 签到红包模块是否开启
@override@JsonKey(name: 'mine_wallet_visible') final  int mineWalletVisible;
// 我的钱包是否开启
@override@JsonKey(name: 'wallet_payout_min') final  int walletPayoutMin;
// 钱包提现最小金额
@override@JsonKey(name: 'red_envelope_visible') final  int redEnvelopeVisible;
// 红包模块是否开启
@override@JsonKey(name: 'transfer_visible') final  int transferVisible;
// 转账模块是否开启
@override@JsonKey(name: 'transfer_min_amount') final  int transferMinAmount;
// 转账最小金额
@override@JsonKey(name: 'mobile_edit_msg') final  int mobileEditMsg;
// 手机端是否可以编辑消息
@override@JsonKey(name: 'group_member_see_member') final  int groupMemberSeeMember;
// 普通群成员是否可以查看其他群成员
@override@JsonKey(name: 'msg_time_visible') final  int msgTimeVisible;
// 消息时间是否可见
@override@JsonKey(name: 'pinned_conversation_sync') final  int pinnedConversationSync;
// 置顶会话是否同步
@override@JsonKey(name: 'only_internal_friend_add') final  int onlyInternalFriendAdd;
// 仅内部号可被加好友及加非内部号好友
@override@JsonKey(name: 'only_internal_friend_create_group') final  int onlyInternalFriendCreateGroup;
// 仅内部号可建群
@override@JsonKey(name: 'only_internal_friend_send_group_red_envelope') final  int onlyInternalFriendSendGroupRedEnvelope;
// 仅内部号可发群红包
@override@JsonKey(name: 'only_internal_friend_send_group_card') final  int onlyInternalFriendSendGroupCard;
// 仅内部号可群内推送名片
@override@JsonKey(name: 'only_internal_friend_group_robot_free_msg') final  int onlyInternalFriendGroupRobotFreeMsg;
// 群机器人免消息
@override@JsonKey(name: 'group_member_limit') final  int groupMemberLimit;
// 群人数限制
@override@JsonKey(name: 'user_agreement_content') final  String userAgreementContent;
// 用户协议内容
@override@JsonKey(name: 'privacy_policy_content') final  String privacyPolicyContent;
// 隐私政策内容
@override@JsonKey(name: 'moments_visible') final  int momentsVisible;

/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppConfigCopyWith<_AppConfig> get copyWith => __$AppConfigCopyWithImpl<_AppConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppConfig&&(identical(other.rsaPublicKey, rsaPublicKey) || other.rsaPublicKey == rsaPublicKey)&&(identical(other.version, version) || other.version == version)&&(identical(other.superToken, superToken) || other.superToken == superToken)&&(identical(other.superTokenOn, superTokenOn) || other.superTokenOn == superTokenOn)&&(identical(other.welcomeMessage, welcomeMessage) || other.welcomeMessage == welcomeMessage)&&(identical(other.newUserJoinSystemGroup, newUserJoinSystemGroup) || other.newUserJoinSystemGroup == newUserJoinSystemGroup)&&(identical(other.searchByPhone, searchByPhone) || other.searchByPhone == searchByPhone)&&(identical(other.registerInviteOn, registerInviteOn) || other.registerInviteOn == registerInviteOn)&&(identical(other.sendWelcomeMessageOn, sendWelcomeMessageOn) || other.sendWelcomeMessageOn == sendWelcomeMessageOn)&&(identical(other.inviteSystemAccountJoinGroupOn, inviteSystemAccountJoinGroupOn) || other.inviteSystemAccountJoinGroupOn == inviteSystemAccountJoinGroupOn)&&(identical(other.registerUserMustCompleteInfoOn, registerUserMustCompleteInfoOn) || other.registerUserMustCompleteInfoOn == registerUserMustCompleteInfoOn)&&(identical(other.channelPinnedMessageMaxCount, channelPinnedMessageMaxCount) || other.channelPinnedMessageMaxCount == channelPinnedMessageMaxCount)&&(identical(other.canModifyApiUrl, canModifyApiUrl) || other.canModifyApiUrl == canModifyApiUrl)&&(identical(other.shortnoEditOff, shortnoEditOff) || other.shortnoEditOff == shortnoEditOff)&&(identical(other.revokeSecond, revokeSecond) || other.revokeSecond == revokeSecond)&&(identical(other.ipWhiteList, ipWhiteList) || other.ipWhiteList == ipWhiteList)&&(identical(other.loginType, loginType) || other.loginType == loginType)&&(identical(other.sensitiveWords, sensitiveWords) || other.sensitiveWords == sensitiveWords)&&(identical(other.disableChangeDevice, disableChangeDevice) || other.disableChangeDevice == disableChangeDevice)&&(identical(other.signupDeviceLimit, signupDeviceLimit) || other.signupDeviceLimit == signupDeviceLimit)&&(identical(other.sigleIpRegisterLimitIn12hour, sigleIpRegisterLimitIn12hour) || other.sigleIpRegisterLimitIn12hour == sigleIpRegisterLimitIn12hour)&&(identical(other.autoClearHistoryMsg, autoClearHistoryMsg) || other.autoClearHistoryMsg == autoClearHistoryMsg)&&(identical(other.miniProgramVisible, miniProgramVisible) || other.miniProgramVisible == miniProgramVisible)&&(identical(other.discoveryVisible, discoveryVisible) || other.discoveryVisible == discoveryVisible)&&(identical(other.chargeAndPayoutVisible, chargeAndPayoutVisible) || other.chargeAndPayoutVisible == chargeAndPayoutVisible)&&(identical(other.voiceCallVisible, voiceCallVisible) || other.voiceCallVisible == voiceCallVisible)&&(identical(other.videoCallVisible, videoCallVisible) || other.videoCallVisible == videoCallVisible)&&(identical(other.signupInviteCodeVisible, signupInviteCodeVisible) || other.signupInviteCodeVisible == signupInviteCodeVisible)&&(identical(other.signinAuthCodeVisible, signinAuthCodeVisible) || other.signinAuthCodeVisible == signinAuthCodeVisible)&&(identical(other.friendOnlineStatusVisible, friendOnlineStatusVisible) || other.friendOnlineStatusVisible == friendOnlineStatusVisible)&&(identical(other.mobileMsgReadStatusVisible, mobileMsgReadStatusVisible) || other.mobileMsgReadStatusVisible == mobileMsgReadStatusVisible)&&(identical(other.signRedEnvelopeVisible, signRedEnvelopeVisible) || other.signRedEnvelopeVisible == signRedEnvelopeVisible)&&(identical(other.mineWalletVisible, mineWalletVisible) || other.mineWalletVisible == mineWalletVisible)&&(identical(other.walletPayoutMin, walletPayoutMin) || other.walletPayoutMin == walletPayoutMin)&&(identical(other.redEnvelopeVisible, redEnvelopeVisible) || other.redEnvelopeVisible == redEnvelopeVisible)&&(identical(other.transferVisible, transferVisible) || other.transferVisible == transferVisible)&&(identical(other.transferMinAmount, transferMinAmount) || other.transferMinAmount == transferMinAmount)&&(identical(other.mobileEditMsg, mobileEditMsg) || other.mobileEditMsg == mobileEditMsg)&&(identical(other.groupMemberSeeMember, groupMemberSeeMember) || other.groupMemberSeeMember == groupMemberSeeMember)&&(identical(other.msgTimeVisible, msgTimeVisible) || other.msgTimeVisible == msgTimeVisible)&&(identical(other.pinnedConversationSync, pinnedConversationSync) || other.pinnedConversationSync == pinnedConversationSync)&&(identical(other.onlyInternalFriendAdd, onlyInternalFriendAdd) || other.onlyInternalFriendAdd == onlyInternalFriendAdd)&&(identical(other.onlyInternalFriendCreateGroup, onlyInternalFriendCreateGroup) || other.onlyInternalFriendCreateGroup == onlyInternalFriendCreateGroup)&&(identical(other.onlyInternalFriendSendGroupRedEnvelope, onlyInternalFriendSendGroupRedEnvelope) || other.onlyInternalFriendSendGroupRedEnvelope == onlyInternalFriendSendGroupRedEnvelope)&&(identical(other.onlyInternalFriendSendGroupCard, onlyInternalFriendSendGroupCard) || other.onlyInternalFriendSendGroupCard == onlyInternalFriendSendGroupCard)&&(identical(other.onlyInternalFriendGroupRobotFreeMsg, onlyInternalFriendGroupRobotFreeMsg) || other.onlyInternalFriendGroupRobotFreeMsg == onlyInternalFriendGroupRobotFreeMsg)&&(identical(other.groupMemberLimit, groupMemberLimit) || other.groupMemberLimit == groupMemberLimit)&&(identical(other.userAgreementContent, userAgreementContent) || other.userAgreementContent == userAgreementContent)&&(identical(other.privacyPolicyContent, privacyPolicyContent) || other.privacyPolicyContent == privacyPolicyContent)&&(identical(other.momentsVisible, momentsVisible) || other.momentsVisible == momentsVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,rsaPublicKey,version,superToken,superTokenOn,welcomeMessage,newUserJoinSystemGroup,searchByPhone,registerInviteOn,sendWelcomeMessageOn,inviteSystemAccountJoinGroupOn,registerUserMustCompleteInfoOn,channelPinnedMessageMaxCount,canModifyApiUrl,shortnoEditOff,revokeSecond,ipWhiteList,loginType,sensitiveWords,disableChangeDevice,signupDeviceLimit,sigleIpRegisterLimitIn12hour,autoClearHistoryMsg,miniProgramVisible,discoveryVisible,chargeAndPayoutVisible,voiceCallVisible,videoCallVisible,signupInviteCodeVisible,signinAuthCodeVisible,friendOnlineStatusVisible,mobileMsgReadStatusVisible,signRedEnvelopeVisible,mineWalletVisible,walletPayoutMin,redEnvelopeVisible,transferVisible,transferMinAmount,mobileEditMsg,groupMemberSeeMember,msgTimeVisible,pinnedConversationSync,onlyInternalFriendAdd,onlyInternalFriendCreateGroup,onlyInternalFriendSendGroupRedEnvelope,onlyInternalFriendSendGroupCard,onlyInternalFriendGroupRobotFreeMsg,groupMemberLimit,userAgreementContent,privacyPolicyContent,momentsVisible]);

@override
String toString() {
  return 'AppConfig(rsaPublicKey: $rsaPublicKey, version: $version, superToken: $superToken, superTokenOn: $superTokenOn, welcomeMessage: $welcomeMessage, newUserJoinSystemGroup: $newUserJoinSystemGroup, searchByPhone: $searchByPhone, registerInviteOn: $registerInviteOn, sendWelcomeMessageOn: $sendWelcomeMessageOn, inviteSystemAccountJoinGroupOn: $inviteSystemAccountJoinGroupOn, registerUserMustCompleteInfoOn: $registerUserMustCompleteInfoOn, channelPinnedMessageMaxCount: $channelPinnedMessageMaxCount, canModifyApiUrl: $canModifyApiUrl, shortnoEditOff: $shortnoEditOff, revokeSecond: $revokeSecond, ipWhiteList: $ipWhiteList, loginType: $loginType, sensitiveWords: $sensitiveWords, disableChangeDevice: $disableChangeDevice, signupDeviceLimit: $signupDeviceLimit, sigleIpRegisterLimitIn12hour: $sigleIpRegisterLimitIn12hour, autoClearHistoryMsg: $autoClearHistoryMsg, miniProgramVisible: $miniProgramVisible, discoveryVisible: $discoveryVisible, chargeAndPayoutVisible: $chargeAndPayoutVisible, voiceCallVisible: $voiceCallVisible, videoCallVisible: $videoCallVisible, signupInviteCodeVisible: $signupInviteCodeVisible, signinAuthCodeVisible: $signinAuthCodeVisible, friendOnlineStatusVisible: $friendOnlineStatusVisible, mobileMsgReadStatusVisible: $mobileMsgReadStatusVisible, signRedEnvelopeVisible: $signRedEnvelopeVisible, mineWalletVisible: $mineWalletVisible, walletPayoutMin: $walletPayoutMin, redEnvelopeVisible: $redEnvelopeVisible, transferVisible: $transferVisible, transferMinAmount: $transferMinAmount, mobileEditMsg: $mobileEditMsg, groupMemberSeeMember: $groupMemberSeeMember, msgTimeVisible: $msgTimeVisible, pinnedConversationSync: $pinnedConversationSync, onlyInternalFriendAdd: $onlyInternalFriendAdd, onlyInternalFriendCreateGroup: $onlyInternalFriendCreateGroup, onlyInternalFriendSendGroupRedEnvelope: $onlyInternalFriendSendGroupRedEnvelope, onlyInternalFriendSendGroupCard: $onlyInternalFriendSendGroupCard, onlyInternalFriendGroupRobotFreeMsg: $onlyInternalFriendGroupRobotFreeMsg, groupMemberLimit: $groupMemberLimit, userAgreementContent: $userAgreementContent, privacyPolicyContent: $privacyPolicyContent, momentsVisible: $momentsVisible)';
}


}

/// @nodoc
abstract mixin class _$AppConfigCopyWith<$Res> implements $AppConfigCopyWith<$Res> {
  factory _$AppConfigCopyWith(_AppConfig value, $Res Function(_AppConfig) _then) = __$AppConfigCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'rsa_public_key') String rsaPublicKey,@JsonKey(name: 'version') int version,@JsonKey(name: 'super_token') String superToken,@JsonKey(name: 'super_token_on') int superTokenOn,@JsonKey(name: 'welcome_message') String welcomeMessage,@JsonKey(name: 'new_user_join_system_group') int newUserJoinSystemGroup,@JsonKey(name: 'search_by_phone') int searchByPhone,@JsonKey(name: 'register_invite_on') int registerInviteOn,@JsonKey(name: 'send_welcome_message_on') int sendWelcomeMessageOn,@JsonKey(name: 'invite_system_account_join_group_on') int inviteSystemAccountJoinGroupOn,@JsonKey(name: 'register_user_must_complete_info_on') int registerUserMustCompleteInfoOn,@JsonKey(name: 'channel_pinned_message_max_count') int channelPinnedMessageMaxCount,@JsonKey(name: 'can_modify_api_url') int canModifyApiUrl,@JsonKey(name: 'shortno_edit_off') int shortnoEditOff,@JsonKey(name: 'revoke_second') int revokeSecond,@JsonKey(name: 'ip_white_list') String ipWhiteList,@JsonKey(name: 'login_type') int loginType,@JsonKey(name: 'sensitive_words') String sensitiveWords,@JsonKey(name: 'disable_change_device') int disableChangeDevice,@JsonKey(name: 'signup_device_limit') int signupDeviceLimit,@JsonKey(name: 'sigle_ip_register_limit_in12hour') int sigleIpRegisterLimitIn12hour,@JsonKey(name: 'auto_clear_history_msg') int autoClearHistoryMsg,@JsonKey(name: 'mini_program_visible') int miniProgramVisible,@JsonKey(name: 'discovery_visible') int discoveryVisible,@JsonKey(name: 'charge_and_payout_visible') int chargeAndPayoutVisible,@JsonKey(name: 'voice_call_visible') int voiceCallVisible,@JsonKey(name: 'video_call_visible') int videoCallVisible,@JsonKey(name: 'signup_invite_code_visible') int signupInviteCodeVisible,@JsonKey(name: 'signin_auth_code_visible') int signinAuthCodeVisible,@JsonKey(name: 'friend_online_status_visible') int friendOnlineStatusVisible,@JsonKey(name: 'mobile_msg_read_status_visible') int mobileMsgReadStatusVisible,@JsonKey(name: 'sign_red_envelope_visible') int signRedEnvelopeVisible,@JsonKey(name: 'mine_wallet_visible') int mineWalletVisible,@JsonKey(name: 'wallet_payout_min') int walletPayoutMin,@JsonKey(name: 'red_envelope_visible') int redEnvelopeVisible,@JsonKey(name: 'transfer_visible') int transferVisible,@JsonKey(name: 'transfer_min_amount') int transferMinAmount,@JsonKey(name: 'mobile_edit_msg') int mobileEditMsg,@JsonKey(name: 'group_member_see_member') int groupMemberSeeMember,@JsonKey(name: 'msg_time_visible') int msgTimeVisible,@JsonKey(name: 'pinned_conversation_sync') int pinnedConversationSync,@JsonKey(name: 'only_internal_friend_add') int onlyInternalFriendAdd,@JsonKey(name: 'only_internal_friend_create_group') int onlyInternalFriendCreateGroup,@JsonKey(name: 'only_internal_friend_send_group_red_envelope') int onlyInternalFriendSendGroupRedEnvelope,@JsonKey(name: 'only_internal_friend_send_group_card') int onlyInternalFriendSendGroupCard,@JsonKey(name: 'only_internal_friend_group_robot_free_msg') int onlyInternalFriendGroupRobotFreeMsg,@JsonKey(name: 'group_member_limit') int groupMemberLimit,@JsonKey(name: 'user_agreement_content') String userAgreementContent,@JsonKey(name: 'privacy_policy_content') String privacyPolicyContent,@JsonKey(name: 'moments_visible') int momentsVisible
});




}
/// @nodoc
class __$AppConfigCopyWithImpl<$Res>
    implements _$AppConfigCopyWith<$Res> {
  __$AppConfigCopyWithImpl(this._self, this._then);

  final _AppConfig _self;
  final $Res Function(_AppConfig) _then;

/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rsaPublicKey = null,Object? version = null,Object? superToken = null,Object? superTokenOn = null,Object? welcomeMessage = null,Object? newUserJoinSystemGroup = null,Object? searchByPhone = null,Object? registerInviteOn = null,Object? sendWelcomeMessageOn = null,Object? inviteSystemAccountJoinGroupOn = null,Object? registerUserMustCompleteInfoOn = null,Object? channelPinnedMessageMaxCount = null,Object? canModifyApiUrl = null,Object? shortnoEditOff = null,Object? revokeSecond = null,Object? ipWhiteList = null,Object? loginType = null,Object? sensitiveWords = null,Object? disableChangeDevice = null,Object? signupDeviceLimit = null,Object? sigleIpRegisterLimitIn12hour = null,Object? autoClearHistoryMsg = null,Object? miniProgramVisible = null,Object? discoveryVisible = null,Object? chargeAndPayoutVisible = null,Object? voiceCallVisible = null,Object? videoCallVisible = null,Object? signupInviteCodeVisible = null,Object? signinAuthCodeVisible = null,Object? friendOnlineStatusVisible = null,Object? mobileMsgReadStatusVisible = null,Object? signRedEnvelopeVisible = null,Object? mineWalletVisible = null,Object? walletPayoutMin = null,Object? redEnvelopeVisible = null,Object? transferVisible = null,Object? transferMinAmount = null,Object? mobileEditMsg = null,Object? groupMemberSeeMember = null,Object? msgTimeVisible = null,Object? pinnedConversationSync = null,Object? onlyInternalFriendAdd = null,Object? onlyInternalFriendCreateGroup = null,Object? onlyInternalFriendSendGroupRedEnvelope = null,Object? onlyInternalFriendSendGroupCard = null,Object? onlyInternalFriendGroupRobotFreeMsg = null,Object? groupMemberLimit = null,Object? userAgreementContent = null,Object? privacyPolicyContent = null,Object? momentsVisible = null,}) {
  return _then(_AppConfig(
rsaPublicKey: null == rsaPublicKey ? _self.rsaPublicKey : rsaPublicKey // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,superToken: null == superToken ? _self.superToken : superToken // ignore: cast_nullable_to_non_nullable
as String,superTokenOn: null == superTokenOn ? _self.superTokenOn : superTokenOn // ignore: cast_nullable_to_non_nullable
as int,welcomeMessage: null == welcomeMessage ? _self.welcomeMessage : welcomeMessage // ignore: cast_nullable_to_non_nullable
as String,newUserJoinSystemGroup: null == newUserJoinSystemGroup ? _self.newUserJoinSystemGroup : newUserJoinSystemGroup // ignore: cast_nullable_to_non_nullable
as int,searchByPhone: null == searchByPhone ? _self.searchByPhone : searchByPhone // ignore: cast_nullable_to_non_nullable
as int,registerInviteOn: null == registerInviteOn ? _self.registerInviteOn : registerInviteOn // ignore: cast_nullable_to_non_nullable
as int,sendWelcomeMessageOn: null == sendWelcomeMessageOn ? _self.sendWelcomeMessageOn : sendWelcomeMessageOn // ignore: cast_nullable_to_non_nullable
as int,inviteSystemAccountJoinGroupOn: null == inviteSystemAccountJoinGroupOn ? _self.inviteSystemAccountJoinGroupOn : inviteSystemAccountJoinGroupOn // ignore: cast_nullable_to_non_nullable
as int,registerUserMustCompleteInfoOn: null == registerUserMustCompleteInfoOn ? _self.registerUserMustCompleteInfoOn : registerUserMustCompleteInfoOn // ignore: cast_nullable_to_non_nullable
as int,channelPinnedMessageMaxCount: null == channelPinnedMessageMaxCount ? _self.channelPinnedMessageMaxCount : channelPinnedMessageMaxCount // ignore: cast_nullable_to_non_nullable
as int,canModifyApiUrl: null == canModifyApiUrl ? _self.canModifyApiUrl : canModifyApiUrl // ignore: cast_nullable_to_non_nullable
as int,shortnoEditOff: null == shortnoEditOff ? _self.shortnoEditOff : shortnoEditOff // ignore: cast_nullable_to_non_nullable
as int,revokeSecond: null == revokeSecond ? _self.revokeSecond : revokeSecond // ignore: cast_nullable_to_non_nullable
as int,ipWhiteList: null == ipWhiteList ? _self.ipWhiteList : ipWhiteList // ignore: cast_nullable_to_non_nullable
as String,loginType: null == loginType ? _self.loginType : loginType // ignore: cast_nullable_to_non_nullable
as int,sensitiveWords: null == sensitiveWords ? _self.sensitiveWords : sensitiveWords // ignore: cast_nullable_to_non_nullable
as String,disableChangeDevice: null == disableChangeDevice ? _self.disableChangeDevice : disableChangeDevice // ignore: cast_nullable_to_non_nullable
as int,signupDeviceLimit: null == signupDeviceLimit ? _self.signupDeviceLimit : signupDeviceLimit // ignore: cast_nullable_to_non_nullable
as int,sigleIpRegisterLimitIn12hour: null == sigleIpRegisterLimitIn12hour ? _self.sigleIpRegisterLimitIn12hour : sigleIpRegisterLimitIn12hour // ignore: cast_nullable_to_non_nullable
as int,autoClearHistoryMsg: null == autoClearHistoryMsg ? _self.autoClearHistoryMsg : autoClearHistoryMsg // ignore: cast_nullable_to_non_nullable
as int,miniProgramVisible: null == miniProgramVisible ? _self.miniProgramVisible : miniProgramVisible // ignore: cast_nullable_to_non_nullable
as int,discoveryVisible: null == discoveryVisible ? _self.discoveryVisible : discoveryVisible // ignore: cast_nullable_to_non_nullable
as int,chargeAndPayoutVisible: null == chargeAndPayoutVisible ? _self.chargeAndPayoutVisible : chargeAndPayoutVisible // ignore: cast_nullable_to_non_nullable
as int,voiceCallVisible: null == voiceCallVisible ? _self.voiceCallVisible : voiceCallVisible // ignore: cast_nullable_to_non_nullable
as int,videoCallVisible: null == videoCallVisible ? _self.videoCallVisible : videoCallVisible // ignore: cast_nullable_to_non_nullable
as int,signupInviteCodeVisible: null == signupInviteCodeVisible ? _self.signupInviteCodeVisible : signupInviteCodeVisible // ignore: cast_nullable_to_non_nullable
as int,signinAuthCodeVisible: null == signinAuthCodeVisible ? _self.signinAuthCodeVisible : signinAuthCodeVisible // ignore: cast_nullable_to_non_nullable
as int,friendOnlineStatusVisible: null == friendOnlineStatusVisible ? _self.friendOnlineStatusVisible : friendOnlineStatusVisible // ignore: cast_nullable_to_non_nullable
as int,mobileMsgReadStatusVisible: null == mobileMsgReadStatusVisible ? _self.mobileMsgReadStatusVisible : mobileMsgReadStatusVisible // ignore: cast_nullable_to_non_nullable
as int,signRedEnvelopeVisible: null == signRedEnvelopeVisible ? _self.signRedEnvelopeVisible : signRedEnvelopeVisible // ignore: cast_nullable_to_non_nullable
as int,mineWalletVisible: null == mineWalletVisible ? _self.mineWalletVisible : mineWalletVisible // ignore: cast_nullable_to_non_nullable
as int,walletPayoutMin: null == walletPayoutMin ? _self.walletPayoutMin : walletPayoutMin // ignore: cast_nullable_to_non_nullable
as int,redEnvelopeVisible: null == redEnvelopeVisible ? _self.redEnvelopeVisible : redEnvelopeVisible // ignore: cast_nullable_to_non_nullable
as int,transferVisible: null == transferVisible ? _self.transferVisible : transferVisible // ignore: cast_nullable_to_non_nullable
as int,transferMinAmount: null == transferMinAmount ? _self.transferMinAmount : transferMinAmount // ignore: cast_nullable_to_non_nullable
as int,mobileEditMsg: null == mobileEditMsg ? _self.mobileEditMsg : mobileEditMsg // ignore: cast_nullable_to_non_nullable
as int,groupMemberSeeMember: null == groupMemberSeeMember ? _self.groupMemberSeeMember : groupMemberSeeMember // ignore: cast_nullable_to_non_nullable
as int,msgTimeVisible: null == msgTimeVisible ? _self.msgTimeVisible : msgTimeVisible // ignore: cast_nullable_to_non_nullable
as int,pinnedConversationSync: null == pinnedConversationSync ? _self.pinnedConversationSync : pinnedConversationSync // ignore: cast_nullable_to_non_nullable
as int,onlyInternalFriendAdd: null == onlyInternalFriendAdd ? _self.onlyInternalFriendAdd : onlyInternalFriendAdd // ignore: cast_nullable_to_non_nullable
as int,onlyInternalFriendCreateGroup: null == onlyInternalFriendCreateGroup ? _self.onlyInternalFriendCreateGroup : onlyInternalFriendCreateGroup // ignore: cast_nullable_to_non_nullable
as int,onlyInternalFriendSendGroupRedEnvelope: null == onlyInternalFriendSendGroupRedEnvelope ? _self.onlyInternalFriendSendGroupRedEnvelope : onlyInternalFriendSendGroupRedEnvelope // ignore: cast_nullable_to_non_nullable
as int,onlyInternalFriendSendGroupCard: null == onlyInternalFriendSendGroupCard ? _self.onlyInternalFriendSendGroupCard : onlyInternalFriendSendGroupCard // ignore: cast_nullable_to_non_nullable
as int,onlyInternalFriendGroupRobotFreeMsg: null == onlyInternalFriendGroupRobotFreeMsg ? _self.onlyInternalFriendGroupRobotFreeMsg : onlyInternalFriendGroupRobotFreeMsg // ignore: cast_nullable_to_non_nullable
as int,groupMemberLimit: null == groupMemberLimit ? _self.groupMemberLimit : groupMemberLimit // ignore: cast_nullable_to_non_nullable
as int,userAgreementContent: null == userAgreementContent ? _self.userAgreementContent : userAgreementContent // ignore: cast_nullable_to_non_nullable
as String,privacyPolicyContent: null == privacyPolicyContent ? _self.privacyPolicyContent : privacyPolicyContent // ignore: cast_nullable_to_non_nullable
as String,momentsVisible: null == momentsVisible ? _self.momentsVisible : momentsVisible // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
