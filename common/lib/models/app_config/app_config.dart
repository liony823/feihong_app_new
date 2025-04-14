import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config.freezed.dart';
part 'app_config.g.dart';

@freezed
abstract class AppConfig with _$AppConfig {
  const factory AppConfig({
    @JsonKey(name: 'rsa_public_key') required String rsaPublicKey, // 公钥
    @JsonKey(name: 'version') required int version, // 版本
    @JsonKey(name: 'super_token') required String superToken, // 超级token
    @JsonKey(name: 'super_token_on') required int superTokenOn, // 超级token是否开启
    @JsonKey(name: 'welcome_message') required String welcomeMessage, // 登录欢迎语
    @JsonKey(name: 'new_user_join_system_group')
    required int newUserJoinSystemGroup, // 新用户是否加入系统群聊
    @JsonKey(name: 'search_by_phone') required int searchByPhone, // 是否可通过手机号搜索
    @JsonKey(name: 'register_invite_on')
    required int registerInviteOn, // 是否开启注册邀请
    @JsonKey(name: 'send_welcome_message_on')
    required int sendWelcomeMessageOn, // 是否发送登录欢迎语
    @JsonKey(name: 'invite_system_account_join_group_on')
    required int inviteSystemAccountJoinGroupOn, // 是否允许邀请系统账号进入群聊
    @JsonKey(name: 'register_user_must_complete_info_on')
    required int registerUserMustCompleteInfoOn, // 是否要求注册用户必须填写完整信息
    @JsonKey(name: 'channel_pinned_message_max_count')
    required int channelPinnedMessageMaxCount, // 频道置顶消息最大数量
    @JsonKey(name: 'can_modify_api_url')
    required int canModifyApiUrl, // 是否可以修改API地址
    @JsonKey(name: 'shortno_edit_off') required int shortnoEditOff, // 是否关闭短编号编辑
    @JsonKey(name: 'revoke_second') required int revokeSecond, // 消息可撤回时长
    @JsonKey(name: 'ip_white_list') required String ipWhiteList, // 后台IP白名单
    @JsonKey(name: 'login_type') required int loginType, // app登录类型
    @JsonKey(name: 'sensitive_words') required String sensitiveWords, // 敏感词
    @JsonKey(name: 'disable_change_device')
    required int disableChangeDevice, // 是否禁止更换设备
    @JsonKey(name: 'signup_device_limit')
    required int signupDeviceLimit, // 设备限制注册限制数
    @JsonKey(name: 'sigle_ip_register_limit_in12hour')
    required int sigleIpRegisterLimitIn12hour, // 单IP12小时注册限制数
    @JsonKey(name: 'auto_clear_history_msg')
    required int autoClearHistoryMsg, // 自动清除几天前历史消息
    @JsonKey(name: 'mini_program_visible')
    required int miniProgramVisible, // 小程序页是否可见
    @JsonKey(name: 'discovery_visible')
    required int discoveryVisible, // 发现页是否可见
    @JsonKey(name: 'charge_and_payout_visible')
    required int chargeAndPayoutVisible, // 充值和提现是否可见
    @JsonKey(name: 'voice_call_visible')
    required int voiceCallVisible, // 语音通话是否可见
    @JsonKey(name: 'video_call_visible')
    required int videoCallVisible, // 视频通话是否可见
    @JsonKey(name: 'signup_invite_code_visible')
    required int signupInviteCodeVisible, // 注册邀请码是否可见
    @JsonKey(name: 'signin_auth_code_visible')
    required int signinAuthCodeVisible, // 登录授权码是否可见
    @JsonKey(name: 'friend_online_status_visible')
    required int friendOnlineStatusVisible, // 好友在线状态是否可见
    @JsonKey(name: 'mobile_msg_read_status_visible')
    required int mobileMsgReadStatusVisible, // 手机消息已读状态是否可见
    @JsonKey(name: 'sign_red_envelope_visible')
    required int signRedEnvelopeVisible, // 签到红包模块是否开启
    @JsonKey(name: 'mine_wallet_visible')
    required int mineWalletVisible, // 我的钱包是否开启
    @JsonKey(name: 'wallet_payout_min')
    required int walletPayoutMin, // 钱包提现最小金额
    @JsonKey(name: 'red_envelope_visible')
    required int redEnvelopeVisible, // 红包模块是否开启
    @JsonKey(name: 'transfer_visible') required int transferVisible, // 转账模块是否开启
    @JsonKey(name: 'transfer_min_amount')
    required int transferMinAmount, // 转账最小金额
    @JsonKey(name: 'mobile_edit_msg') required int mobileEditMsg, // 手机端是否可以编辑消息
    @JsonKey(name: 'group_member_see_member')
    required int groupMemberSeeMember, // 普通群成员是否可以查看其他群成员
    @JsonKey(name: 'msg_time_visible') required int msgTimeVisible, // 消息时间是否可见
    @JsonKey(name: 'pinned_conversation_sync')
    required int pinnedConversationSync, // 置顶会话是否同步
    @JsonKey(name: 'only_internal_friend_add')
    required int onlyInternalFriendAdd, // 仅内部号可被加好友及加非内部号好友
    @JsonKey(name: 'only_internal_friend_create_group')
    required int onlyInternalFriendCreateGroup, // 仅内部号可建群
    @JsonKey(name: 'only_internal_friend_send_group_red_envelope')
    required int onlyInternalFriendSendGroupRedEnvelope, // 仅内部号可发群红包
    @JsonKey(name: 'only_internal_friend_send_group_card')
    required int onlyInternalFriendSendGroupCard, // 仅内部号可群内推送名片
    @JsonKey(name: 'only_internal_friend_group_robot_free_msg')
    required int onlyInternalFriendGroupRobotFreeMsg, // 群机器人免消息
    @JsonKey(name: 'group_member_limit') required int groupMemberLimit, // 群人数限制
    @JsonKey(name: 'user_agreement_content')
    required String userAgreementContent, // 用户协议内容
    @JsonKey(name: 'privacy_policy_content')
    required String privacyPolicyContent, // 隐私政策内容
    @JsonKey(name: 'moments_visible') required int momentsVisible, // 好友分享是否可见
  }) = _AppConfig;

  factory AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);
}
