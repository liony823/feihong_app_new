///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'localized.g.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';

// Path: <root>
class LocalizedEn extends Localized {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	LocalizedEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Localized>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Localized> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final LocalizedEn _root = this; // ignore: unused_field

	@override 
	LocalizedEn $copyWith({TranslationMetadata<AppLocale, Localized>? meta}) => LocalizedEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _LocalizedCEn c = _LocalizedCEn._(_root);
	@override late final _LocalizedContactEn contact = _LocalizedContactEn._(_root);
	@override late final _LocalizedErrorsEn errors = _LocalizedErrorsEn._(_root);
	@override late final _LocalizedHomeEn home = _LocalizedHomeEn._(_root);
}

// Path: c
class _LocalizedCEn extends LocalizedCZh {
	_LocalizedCEn._(LocalizedEn root) : this._root = root, super.internal(root);

	final LocalizedEn _root; // ignore: unused_field

	// Translations
	@override late final _LocalizedCAgreementEn agreement = _LocalizedCAgreementEn._(_root);
	@override String get appNmae => 'Feihong';
	@override late final _LocalizedCLanguageEn language = _LocalizedCLanguageEn._(_root);
	@override late final _LocalizedCLoginEn login = _LocalizedCLoginEn._(_root);
	@override late final _LocalizedCRegisterEn register = _LocalizedCRegisterEn._(_root);
	@override late final _LocalizedCVerifyEn verify = _LocalizedCVerifyEn._(_root);
	@override String get welcome => 'Welcome to Feihong';
	@override late final _LocalizedCZoneEn zone = _LocalizedCZoneEn._(_root);
}

// Path: contact
class _LocalizedContactEn extends LocalizedContactZh {
	_LocalizedContactEn._(LocalizedEn root) : this._root = root, super.internal(root);

	final LocalizedEn _root; // ignore: unused_field

	// Translations
	@override String get title => '通讯录';
	@override String get empty => '暂无联系人';
	@override String get newFriend => '新的朋友';
	@override String get group => '群聊';
	@override String get invite => '入群邀请';
}

// Path: errors
class _LocalizedErrorsEn extends LocalizedErrorsZh {
	_LocalizedErrorsEn._(LocalizedEn root) : this._root = root, super.internal(root);

	final LocalizedEn _root; // ignore: unused_field

