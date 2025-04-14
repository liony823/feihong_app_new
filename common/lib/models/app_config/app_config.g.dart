// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppConfig _$AppConfigFromJson(Map<String, dynamic> json) => _AppConfig(
  rsaPublicKey: json['rsa_public_key'] as String,
  version: (json['version'] as num).toInt(),
  superToken: json['super_token'] as String,
  superTokenOn: (json['super_token_on'] as num).toInt(),
  welcomeMessage: json['welcome_message'] as String,
  newUserJoinSystemGroup: (json['new_user_join_system_group'] as num).toInt(),
  searchByPhone: (json['search_by_phone'] as num).toInt(),
  registerInviteOn: (json['register_invite_on'] as num).toInt(),
  sendWelcomeMessageOn: (json['send_welcome_message_on'] as num).toInt(),
  inviteSystemAccountJoinGroupOn:
      (json['invite_system_account_join_group_on'] as num).toInt(),
  registerUserMustCompleteInfoOn:
      (json['register_user_must_complete_info_on'] as num).toInt(),
  channelPinnedMessageMaxCount:
      (json['channel_pinned_message_max_count'] as num).toInt(),
  canModifyApiUrl: (json['can_modify_api_url'] as num).toInt(),
  shortnoEditOff: (json['shortno_edit_off'] as num).toInt(),
  revokeSecond: (json['revoke_second'] as num).toInt(),
  ipWhiteList: json['ip_white_list'] as String,
  loginType: (json['login_type'] as num).toInt(),
  sensitiveWords: json['sensitive_words'] as String,
  disableChangeDevice: (json['disable_change_device'] as num).toInt(),
  signupDeviceLimit: (json['signup_device_limit'] as num).toInt(),
  sigleIpRegisterLimitIn12hour:
      (json['sigle_ip_register_limit_in12hour'] as num).toInt(),
  autoClearHistoryMsg: (json['auto_clear_history_msg'] as num).toInt(),
  miniProgramVisible: (json['mini_program_visible'] as num).toInt(),
  discoveryVisible: (json['discovery_visible'] as num).toInt(),
  chargeAndPayoutVisible: (json['charge_and_payout_visible'] as num).toInt(),
  voiceCallVisible: (json['voice_call_visible'] as num).toInt(),
  videoCallVisible: (json['video_call_visible'] as num).toInt(),
  signupInviteCodeVisible: (json['signup_invite_code_visible'] as num).toInt(),
  signinAuthCodeVisible: (json['signin_auth_code_visible'] as num).toInt(),
  friendOnlineStatusVisible:
      (json['friend_online_status_visible'] as num).toInt(),
  mobileMsgReadStatusVisible:
      (json['mobile_msg_read_status_visible'] as num).toInt(),
  signRedEnvelopeVisible: (json['sign_red_envelope_visible'] as num).toInt(),
  mineWalletVisible: (json['mine_wallet_visible'] as num).toInt(),
  walletPayoutMin: (json['wallet_payout_min'] as num).toInt(),
  redEnvelopeVisible: (json['red_envelope_visible'] as num).toInt(),
  transferVisible: (json['transfer_visible'] as num).toInt(),
  transferMinAmount: (json['transfer_min_amount'] as num).toInt(),
  mobileEditMsg: (json['mobile_edit_msg'] as num).toInt(),
  groupMemberSeeMember: (json['group_member_see_member'] as num).toInt(),
  msgTimeVisible: (json['msg_time_visible'] as num).toInt(),
  pinnedConversationSync: (json['pinned_conversation_sync'] as num).toInt(),
  onlyInternalFriendAdd: (json['only_internal_friend_add'] as num).toInt(),
  onlyInternalFriendCreateGroup:
      (json['only_internal_friend_create_group'] as num).toInt(),
  onlyInternalFriendSendGroupRedEnvelope:
      (json['only_internal_friend_send_group_red_envelope'] as num).toInt(),
  onlyInternalFriendSendGroupCard:
      (json['only_internal_friend_send_group_card'] as num).toInt(),
  onlyInternalFriendGroupRobotFreeMsg:
      (json['only_internal_friend_group_robot_free_msg'] as num).toInt(),
  groupMemberLimit: (json['group_member_limit'] as num).toInt(),
  userAgreementContent: json['user_agreement_content'] as String,
  privacyPolicyContent: json['privacy_policy_content'] as String,
  momentsVisible: (json['moments_visible'] as num).toInt(),
);

