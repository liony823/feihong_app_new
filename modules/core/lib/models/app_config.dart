import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config.freezed.dart';
part 'app_config.g.dart';

@freezed
abstract class AppConfig with _$AppConfig {
  const factory AppConfig({
    required String rsaPublicKey, // 公钥
    required int version, // 版本
    required String superToken, // 超级token
    required int superTokenOn, // 超级token是否开启
    required String welcomeMessage, // 登录欢迎语

    required int newUserJoinSystemGroup, // 新用户是否加入系统群聊
    required int searchByPhone, // 是否可通过手机号搜索

    required int registerInviteOn, // 是否开启注册邀请

    required int sendWelcomeMessageOn, // 是否发送登录欢迎语

    required int inviteSystemAccountJoinGroupOn, // 是否允许邀请系统账号进入群聊

    required int registerUserMustCompleteInfoOn, // 是否要求注册用户必须填写完整信息

    required int channelPinnedMessageMaxCount, // 频道置顶消息最大数量

    required int canModifyApiUrl, // 是否可以修改API地址
    required int shortnoEditOff, // 是否关闭短编号编辑
    required int revokeSecond, // 消息可撤回时长
    required String ipWhiteList, // 后台IP白名单
    required int loginType, // app登录类型
    required String sensitiveWords, // 敏感词

    required int disableChangeDevice, // 是否禁止更换设备

    required int signupDeviceLimit, // 设备限制注册限制数

    required int sigleIpRegisterLimitIn12hour, // 单IP12小时注册限制数

    required int autoClearHistoryMsg, // 自动清除几天前历史消息

    required int miniProgramVisible, // 小程序页是否可见

    required int discoveryVisible, // 发现页是否可见

    required int chargeAndPayoutVisible, // 充值和提现是否可见

    required int voiceCallVisible, // 语音通话是否可见

    required int videoCallVisible, // 视频通话是否可见

    required int signinAuthCodeVisible, // 登录授权码是否可见

    required int friendOnlineStatusVisible, // 好友在线状态是否可见

    required int mobileMsgReadStatusVisible, // 手机消息已读状态是否可见

    required int signRedEnvelopeVisible, // 签到红包模块是否开启

    required int mineWalletVisible, // 我的钱包是否开启

    required int walletPayoutMin, // 钱包提现最小金额

    required int redEnvelopeVisible, // 红包模块是否开启
    required int transferVisible, // 转账模块是否开启

    required int transferMinAmount, // 转账最小金额
    required int mobileEditMsg, // 手机端是否可以编辑消息

    required int groupMemberSeeMember, // 普通群成员是否可以查看其他群成员
    required int msgTimeVisible, // 消息时间是否可见

    required int pinnedConversationSync, // 置顶会话是否同步

    required int onlyInternalFriendAdd, // 仅内部号可被加好友及加非内部号好友

    required int onlyInternalFriendCreateGroup, // 仅内部号可建群

    required int onlyInternalFriendSendGroupRedEnvelope, // 仅内部号可发群红包

    required int onlyInternalFriendSendGroupCard, // 仅内部号可群内推送名片

    required int onlyInternalFriendGroupRobotFreeMsg, // 群机器人免消息
    required int groupMemberLimit, // 群人数限制

    required String userAgreementContent, // 用户协议内容

    required String privacyPolicyContent, // 隐私政策内容
    required int momentsVisible, // 好友分享是否可见
  }) = _AppConfig;

  factory AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);
}