	// Translations
	@override Map<String, String> get error => {
		'errAddAppFailed': 'Added application error',
		'errAddBannerFailed': 'New banner information error',
		'errAddCategoryAppFailed': 'Add a classification error',
		'errAddCategoryFailed': 'Added classification error',
		'errAddChannelFailed': 'Failed to add a channel',
		'errAddFriendRequestFailed': 'New friend application record error',
		'errAddInviteDataFailed': 'Failed to add invitation data',
		'errAddInviteItemFailed': 'Failed to add an invitation',
		'errAddMemberFailed': 'Failed to add a member',
		'errAddOrUpdateChannelFailed': 'Failed to add or update channel information',
		'errAddSystemAccountFailed': 'Failed to add a system account',
		'errAddSystemAccountToCacheFailed': 'Failed to add system account to cache',
		'errAddUseRecordFailed': 'Added usage record error',
		'errAddUserAddressBookBadgeFailed': 'New user address book red dot information error',
		'errAddUserAppFailed': 'Add user app error',
		'errAddedAppNotExist': 'The added app does not exist',
		'errAlreadyFriends': 'Already a friend, can\'t apply anymore',
		'errAppDeletedOrUnavailable': 'The app has been deleted or unavailable',
		'errAppIDEmpty': 'The application ID cannot be empty',
		'errAppNameExist': 'This application name already exists',
		'errApplicantNotExist': 'The applicant does not exist',
		'errApplicationNotExist': 'The application record does not exist',
		'errAuthCodeNotConfirmInvite': 'The authorization code is not a confirmation invitation',
		'errBannerCoverEmpty': 'Banner cover cannot be empty',
		'errBannerIDEmpty': 'Banner number cannot be empty',
		'errBannerURLEmpty': 'The banner jump address cannot be empty',
		'errBatchQueryRobotByUsernameFailed': 'Bulk query of robot data errors through username',
		'errBatchQueryRobotFailed': 'Bulk query robot data error',
		'errBatchQueryRobotMenuFailed': 'Bulk query robot menu data error',
		'errCallIMUpdateChannelFailed': 'Calling IM to modify channel information service failed',
		'errCannotAddSelfAsFriend': 'Can\'t add yourself as a friend',
		'errCannotProcessSendRequest': 'Unable to process send message request',
		'errCategoryIDAndAppIDEmpty': 'Neither the classification ID nor the application ID can be empty',
		'errCategoryIDEmpty': 'Classification number cannot be empty',
		'errCategoryNameExist': 'The category name already exists',
		'errCategoryNotExist': 'This category does not exist',
		'errChannelIDEmpty': 'Channel ID cannot be empty',
		'errCheckIsFriendFailed': 'Failed to check whether it is a friend',
		'errCommitTransactionFailed': 'Failed to submit transaction',
		'errContentEmpty': 'The content sent cannot be empty',
		'errCreateChannelFailed': 'Channel creation failed',
		'errCreateTransactionFailed': 'Failed to create a transaction',
		'errDBTransactionCommitFailed': 'Database things submission failed',
		'errDBTransactionOpenFailed': 'Failed to start the transaction',
		'errDataFormatError': 'The data format is incorrect',
		'errDecodeAuthJsonFailed': 'Decode the JSON data of authentication information failed',
		'errDeleteAppFailed': 'Delete the application error',
		'errDeleteApplicationFailed': 'Error deleting application record',
		'errDeleteBannerFailed': 'Delete banner error',
		'errDeleteCategoryAppFailed': 'Delete the error in the category app',
		'errDeleteCategoryFailed': 'Delete classification errors',
		'errDeleteDeviceFailed': 'Failed to delete the device',
		'errDeleteFriendFailed': 'Error deleting friends',
		'errDeleteModuleNotExist': 'The deleted module does not exist',
		'errDeleteRobotMenuFailed': 'Delete the robot menu failed',
		'errDeleteUseRecordFailed': 'Delete usage record error',
		'errDeleteUserAppFailed': 'Error deleting user app',
		'errDeleteUserAppUsageRecordFailed': 'Delete user app usage history error',
		'errDeviceNotFound': 'The device was not found',
		'errFileUploadFailed': 'File upload failed',
		'errFriendInfoNotExist': 'Friend information does not exist',
		'errFriendRequestReceiverNotExist': 'The user receiving the friend request does not exist',
		'errFriendUIDEmpty': 'Friend ID cannot be empty',
		'errGetAuthInfoFailed': 'Failed to obtain authorization information',
		'errGetCategoryAppFailed': 'Get the app error under the category',
		'errGetChannelNodeFailed': 'Failed to get the node where the channel is located',
		'errGetConversationFailed': 'Failed to get the session',
		'errGetDeviceInfoFailed': 'Failed to obtain device information',
		'errGetGiteeUserInfoFailed': 'Failed to obtain gitee user information',
		'errGetInviteItemFailed': 'Failed to obtain invitation',
		'errGetLoginStatusFailed': 'Failed to get login status',
		'errGetRecentMessagesFailed': 'Failed to get the latest message',
		'errGetRobotInfoFailed': 'Failed to obtain robot information',
		'errGetShortNoFailed': 'Failed to get short number',
		'errGetSlotNodeFailed': 'Failed to get the node where the slot is located',
		'errGetSystemAccountFailed': 'Failed to obtain the system account',
		'errGroupIDEmpty': 'The operation group ID cannot be empty',
		'errGroupMemberEmpty': 'Group members cannot be empty',
		'errGroupNotExist': 'The group of operations does not exist',
		'errInsertGiteeUserFailed': 'Failed to insert gitee user',
		'errInvalidPayload': 'Invalid payload',
		'errInviteCodeEmpty': 'The invitation code cannot be empty',
		'errInviteCodeNotExist': 'The invitation code does not exist',
		'errInviteInfoNotFound': 'No invitation information was found',
		'errInviteStatusNotPending': 'Invitation information is not an invitation status',
		'errInviterUserInfoNotFound': 'No user information of the inviter was found',
		'errJwtSecretNotConfigured': 'jwt.secret is not configured',
		'errLoggedInUserNotExist': 'The logged-in user does not exist',
		'errLoginStatusExpired': 'Login status has expired',
		'errMessageSyncReceiptFailed': 'Message synchronization receipt failed',
		'errNewPasswordSameAsOld': 'The new password cannot be the same as the old password',
		'errNotAllowSendToChannel': 'Messages are not allowed to be sent to this channel',
		'errNotGroupAdminOrCreator': 'You are not a group owner or administrator',
		'errOldPasswordIncorrect': 'Old password error',
		'errOperatedRobotNotExist': 'The operating robot does not exist',
		'errOperationStatusEmpty': 'The operation status cannot be empty',
		'errPCLogoutFailed': 'Failed to exit the PC device',
		'errPasswordEmpty': 'Password cannot be empty',
		'errPasswordIncorrect': 'Incorrect password',
		'errPersonalChannelNotSupportAddSub': 'Personal channels do not support adding subscribers',
		'errPersonalChannelNotSupported': 'Personal channels are not supported yet',
		'errPhoneNumberNotExist': 'Missing mobile number',
		'errPublicKeyEmpty': 'The public key cannot be empty',
		'errQRCodeVerificationFailed': 'QR code verification failed',
		'errQueryAllAppFailed': 'Query all application errors',
		'errQueryAllCategoryFailed': 'Query all classification errors',
		'errQueryAppBatchFailed': 'Query a batch of application errors',
		'errQueryAppByCategoryFailed': 'Application errors through classification query',
		'errQueryAppFailed': 'Query application error',
		'errQueryAppModuleFailed': 'Error in querying app module',
		'errQueryApplicantInfoFailed': 'Error in querying the user information of the application',
		'errQueryBannerDataFailed': 'Error in querying banner data',
		'errQueryBannerFailed': 'Query banner error',
		'errQueryCategoryAppFailed': 'Query the application errors under this category',
		'errQueryCategoryAppMaxOrderFailed': 'Query the maximum serial number of the classification application error',
		'errQueryCategoryAppNameExistFailed': 'Query if there is an error in this category of apps',
		'errQueryCategoryByNameFailed': 'Query classification errors by category name',
		'errQueryCategoryFailed': 'Query classification error',
		'errQueryChannelFailed': 'Failed to query the channel',
		'errQueryChannelTypeEmpty': 'The query channel type cannot be empty',
		'errQueryCreatorOrAdminUidFailed': 'Failed to query the creator or administrator\'s uid',
		'errQueryDeviceListFailed': 'Failed to query the device list',
		'errQueryFriendAppListFailed': 'Error in querying friend application list',
		'errQueryFriendApplicationFailed': 'Inquiry application record error',
		'errQueryFriendInfoFailed': 'Error in querying friend information',
		'errQueryFriendRequestFailed': 'Error in querying friend application record',
		'errQueryGiteeUserInfoFailed': 'Failed to query gitee user information',
		'errQueryGroupCountFailed': 'Incorrect query group count',
		'errQueryGroupInfoFailed': 'Error in query group information',
		'errQueryGroupListFailed': 'Query group list error',
		'errQueryGroupMemberCountFailed': 'Error querying the total number of members of the group',
		'errQueryGroupMemberFailed': 'Query group member error',
		'errQueryInviteDetailFailed': 'Failed to query invitation details',
		'errQueryInviterUserInfoFailed': 'Failed to query the inviter\'s user information',
		'errQueryIsAdminOrCreatorFailed': 'Querying whether the administrator or creator failed',
		'errQueryMaxOrderCategoryFailed': 'Query maximum serial number classification error',
		'errQueryMemberInfoFailed': 'Error in querying member information',
		'errQueryOperatedRobotFailed': 'Robot error in query operation',
		'errQueryReportCountFailed': 'Incorrect query total number of reports',
		'errQueryReportGroupSetFailed': 'Query Report cluster collection error',
		'errQueryReportListFailed': 'Error in query report list',
		'errQueryReportUserSetFailed': 'Query Report User Collection Error',
		'errQueryRobotMenuFailed': 'Error in querying robot menu',
		'errQueryTotalCountFailed': 'Incorrect query total number',
		'errQueryUseRecordFailed': 'Query usage record error',
		'errQueryUserAddressBookBadgeFailed': 'Error in querying user address book red dot information',
		'errQueryUserAppFailed': 'Query user for an application error',
		'errQueryUserFriendSettingsFailed': 'Query user friend settings error',
		'errQueryUserFriendsFailed': 'Failed to query user friends',
		'errQueryUserInfoFailed': 'Error in querying user information',
		'errQueryUserMaxOrderAppFailed': 'Error in querying user maximum serial number app',
		'errQueryUserOnlineStatusFailed': 'Failed to query user online status',
		'errQueryUserSavedAppFailed': 'Query user saved application error',
		'errRegisterFailed': 'Registration failed',
		'errRegistrationNotSupported': 'Registration is not supported',
		'errRemoveAllBlacklistFailed': 'Failed to remove all blacklists',
		'errRemoveAllWhitelistFailed': 'Removal of all singular orders failed',
		'errRemoveSystemAccountFailed': 'Failed to remove the system account',
		'errRemoveSystemAccountFromCacheFailed': 'Failed to remove the system account from cache',
		'errRequestDataError': 'The requested data format is incorrect',
		'errResetFriendSettingsFailed': 'Reset friend settings error',
		'errRobotIDEmpty': 'The robot ID cannot be empty',
		'errRobotNoAppID': 'Robots don\'t have app_id',
		'errRobotNotExist': 'The robot does not exist',
		'errSaveMessageFailed': 'Saving message failed',
		'errSearchAppFailed': 'Search for application errors',
		'errSendDeleteFriendEventFailed': 'Failed to send a deleted friend event',
		'errSendMessageFailed': 'Failed to send a message',
		'errSendStreamEndFailed': 'Failed to send stream end message',
		'errSendStreamStartFailed': 'Failed to send stream start message',
		'errSendTypingFailed': 'Failed to send typing message',
		'errSendVerifyCodeFailed': 'Failed to send verification code',
		'errSenderEmpty': 'The sender cannot be empty',
		'errSetApplicationTokenFailed': 'Failed to set up application token',
		'errSetTokenCacheFailed': 'Failed to set token cache',
		'errSignatureEmpty': 'Signature characters cannot be empty',
		'errSignatureError': 'Signature error',
		'errSignatureInfoNotExist': 'Signature information does not exist',
		'errSlotLeaderNodeInfoNotExist': 'The node information corresponding to the slot leader does not exist',
		'errSlotLeaderNodeNotExist': 'The leader node of the slot does not exist',
		'errStartEventFailed': 'Failed to enable event',
		'errStressMachineNotExist': 'The pressure test machine does not exist',
		'errStressTestNotEnabled': 'The pressure measurement configuration is not enabled, and the pressure measurement is not supported.',
		'errSystemAccountUpdateTokenNotAllowed': 'System account does not allow token update',
		'errUnknownOperationType': 'Unknown operation type',
		'errUnsupportedType': 'Unsupported type',
		'errUpdateAppInfoFailed': 'Error modifying application information',
		'errUpdateApplicationFailed': 'Error in modifying the application record',
		'errUpdateBannerFailed': 'Modify banner error',
		'errUpdateCategoryAppOrderFailed': 'Modify the app sorting error in the classification',
		'errUpdateCategoryFailed': 'Modify classification error',
		'errUpdateChannelInfoFailed': 'Failed to update channel information',
		'errUpdateFriendRelationFailed': 'Error modifying friend single-item relationship',
		'errUpdateFriendRequestFailed': 'Error modifying friend application record',
		'errUpdateGroupInfoFailed': 'Failed to update group information',
		'errUpdateIMTokenFailed': 'Failed to update IM token',
		'errUpdateInviteItemStatusFailed': 'Failed to update the invitation information status',
		'errUpdateInviteStatusFailed': 'Failed to update the invitation information status',
		'errUpdateLoginPasswordFailed': 'Error modifying the login password',
		'errUpdateRobotStatusFailed': 'Error modifying the robot status information',
		'errUpdateRobotVersionFailed': 'Error modifying the version number of the robot',
		'errUpdateUseRecordFailed': 'Modify usage record error',
		'errUpdateUserAddressBookBadgeFailed': 'Modify the user\'s address book red dot information error',
		'errUpdateUserAppOrderFailed': 'Error modifying user app order',
		'errUserAlreadyUploadPublicKey': 'The user has uploaded the public key information',
		'errUserDisabledOrBanned': 'This user does not exist or is blocked/banned',
		'errUserNoPublicKey': 'This user did not upload the public key',
		'errUserNotExist': 'This user does not exist',
		'errUsernameExist': 'This username already exists',
		'errUsernameLengthInvalid': 'Invalid username length',
		'errUsernameLoginLengthInvalid': 'Username must be between 6-18 digits',
		'errUsernameNotExist': 'This username does not exist',
		'errUsernameOrPasswordError': 'Incorrect username or password',
		'errUsernameRegisterOff': 'Username registration function is turned off',
		'errVerificationCodeEmpty': 'The verification code cannot be empty',
		'errVerifyCharEmpty': 'The check character cannot be empty',
		'errVerifySignatureError': 'Verify signature error',
		'errVerifyTypeNotMatch': 'Verification type mismatch',
		'errWebLogoutFailed': 'Failed to exit the web device',
		'errZoneNotExist': 'Missing mobile phone area code',
		'errZoneNotSupport': 'Unsupported mobile phone area code',
		'errNodeNotExist': 'The node does not exist',
	};
	@override Map<String, String> get httpError => {
		'badCertificate': 'Certificate error, please contact the administrator',
		'badResponse': 'Server error, please contact the administrator',
		'connectionError': 'The connection cannot be established with the server, please check the network or proxy',
		'connectionTimeout': 'The network connection timed out, please check the network or agent',
		'networkError': 'The network connection timed out, please check the network or agent',
		'receiveTimeout': 'Network request timeout, please check the network or proxy',
		'sendTimeout': 'Network request timeout, please check the network or proxy',
		'title': 'An error occurred',
		'unknown': 'Server error, please contact the administrator',
	};
}