Map<String, dynamic> _$AppConfigToJson(
  _AppConfig instance,
) => <String, dynamic>{
  'rsa_public_key': instance.rsaPublicKey,
  'version': instance.version,
  'super_token': instance.superToken,
  'super_token_on': instance.superTokenOn,
  'welcome_message': instance.welcomeMessage,
  'new_user_join_system_group': instance.newUserJoinSystemGroup,
  'search_by_phone': instance.searchByPhone,
  'register_invite_on': instance.registerInviteOn,
  'send_welcome_message_on': instance.sendWelcomeMessageOn,
  'invite_system_account_join_group_on':
      instance.inviteSystemAccountJoinGroupOn,
  'register_user_must_complete_info_on':
      instance.registerUserMustCompleteInfoOn,
  'channel_pinned_message_max_count': instance.channelPinnedMessageMaxCount,
  'can_modify_api_url': instance.canModifyApiUrl,
  'shortno_edit_off': instance.shortnoEditOff,
  'revoke_second': instance.revokeSecond,
  'ip_white_list': instance.ipWhiteList,
  'login_type': instance.loginType,
  'sensitive_words': instance.sensitiveWords,
  'disable_change_device': instance.disableChangeDevice,
  'signup_device_limit': instance.signupDeviceLimit,
  'sigle_ip_register_limit_in12hour': instance.sigleIpRegisterLimitIn12hour,
  'auto_clear_history_msg': instance.autoClearHistoryMsg,
  'mini_program_visible': instance.miniProgramVisible,
  'discovery_visible': instance.discoveryVisible,
  'charge_and_payout_visible': instance.chargeAndPayoutVisible,
  'voice_call_visible': instance.voiceCallVisible,
  'video_call_visible': instance.videoCallVisible,
  'signup_invite_code_visible': instance.signupInviteCodeVisible,
  'signin_auth_code_visible': instance.signinAuthCodeVisible,
  'friend_online_status_visible': instance.friendOnlineStatusVisible,
  'mobile_msg_read_status_visible': instance.mobileMsgReadStatusVisible,
  'sign_red_envelope_visible': instance.signRedEnvelopeVisible,
  'mine_wallet_visible': instance.mineWalletVisible,
  'wallet_payout_min': instance.walletPayoutMin,
  'red_envelope_visible': instance.redEnvelopeVisible,
  'transfer_visible': instance.transferVisible,
  'transfer_min_amount': instance.transferMinAmount,
  'mobile_edit_msg': instance.mobileEditMsg,
  'group_member_see_member': instance.groupMemberSeeMember,
  'msg_time_visible': instance.msgTimeVisible,
  'pinned_conversation_sync': instance.pinnedConversationSync,
  'only_internal_friend_add': instance.onlyInternalFriendAdd,
  'only_internal_friend_create_group': instance.onlyInternalFriendCreateGroup,
  'only_internal_friend_send_group_red_envelope':
      instance.onlyInternalFriendSendGroupRedEnvelope,
  'only_internal_friend_send_group_card':
      instance.onlyInternalFriendSendGroupCard,
  'only_internal_friend_group_robot_free_msg':
      instance.onlyInternalFriendGroupRobotFreeMsg,
  'group_member_limit': instance.groupMemberLimit,
  'user_agreement_content': instance.userAgreementContent,
  'privacy_policy_content': instance.privacyPolicyContent,
  'moments_visible': instance.momentsVisible,
};