// Path: home
class _LocalizedHomeEn extends LocalizedHomeZh {
	_LocalizedHomeEn._(LocalizedEn root) : this._root = root, super.internal(root);

	final LocalizedEn _root; // ignore: unused_field

	// Translations
}

// Path: c.agreement
class _LocalizedCAgreementEn extends LocalizedCAgreementZh {
	_LocalizedCAgreementEn._(LocalizedEn root) : this._root = root, super.internal(root);

	final LocalizedEn _root; // ignore: unused_field

	// Translations
	@override TextSpan checkbox({required InlineSpan userAgreement, required InlineSpan privacyPolicy}) => TextSpan(children: [
		const TextSpan(text: 'I have read and agree to '),
		userAgreement,
		const TextSpan(text: ' and '),
		privacyPolicy,
	]);
	@override String get hint => 'In order to better protect your legitimate rights and interests, please read and agree to the User Agreement and Privacy Policy';
	@override String get privacyPolicy => 'Privacy Policy';
	@override String get title => 'User Agreement and Privacy Policy';
	@override String get userAgreement => 'User Agreement';
}

// Path: c.language
class _LocalizedCLanguageEn extends LocalizedCLanguageZh {
	_LocalizedCLanguageEn._(LocalizedEn root) : this._root = root, super.internal(root);

	final LocalizedEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Language settings';
}

// Path: c.login
class _LocalizedCLoginEn extends LocalizedCLoginZh {
	_LocalizedCLoginEn._(LocalizedEn root) : this._root = root, super.internal(root);

	final LocalizedEn _root; // ignore: unused_field

	// Translations
	@override String get forgotPassword => 'forget the password?';
	@override String get loginWithAutoRegisterHint => 'Whether to register an account and log in according to your mobile phone device number';
	@override String get loginWithDevice => 'Automatic device registration and login';
	@override String get loginWithName => 'Username login';
	@override String get loginWithPhone => 'Mobile phone number login';
	@override String get nameLabel => 'username';
	@override String get namePlaceholder => 'Please enter your username';
	@override String get noAccountYet => 'Don\'t have an account yet?';
	@override String get passwordLabel => 'password';
	@override String get passwordPlaceholder => 'Please enter your password';
	@override String get phoneLabel => 'Phone number';
	@override String get phoneOrPasswordEmpty => 'Mobile phone number or password cannot be empty';
	@override String get phonePlaceholder => 'Please enter your mobile phone number';
	@override String get submit => 'Log in now';
	@override String get usernameOrPasswordEmpty => 'Username or password cannot be empty';
	@override String get usernameOrPasswordError => 'Incorrect username or password';
}

// Path: c.register
class _LocalizedCRegisterEn extends LocalizedCRegisterZh {
	_LocalizedCRegisterEn._(LocalizedEn root) : this._root = root, super.internal(root);

	final LocalizedEn _root; // ignore: unused_field

	// Translations
	@override String get confirmPasswordEmpty => 'Please fill in the confirmation password';
	@override String get confirmPasswordError => 'Passwords are inconsistent';
	@override String get confirmPasswordLabel => 'Confirm Password';
	@override String get confirmPasswordPlaceholder => 'Please confirm your password';
	@override String get hasAccount => 'Already have an account?';
	@override String get invitationCode => 'Invitation code';
	@override String get invitationCodeEmpty => 'Please fill in the invitation code';
	@override String get invitationCodeError => 'Invitation code error';
	@override String get invitationCodePlaceholder => 'Please enter your invitation code';
	@override String get nameLabel => 'username';
	@override String get namePlaceholder => 'Please enter your username';
	@override String get passwordEmpty => 'Please enter your password';
	@override String get passwordError => 'Password format error (6-18 characters, letters or numbers)';
	@override String get passwordLabel => 'password';
	@override String get passwordPlaceholder => 'Please enter your password';
	@override String get phoneEmpty => 'Please enter your mobile phone number';
	@override String get phoneError => 'Mobile phone number format error';
	@override String get phoneLabel => 'Phone number';
	@override String get phonePlaceholder => 'Please enter your mobile phone number';
	@override String get registerWithAutoRegisterHint => 'Whether to register an account based on your mobile phone device number';
	@override String get registerWithDevice => 'Automatic device registration';
	@override String get registerWithName => 'Username registration';
	@override String get registerWithPhone => 'Mobile phone number registration';
	@override String get submit => 'Register now';
	@override String get title => 'Register an account';
	@override String get usernameEmpty => 'Please enter your username';
	@override String get usernameError => 'Username format wrong (6-18-bit characters, cannot contain illegal characters)';
}

// Path: c.verify
class _LocalizedCVerifyEn extends LocalizedCVerifyZh {
	_LocalizedCVerifyEn._(LocalizedEn root) : this._root = root, super.internal(root);

	final LocalizedEn _root; // ignore: unused_field

	// Translations
	@override String get confirmSend => 'Confirm send';
	@override String get plsEnterVerificationCode => 'Please enter your verification code';
	@override String get resendVerificationCode => 'Resend verification code';
	@override String get sendVerificationCode => 'Send verification code';
	@override String get verificationCode => 'Verification code';
	@override String verificationCodeTimingReminder({required Object seconds}) => 'Retrieve verification code after ${seconds} S';
}

// Path: c.zone
class _LocalizedCZoneEn extends LocalizedCZoneZh {
	_LocalizedCZoneEn._(LocalizedEn root) : this._root = root, super.internal(root);

	final LocalizedEn _root; // ignore: unused_field

	// Translations
	@override String get cancel => 'Cancel';
	@override String get search => 'Search for countries/regions';
	@override String get select => 'choose';
	@override String get title => 'Select a country/region';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on LocalizedEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'c.agreement.checkbox': return ({required InlineSpan userAgreement, required InlineSpan privacyPolicy}) => TextSpan(children: [
				const TextSpan(text: 'I have read and agree to '),
				userAgreement,
				const TextSpan(text: ' and '),
				privacyPolicy,
			]);
			case 'c.agreement.hint': return 'In order to better protect your legitimate rights and interests, please read and agree to the User Agreement and Privacy Policy';
			case 'c.agreement.privacyPolicy': return 'Privacy Policy';
			case 'c.agreement.title': return 'User Agreement and Privacy Policy';
			case 'c.agreement.userAgreement': return 'User Agreement';
			case 'c.appNmae': return 'Feihong';
			case 'c.language.title': return 'Language settings';
			case 'c.login.forgotPassword': return 'forget the password?';
			case 'c.login.loginWithAutoRegisterHint': return 'Whether to register an account and log in according to your mobile phone device number';
			case 'c.login.loginWithDevice': return 'Automatic device registration and login';
			case 'c.login.loginWithName': return 'Username login';
			case 'c.login.loginWithPhone': return 'Mobile phone number login';
			case 'c.login.nameLabel': return 'username';
			case 'c.login.namePlaceholder': return 'Please enter your username';
			case 'c.login.noAccountYet': return 'Don\'t have an account yet?';
			case 'c.login.passwordLabel': return 'password';
			case 'c.login.passwordPlaceholder': return 'Please enter your password';
			case 'c.login.phoneLabel': return 'Phone number';
			case 'c.login.phoneOrPasswordEmpty': return 'Mobile phone number or password cannot be empty';
			case 'c.login.phonePlaceholder': return 'Please enter your mobile phone number';
			case 'c.login.submit': return 'Log in now';
			case 'c.login.usernameOrPasswordEmpty': return 'Username or password cannot be empty';
			case 'c.login.usernameOrPasswordError': return 'Incorrect username or password';
			case 'c.register.confirmPasswordEmpty': return 'Please fill in the confirmation password';
			case 'c.register.confirmPasswordError': return 'Passwords are inconsistent';
			case 'c.register.confirmPasswordLabel': return 'Confirm Password';
			case 'c.register.confirmPasswordPlaceholder': return 'Please confirm your password';
			case 'c.register.hasAccount': return 'Already have an account?';
			case 'c.register.invitationCode': return 'Invitation code';
			case 'c.register.invitationCodeEmpty': return 'Please fill in the invitation code';
			case 'c.register.invitationCodeError': return 'Invitation code error';
			case 'c.register.invitationCodePlaceholder': return 'Please enter your invitation code';
			case 'c.register.nameLabel': return 'username';
			case 'c.register.namePlaceholder': return 'Please enter your username';
			case 'c.register.passwordEmpty': return 'Please enter your password';
			case 'c.register.passwordError': return 'Password format error (6-18 characters, letters or numbers)';
			case 'c.register.passwordLabel': return 'password';
			case 'c.register.passwordPlaceholder': return 'Please enter your password';
			case 'c.register.phoneEmpty': return 'Please enter your mobile phone number';
			case 'c.register.phoneError': return 'Mobile phone number format error';
			case 'c.register.phoneLabel': return 'Phone number';
			case 'c.register.phonePlaceholder': return 'Please enter your mobile phone number';
			case 'c.register.registerWithAutoRegisterHint': return 'Whether to register an account based on your mobile phone device number';
			case 'c.register.registerWithDevice': return 'Automatic device registration';
			case 'c.register.registerWithName': return 'Username registration';
			case 'c.register.registerWithPhone': return 'Mobile phone number registration';
			case 'c.register.submit': return 'Register now';
			case 'c.register.title': return 'Register an account';
			case 'c.register.usernameEmpty': return 'Please enter your username';
			case 'c.register.usernameError': return 'Username format wrong (6-18-bit characters, cannot contain illegal characters)';
			case 'c.verify.confirmSend': return 'Confirm send';
			case 'c.verify.plsEnterVerificationCode': return 'Please enter your verification code';
			case 'c.verify.resendVerificationCode': return 'Resend verification code';
			case 'c.verify.sendVerificationCode': return 'Send verification code';
			case 'c.verify.verificationCode': return 'Verification code';
			case 'c.verify.verificationCodeTimingReminder': return ({required Object seconds}) => 'Retrieve verification code after ${seconds} S';
			case 'c.welcome': return 'Welcome to Feihong';
			case 'c.zone.cancel': return 'Cancel';
			case 'c.zone.search': return 'Search for countries/regions';
			case 'c.zone.select': return 'choose';
			case 'c.zone.title': return 'Select a country/region';
			case 'contact.title': return '通讯录';
			case 'contact.empty': return '暂无联系人';
			case 'contact.newFriend': return '新的朋友';
			case 'contact.group': return '群聊';
			case 'contact.invite': return '入群邀请';
			case 'errors.error.errAddAppFailed': return 'Added application error';
			case 'errors.error.errAddBannerFailed': return 'New banner information error';
			case 'errors.error.errAddCategoryAppFailed': return 'Add a classification error';
			case 'errors.error.errAddCategoryFailed': return 'Added classification error';
			case 'errors.error.errAddChannelFailed': return 'Failed to add a channel';
			case 'errors.error.errAddFriendRequestFailed': return 'New friend application record error';
			case 'errors.error.errAddInviteDataFailed': return 'Failed to add invitation data';
			case 'errors.error.errAddInviteItemFailed': return 'Failed to add an invitation';
			case 'errors.error.errAddMemberFailed': return 'Failed to add a member';
			case 'errors.error.errAddOrUpdateChannelFailed': return 'Failed to add or update channel information';
			case 'errors.error.errAddSystemAccountFailed': return 'Failed to add a system account';
			case 'errors.error.errAddSystemAccountToCacheFailed': return 'Failed to add system account to cache';
			case 'errors.error.errAddUseRecordFailed': return 'Added usage record error';
			case 'errors.error.errAddUserAddressBookBadgeFailed': return 'New user address book red dot information error';
			case 'errors.error.errAddUserAppFailed': return 'Add user app error';
			case 'errors.error.errAddedAppNotExist': return 'The added app does not exist';
			case 'errors.error.errAlreadyFriends': return 'Already a friend, can\'t apply anymore';
			case 'errors.error.errAppDeletedOrUnavailable': return 'The app has been deleted or unavailable';
			case 'errors.error.errAppIDEmpty': return 'The application ID cannot be empty';
			case 'errors.error.errAppNameExist': return 'This application name already exists';
			case 'errors.error.errApplicantNotExist': return 'The applicant does not exist';
			case 'errors.error.errApplicationNotExist': return 'The application record does not exist';
			case 'errors.error.errAuthCodeNotConfirmInvite': return 'The authorization code is not a confirmation invitation';
			case 'errors.error.errBannerCoverEmpty': return 'Banner cover cannot be empty';
			case 'errors.error.errBannerIDEmpty': return 'Banner number cannot be empty';
			case 'errors.error.errBannerURLEmpty': return 'The banner jump address cannot be empty';
			case 'errors.error.errBatchQueryRobotByUsernameFailed': return 'Bulk query of robot data errors through username';
			case 'errors.error.errBatchQueryRobotFailed': return 'Bulk query robot data error';
			case 'errors.error.errBatchQueryRobotMenuFailed': return 'Bulk query robot menu data error';
			case 'errors.error.errCallIMUpdateChannelFailed': return 'Calling IM to modify channel information service failed';
			case 'errors.error.errCannotAddSelfAsFriend': return 'Can\'t add yourself as a friend';
			case 'errors.error.errCannotProcessSendRequest': return 'Unable to process send message request';
			case 'errors.error.errCategoryIDAndAppIDEmpty': return 'Neither the classification ID nor the application ID can be empty';
			case 'errors.error.errCategoryIDEmpty': return 'Classification number cannot be empty';
			case 'errors.error.errCategoryNameExist': return 'The category name already exists';
			case 'errors.error.errCategoryNotExist': return 'This category does not exist';
			case 'errors.error.errChannelIDEmpty': return 'Channel ID cannot be empty';
			case 'errors.error.errCheckIsFriendFailed': return 'Failed to check whether it is a friend';
			case 'errors.error.errCommitTransactionFailed': return 'Failed to submit transaction';
			case 'errors.error.errContentEmpty': return 'The content sent cannot be empty';
			case 'errors.error.errCreateChannelFailed': return 'Channel creation failed';
			case 'errors.error.errCreateTransactionFailed': return 'Failed to create a transaction';
			case 'errors.error.errDBTransactionCommitFailed': return 'Database things submission failed';
			case 'errors.error.errDBTransactionOpenFailed': return 'Failed to start the transaction';
			case 'errors.error.errDataFormatError': return 'The data format is incorrect';
			case 'errors.error.errDecodeAuthJsonFailed': return 'Decode the JSON data of authentication information failed';
			case 'errors.error.errDeleteAppFailed': return 'Delete the application error';
			case 'errors.error.errDeleteApplicationFailed': return 'Error deleting application record';
			case 'errors.error.errDeleteBannerFailed': return 'Delete banner error';
			case 'errors.error.errDeleteCategoryAppFailed': return 'Delete the error in the category app';
			case 'errors.error.errDeleteCategoryFailed': return 'Delete classification errors';
			case 'errors.error.errDeleteDeviceFailed': return 'Failed to delete the device';
			case 'errors.error.errDeleteFriendFailed': return 'Error deleting friends';
			case 'errors.error.errDeleteModuleNotExist': return 'The deleted module does not exist';
			case 'errors.error.errDeleteRobotMenuFailed': return 'Delete the robot menu failed';
			case 'errors.error.errDeleteUseRecordFailed': return 'Delete usage record error';
			case 'errors.error.errDeleteUserAppFailed': return 'Error deleting user app';
			case 'errors.error.errDeleteUserAppUsageRecordFailed': return 'Delete user app usage history error';
			case 'errors.error.errDeviceNotFound': return 'The device was not found';
			case 'errors.error.errFileUploadFailed': return 'File upload failed';
			case 'errors.error.errFriendInfoNotExist': return 'Friend information does not exist';
			case 'errors.error.errFriendRequestReceiverNotExist': return 'The user receiving the friend request does not exist';
			case 'errors.error.errFriendUIDEmpty': return 'Friend ID cannot be empty';
			case 'errors.error.errGetAuthInfoFailed': return 'Failed to obtain authorization information';
			case 'errors.error.errGetCategoryAppFailed': return 'Get the app error under the category';
			case 'errors.error.errGetChannelNodeFailed': return 'Failed to get the node where the channel is located';
			case 'errors.error.errGetConversationFailed': return 'Failed to get the session';
			case 'errors.error.errGetDeviceInfoFailed': return 'Failed to obtain device information';
			case 'errors.error.errGetGiteeUserInfoFailed': return 'Failed to obtain gitee user information';
			case 'errors.error.errGetInviteItemFailed': return 'Failed to obtain invitation';
			case 'errors.error.errGetLoginStatusFailed': return 'Failed to get login status';
			case 'errors.error.errGetRecentMessagesFailed': return 'Failed to get the latest message';
			case 'errors.error.errGetRobotInfoFailed': return 'Failed to obtain robot information';
			case 'errors.error.errGetShortNoFailed': return 'Failed to get short number';
			case 'errors.error.errGetSlotNodeFailed': return 'Failed to get the node where the slot is located';
			case 'errors.error.errGetSystemAccountFailed': return 'Failed to obtain the system account';
			case 'errors.error.errGroupIDEmpty': return 'The operation group ID cannot be empty';
			case 'errors.error.errGroupMemberEmpty': return 'Group members cannot be empty';
			case 'errors.error.errGroupNotExist': return 'The group of operations does not exist';
			case 'errors.error.errInsertGiteeUserFailed': return 'Failed to insert gitee user';
			case 'errors.error.errInvalidPayload': return 'Invalid payload';
			case 'errors.error.errInviteCodeEmpty': return 'The invitation code cannot be empty';
			case 'errors.error.errInviteCodeNotExist': return 'The invitation code does not exist';
			case 'errors.error.errInviteInfoNotFound': return 'No invitation information was found';
			case 'errors.error.errInviteStatusNotPending': return 'Invitation information is not an invitation status';
			case 'errors.error.errInviterUserInfoNotFound': return 'No user information of the inviter was found';
			case 'errors.error.errJwtSecretNotConfigured': return 'jwt.secret is not configured';
			case 'errors.error.errLoggedInUserNotExist': return 'The logged-in user does not exist';
			case 'errors.error.errLoginStatusExpired': return 'Login status has expired';
			case 'errors.error.errMessageSyncReceiptFailed': return 'Message synchronization receipt failed';
			case 'errors.error.errNewPasswordSameAsOld': return 'The new password cannot be the same as the old password';
			case 'errors.error.errNotAllowSendToChannel': return 'Messages are not allowed to be sent to this channel';
			case 'errors.error.errNotGroupAdminOrCreator': return 'You are not a group owner or administrator';
			case 'errors.error.errOldPasswordIncorrect': return 'Old password error';
			case 'errors.error.errOperatedRobotNotExist': return 'The operating robot does not exist';
			case 'errors.error.errOperationStatusEmpty': return 'The operation status cannot be empty';
			case 'errors.error.errPCLogoutFailed': return 'Failed to exit the PC device';
			case 'errors.error.errPasswordEmpty': return 'Password cannot be empty';
			case 'errors.error.errPasswordIncorrect': return 'Incorrect password';
			case 'errors.error.errPersonalChannelNotSupportAddSub': return 'Personal channels do not support adding subscribers';
			case 'errors.error.errPersonalChannelNotSupported': return 'Personal channels are not supported yet';
			case 'errors.error.errPhoneNumberNotExist': return 'Missing mobile number';
			case 'errors.error.errPublicKeyEmpty': return 'The public key cannot be empty';
			case 'errors.error.errQRCodeVerificationFailed': return 'QR code verification failed';
			case 'errors.error.errQueryAllAppFailed': return 'Query all application errors';
			case 'errors.error.errQueryAllCategoryFailed': return 'Query all classification errors';
			case 'errors.error.errQueryAppBatchFailed': return 'Query a batch of application errors';
			case 'errors.error.errQueryAppByCategoryFailed': return 'Application errors through classification query';
			case 'errors.error.errQueryAppFailed': return 'Query application error';
			case 'errors.error.errQueryAppModuleFailed': return 'Error in querying app module';
			case 'errors.error.errQueryApplicantInfoFailed': return 'Error in querying the user information of the application';
			case 'errors.error.errQueryBannerDataFailed': return 'Error in querying banner data';
			case 'errors.error.errQueryBannerFailed': return 'Query banner error';
			case 'errors.error.errQueryCategoryAppFailed': return 'Query the application errors under this category';
			case 'errors.error.errQueryCategoryAppMaxOrderFailed': return 'Query the maximum serial number of the classification application error';
			case 'errors.error.errQueryCategoryAppNameExistFailed': return 'Query if there is an error in this category of apps';
			case 'errors.error.errQueryCategoryByNameFailed': return 'Query classification errors by category name';
			case 'errors.error.errQueryCategoryFailed': return 'Query classification error';
			case 'errors.error.errQueryChannelFailed': return 'Failed to query the channel';
			case 'errors.error.errQueryChannelTypeEmpty': return 'The query channel type cannot be empty';
			case 'errors.error.errQueryCreatorOrAdminUidFailed': return 'Failed to query the creator or administrator\'s uid';
			case 'errors.error.errQueryDeviceListFailed': return 'Failed to query the device list';
			case 'errors.error.errQueryFriendAppListFailed': return 'Error in querying friend application list';
			case 'errors.error.errQueryFriendApplicationFailed': return 'Inquiry application record error';
			case 'errors.error.errQueryFriendInfoFailed': return 'Error in querying friend information';
			case 'errors.error.errQueryFriendRequestFailed': return 'Error in querying friend application record';
			case 'errors.error.errQueryGiteeUserInfoFailed': return 'Failed to query gitee user information';
			case 'errors.error.errQueryGroupCountFailed': return 'Incorrect query group count';
			case 'errors.error.errQueryGroupInfoFailed': return 'Error in query group information';
			case 'errors.error.errQueryGroupListFailed': return 'Query group list error';
			case 'errors.error.errQueryGroupMemberCountFailed': return 'Error querying the total number of members of the group';
			case 'errors.error.errQueryGroupMemberFailed': return 'Query group member error';
			case 'errors.error.errQueryInviteDetailFailed': return 'Failed to query invitation details';
			case 'errors.error.errQueryInviterUserInfoFailed': return 'Failed to query the inviter\'s user information';
			case 'errors.error.errQueryIsAdminOrCreatorFailed': return 'Querying whether the administrator or creator failed';
			case 'errors.error.errQueryMaxOrderCategoryFailed': return 'Query maximum serial number classification error';
			case 'errors.error.errQueryMemberInfoFailed': return 'Error in querying member information';
			case 'errors.error.errQueryOperatedRobotFailed': return 'Robot error in query operation';
			case 'errors.error.errQueryReportCountFailed': return 'Incorrect query total number of reports';
			case 'errors.error.errQueryReportGroupSetFailed': return 'Query Report cluster collection error';
			case 'errors.error.errQueryReportListFailed': return 'Error in query report list';
			case 'errors.error.errQueryReportUserSetFailed': return 'Query Report User Collection Error';
			case 'errors.error.errQueryRobotMenuFailed': return 'Error in querying robot menu';
			case 'errors.error.errQueryTotalCountFailed': return 'Incorrect query total number';
			case 'errors.error.errQueryUseRecordFailed': return 'Query usage record error';
			case 'errors.error.errQueryUserAddressBookBadgeFailed': return 'Error in querying user address book red dot information';
			case 'errors.error.errQueryUserAppFailed': return 'Query user for an application error';
			case 'errors.error.errQueryUserFriendSettingsFailed': return 'Query user friend settings error';
			case 'errors.error.errQueryUserFriendsFailed': return 'Failed to query user friends';
			case 'errors.error.errQueryUserInfoFailed': return 'Error in querying user information';
			case 'errors.error.errQueryUserMaxOrderAppFailed': return 'Error in querying user maximum serial number app';
			case 'errors.error.errQueryUserOnlineStatusFailed': return 'Failed to query user online status';
			case 'errors.error.errQueryUserSavedAppFailed': return 'Query user saved application error';
			case 'errors.error.errRegisterFailed': return 'Registration failed';
			case 'errors.error.errRegistrationNotSupported': return 'Registration is not supported';
			case 'errors.error.errRemoveAllBlacklistFailed': return 'Failed to remove all blacklists';
			case 'errors.error.errRemoveAllWhitelistFailed': return 'Removal of all singular orders failed';
			case 'errors.error.errRemoveSystemAccountFailed': return 'Failed to remove the system account';
			case 'errors.error.errRemoveSystemAccountFromCacheFailed': return 'Failed to remove the system account from cache';
			case 'errors.error.errRequestDataError': return 'The requested data format is incorrect';
			case 'errors.error.errResetFriendSettingsFailed': return 'Reset friend settings error';
			case 'errors.error.errRobotIDEmpty': return 'The robot ID cannot be empty';
			case 'errors.error.errRobotNoAppID': return 'Robots don\'t have app_id';
			case 'errors.error.errRobotNotExist': return 'The robot does not exist';
			case 'errors.error.errSaveMessageFailed': return 'Saving message failed';
			case 'errors.error.errSearchAppFailed': return 'Search for application errors';
			case 'errors.error.errSendDeleteFriendEventFailed': return 'Failed to send a deleted friend event';
			case 'errors.error.errSendMessageFailed': return 'Failed to send a message';
			case 'errors.error.errSendStreamEndFailed': return 'Failed to send stream end message';
			case 'errors.error.errSendStreamStartFailed': return 'Failed to send stream start message';
			case 'errors.error.errSendTypingFailed': return 'Failed to send typing message';
			case 'errors.error.errSendVerifyCodeFailed': return 'Failed to send verification code';
			case 'errors.error.errSenderEmpty': return 'The sender cannot be empty';
			case 'errors.error.errSetApplicationTokenFailed': return 'Failed to set up application token';
			case 'errors.error.errSetTokenCacheFailed': return 'Failed to set token cache';
			case 'errors.error.errSignatureEmpty': return 'Signature characters cannot be empty';
			case 'errors.error.errSignatureError': return 'Signature error';
			case 'errors.error.errSignatureInfoNotExist': return 'Signature information does not exist';
			case 'errors.error.errSlotLeaderNodeInfoNotExist': return 'The node information corresponding to the slot leader does not exist';
			case 'errors.error.errSlotLeaderNodeNotExist': return 'The leader node of the slot does not exist';
			case 'errors.error.errStartEventFailed': return 'Failed to enable event';
			case 'errors.error.errStressMachineNotExist': return 'The pressure test machine does not exist';
			case 'errors.error.errStressTestNotEnabled': return 'The pressure measurement configuration is not enabled, and the pressure measurement is not supported.';
			case 'errors.error.errSystemAccountUpdateTokenNotAllowed': return 'System account does not allow token update';
			case 'errors.error.errUnknownOperationType': return 'Unknown operation type';
			case 'errors.error.errUnsupportedType': return 'Unsupported type';
			case 'errors.error.errUpdateAppInfoFailed': return 'Error modifying application information';
			case 'errors.error.errUpdateApplicationFailed': return 'Error in modifying the application record';
			case 'errors.error.errUpdateBannerFailed': return 'Modify banner error';
			case 'errors.error.errUpdateCategoryAppOrderFailed': return 'Modify the app sorting error in the classification';
			case 'errors.error.errUpdateCategoryFailed': return 'Modify classification error';
			case 'errors.error.errUpdateChannelInfoFailed': return 'Failed to update channel information';
			case 'errors.error.errUpdateFriendRelationFailed': return 'Error modifying friend single-item relationship';
			case 'errors.error.errUpdateFriendRequestFailed': return 'Error modifying friend application record';
			case 'errors.error.errUpdateGroupInfoFailed': return 'Failed to update group information';
			case 'errors.error.errUpdateIMTokenFailed': return 'Failed to update IM token';
			case 'errors.error.errUpdateInviteItemStatusFailed': return 'Failed to update the invitation information status';
			case 'errors.error.errUpdateInviteStatusFailed': return 'Failed to update the invitation information status';
			case 'errors.error.errUpdateLoginPasswordFailed': return 'Error modifying the login password';
			case 'errors.error.errUpdateRobotStatusFailed': return 'Error modifying the robot status information';
			case 'errors.error.errUpdateRobotVersionFailed': return 'Error modifying the version number of the robot';
			case 'errors.error.errUpdateUseRecordFailed': return 'Modify usage record error';
			case 'errors.error.errUpdateUserAddressBookBadgeFailed': return 'Modify the user\'s address book red dot information error';
			case 'errors.error.errUpdateUserAppOrderFailed': return 'Error modifying user app order';
			case 'errors.error.errUserAlreadyUploadPublicKey': return 'The user has uploaded the public key information';
			case 'errors.error.errUserDisabledOrBanned': return 'This user does not exist or is blocked/banned';
			case 'errors.error.errUserNoPublicKey': return 'This user did not upload the public key';
			case 'errors.error.errUserNotExist': return 'This user does not exist';
			case 'errors.error.errUsernameExist': return 'This username already exists';
			case 'errors.error.errUsernameLengthInvalid': return 'Invalid username length';
			case 'errors.error.errUsernameLoginLengthInvalid': return 'Username must be between 6-18 digits';
			case 'errors.error.errUsernameNotExist': return 'This username does not exist';
			case 'errors.error.errUsernameOrPasswordError': return 'Incorrect username or password';
			case 'errors.error.errUsernameRegisterOff': return 'Username registration function is turned off';
			case 'errors.error.errVerificationCodeEmpty': return 'The verification code cannot be empty';
			case 'errors.error.errVerifyCharEmpty': return 'The check character cannot be empty';
			case 'errors.error.errVerifySignatureError': return 'Verify signature error';
			case 'errors.error.errVerifyTypeNotMatch': return 'Verification type mismatch';
			case 'errors.error.errWebLogoutFailed': return 'Failed to exit the web device';
			case 'errors.error.errZoneNotExist': return 'Missing mobile phone area code';
			case 'errors.error.errZoneNotSupport': return 'Unsupported mobile phone area code';
			case 'errors.error.errNodeNotExist': return 'The node does not exist';
			case 'errors.httpError.badCertificate': return 'Certificate error, please contact the administrator';
			case 'errors.httpError.badResponse': return 'Server error, please contact the administrator';
			case 'errors.httpError.connectionError': return 'The connection cannot be established with the server, please check the network or proxy';
			case 'errors.httpError.connectionTimeout': return 'The network connection timed out, please check the network or agent';
			case 'errors.httpError.networkError': return 'The network connection timed out, please check the network or agent';
			case 'errors.httpError.receiveTimeout': return 'Network request timeout, please check the network or proxy';
			case 'errors.httpError.sendTimeout': return 'Network request timeout, please check the network or proxy';
			case 'errors.httpError.title': return 'An error occurred';
			case 'errors.httpError.unknown': return 'Server error, please contact the administrator';
			default: return null;
		}
	}
}

