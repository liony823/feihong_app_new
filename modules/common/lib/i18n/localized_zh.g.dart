///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'localized.g.dart';

// Path: <root>
typedef LocalizedZh = Localized; // ignore: unused_element
class Localized implements BaseTranslations<AppLocale, Localized> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Localized.of(context);
	static Localized of(BuildContext context) => InheritedLocaleData.of<AppLocale, Localized>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Localized({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Localized>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.zh,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh>.
	@override final TranslationMetadata<AppLocale, Localized> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Localized _root = this; // ignore: unused_field

	Localized $copyWith({TranslationMetadata<AppLocale, Localized>? meta}) => Localized(meta: meta ?? this.$meta);

	// Translations
	late final LocalizedCZh c = LocalizedCZh.internal(_root);
	late final LocalizedContactZh contact = LocalizedContactZh.internal(_root);
	late final LocalizedErrorsZh errors = LocalizedErrorsZh.internal(_root);
	late final LocalizedHomeZh home = LocalizedHomeZh.internal(_root);
	late final LocalizedMsgZh msg = LocalizedMsgZh.internal(_root);
}

// Path: c
class LocalizedCZh {
	LocalizedCZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get appNmae => '飞宏';
	String get welcome => '欢迎来到飞宏';
	String get confirm => '确认';
	String get cancel => '取消';
	String get toolboxAlbum => '相册';
	String get toolboxCamera => '相机';
	String get supportsTypeHint => '仅支持png、jpg、jpeg、gif、bmp及webp格式。';
	String get tapTooShort => '点击时间太短';
	String get talkTooShort => '说话时间太短';
	String get permissionDeniedTitle => '权限被拒绝';
	String get permissionDeniedHint => '请在设置中允许使用%s权限。';
	String get close => '关闭';
	String get manager => '管理';
	String get delete => '删除';
	String get edit => '编辑';
	String get add => '添加';
	String get save => '保存';
	String get retry => '重试';
	String get you => '你';
	String get noInternet => '没有网络连接';
	String get networkError => '网络异常，请检查您的网络设置';
	String get saveSuccessfully => '保存成功';
	String get saveToGallery => '保存到相册';
	String get saveFailed => '保存失败';
	String get permanentlyDenied => '权限不允许';
	String get letsStartChattingLabel => '让我们开始聊天吧';
	String get loadingChannelsError => '加载频道失败';
	String get launchUrlError => '不能打开此链接';
	List<String> get gender => [
		'其他',
		'男',
		'女',
	];
	List<String> get onlineDevice => [
		'手机端在线',
		'Web端在线',
		'电脑端在线',
	];
	late final LocalizedCDateFormatZh dateFormat = LocalizedCDateFormatZh.internal(_root);
	late final LocalizedCAgreementZh agreement = LocalizedCAgreementZh.internal(_root);
	late final LocalizedCLanguageZh language = LocalizedCLanguageZh.internal(_root);
	late final LocalizedCZoneZh zone = LocalizedCZoneZh.internal(_root);
	late final LocalizedCLoginZh login = LocalizedCLoginZh.internal(_root);
	late final LocalizedCRegisterZh register = LocalizedCRegisterZh.internal(_root);
	late final LocalizedCVerifyZh verify = LocalizedCVerifyZh.internal(_root);
	late final LocalizedCSetSelfInfoZh setSelfInfo = LocalizedCSetSelfInfoZh.internal(_root);
	late final LocalizedCSetSelfSecurityZh setSelfSecurity = LocalizedCSetSelfSecurityZh.internal(_root);
	late final LocalizedCRefreshZh refresh = LocalizedCRefreshZh.internal(_root);
	late final LocalizedCDropdownMenuZh dropdownMenu = LocalizedCDropdownMenuZh.internal(_root);
	late final LocalizedCMineZh mine = LocalizedCMineZh.internal(_root);
	late final LocalizedCSettingZh setting = LocalizedCSettingZh.internal(_root);
	late final LocalizedCAccountZh account = LocalizedCAccountZh.internal(_root);
	late final LocalizedCProfileZh profile = LocalizedCProfileZh.internal(_root);
	List<String> get connectStatus => [
		'同步失败',
		'链接成功',
		'被其他设备登录',
		'同步中',
		'链接中',
		'无网络',
		'同步成功',
	];
}

// Path: contact
class LocalizedContactZh {
	LocalizedContactZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get title => '通讯录';
	String get empty => '暂无联系人';
	String get newFriend => '新的朋友';
	String get group => '群聊';
	String get invite => '入群邀请';
	late final LocalizedContactFriendApplyZh friendApply = LocalizedContactFriendApplyZh.internal(_root);
	late final LocalizedContactSearchUserZh searchUser = LocalizedContactSearchUserZh.internal(_root);
	late final LocalizedContactFriendHomeZh friendHome = LocalizedContactFriendHomeZh.internal(_root);
}

// Path: errors
class LocalizedErrorsZh {
	LocalizedErrorsZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get somethingUnexpected => '发生了一些意外，请稍后再试';
	String get retry => '重试';
	Map<String, String> get httpError => {
		'title': '发生错误',
		'networkError': '网络连接超时，请检查网络或者代理',
		'connectionTimeout': '网络连接超时，请检查网络或者代理',
		'sendTimeout': '网络请求超时，请检查网络或者代理',
		'receiveTimeout': '网络请求超时，请检查网络或者代理',
		'badCertificate': '证书错误，请联系管理员',
		'badResponse': '服务器错误，请联系管理员',
		'connectionError': '与服务器无法建立连接，请检查网络或者代理',
		'unknown': '服务器错误，请联系管理员',
	};
	Map<String, String> get error => {
		'errDataFormatError': '数据格式有误',
		'errDBTransactionOpenFailed': '开启事务失败',
		'errCreateTransactionFailed': '创建事务失败',
		'errDBTransactionCommitFailed': '数据库事物提交失败',
		'errFileUploadFailed': '文件上传失败',
		'errSenderEmpty': '发送者不能为空',
		'errContentEmpty': '发送内容不能为空',
		'errSendMessageFailed': '发送消息失败',
		'errCannotProcessSendRequest': '无法处理发送消息请求',
		'errSaveMessageFailed': '保存消息失败',
		'errMessageSyncReceiptFailed': '消息同步回执失败',
		'errGetChannelNodeFailed': '获取频道所在节点失败',
		'errCreateChannelFailed': '创建频道失败',
		'errAddOrUpdateChannelFailed': '添加或更新频道信息失败',
		'errQueryChannelFailed': '查询频道失败',
		'errAddChannelFailed': '添加频道失败',
		'errChannelIDEmpty': '频道ID不能为空',
		'errPersonalChannelNotSupported': '暂不支持个人频道',
		'errPersonalChannelNotSupportAddSub': '个人频道不支持添加订阅者',
		'errRemoveAllBlacklistFailed': '移除所有黑名单失败',
		'errUpdateChannelInfoFailed': '更新频道信息失败',
		'errRemoveAllWhitelistFailed': '移除所有白明单失败',
		'errGetConversationFailed': '获取会话失败',
		'errGetRecentMessagesFailed': '获取最近消息失败',
		'errSystemAccountUpdateTokenNotAllowed': '系统账号不允许更新token',
		'errSlotLeaderNodeNotExist': '槽的领导节点不存在',
		'errAddSystemAccountFailed': '添加系统账号失败',
		'errAddSystemAccountToCacheFailed': '添加系统账号到缓存失败',
		'errGetSlotNodeFailed': '获取slot所在节点失败',
		'errRemoveSystemAccountFailed': '移除系统账号失败',
		'errRemoveSystemAccountFromCacheFailed': '移除系统账号从缓存失败',
		'errGetSystemAccountFailed': '获取系统账号失败',
		'errUsernameOrPasswordError': '用户名或密码错误',
		'errJwtSecretNotConfigured': '没有配置jwt.secret',
		'errUsernameRegisterOff': '用户名已注册功能已关闭',
		'errRequestDataError': '请求数据格式有误',
		'errNicknameEmpty': '用户昵称不能为空',
		'errUsernameEmpty': '用户名不能为空',
		'errUsernameNotInvalid': '用户名须以字母开头，仅支持使用6～18个字母、数字、下划线自由组合',
		'errInviteCodeEmpty': '邀请码不能为空',
		'errInviteCodeNotExist': '邀请码不存在',
		'errPasswordEmpty': '密码不能为空',
		'errUsernameExist': '该用户名已存在',
		'errUsernameNotExist': '该用户名不存在',
		'errUserNotExist': '该用户不存在',
		'errPasswordIncorrect': '密码不正确',
		'errRegisterFailed': '注册失败',
		'errVerifyCharEmpty': '校验字符不能为空',
		'errSignatureEmpty': '签名字符不能为空',
		'errUserNoPublicKey': '该用户未上传公钥',
		'errSignatureInfoNotExist': '签名信息不存在',
		'errVerifySignatureError': '校验签名错误',
		'errSignatureError': '签名错误',
		'errPublicKeyEmpty': '公钥不能为空',
		'errUserDisabledOrBanned': '该用户不存在或被封禁/禁用',
		'errUserAlreadyUploadPublicKey': '该用户已上传过公钥信息',
		'errVerifyTypeNotMatch': '验证类型不匹配',
		'errNewPasswordSameAsOld': '新密码不能和旧密码相同',
		'errOldPasswordIncorrect': '旧密码错误',
		'errUpdateLoginPasswordFailed': '修改登录密码错误',
		'errGetShortNoFailed': '获取短编号失败',
		'errSetTokenCacheFailed': '设置token缓存失败',
		'errUpdateIMTokenFailed': '更新IM token失败',
		'errZoneNotExist': '缺少手机区号',
		'errPhoneNumberNotExist': '缺少手机号',
		'errZoneNotSupport': '不支持的手机区号',
		'errSendVerifyCodeFailed': '发送验证码失败',
		'errRegistrationNotSupported': '不支持注册',
		'errGetLoginStatusFailed': '获取登录状态失败',
		'errLoginStatusExpired': '登录状态已过期',
		'errGetGiteeUserInfoFailed': '获取gitee用户信息失败',
		'errQueryGiteeUserInfoFailed': '查询gitee用户信息失败',
		'errInsertGiteeUserFailed': '插入gitee user失败',
		'errQRCodeVerificationFailed': '二维码验证失败',
		'errGetDeviceInfoFailed': '获取设备信息失败',
		'errDeviceNotFound': '未查询到该设备',
		'errDeleteDeviceFailed': '删除设备失败',
		'errQueryDeviceListFailed': '查询设备列表失败',
		'errWebLogoutFailed': '退出web设备失败',
		'errPCLogoutFailed': '退出PC设备失败',
		'errQueryUserOnlineStatusFailed': '查询用户在线状态失败',
		'errQueryUserFriendsFailed': '查询用户好友失败',
		'errQueryGroupListFailed': '查询群列表错误',
		'errQueryGroupCountFailed': '查询群数量错误',
		'errGroupIDEmpty': '操作群ID不能为空',
		'errOperationStatusEmpty': '操作状态不能为空',
		'errQueryGroupInfoFailed': '查询群信息错误',
		'errGroupNotExist': '操作的群不存在',
		'errUnknownOperationType': '未知操作类型',
		'errCallIMUpdateChannelFailed': '调用IM修改channel信息服务失败',
		'errUpdateGroupInfoFailed': '更新群信息失败',
		'errGroupMemberEmpty': '群成员不能为空',
		'errQueryGroupMemberFailed': '查询群成员错误',
		'errQueryGroupMemberCountFailed': '查询群成员总数错误',
		'errFriendUIDEmpty': '好友ID不能为空',
		'errQueryFriendApplicationFailed': '查询申请记录错误',
		'errApplicationNotExist': '申请记录不存在',
		'errUpdateApplicationFailed': '修改申请记录错误',
		'errDeleteApplicationFailed': '删除申请记录错误',
		'errQueryFriendAppListFailed': '查询好友申请列表错误',
		'errQueryApplicantInfoFailed': '查询申请用户信息错误',
		'errApplicantNotExist': '申请者不存在',
		'errDeleteFriendFailed': '删除好友错误',
		'errUpdateFriendRelationFailed': '修改好友单项关系错误',
		'errSendDeleteFriendEventFailed': '发送删除好友事件失败',
		'errQueryUserFriendSettingsFailed': '查询用户好友设置错误',
		'errResetFriendSettingsFailed': '重置好友设置错误',
		'errCommitTransactionFailed': '提交事务失败',
		'errCannotAddSelfAsFriend': '不能添加自己为好友',
		'errLoggedInUserNotExist': '登录用户不存在',
		'errCheckIsFriendFailed': '查询是否是好友失败',
		'errAlreadyFriends': '已经是好友，不能再申请',
		'errFriendRequestReceiverNotExist': '接收好友请求的用户不存在',
		'errQueryFriendInfoFailed': '查询好友信息错误',
		'errFriendInfoNotExist': '好友信息不存在',
		'errVerificationCodeEmpty': '验证码不能为空',
		'errSetApplicationTokenFailed': '设置申请token失败',
		'errQueryFriendRequestFailed': '查询好友申请记录错误',
		'errQueryUserAddressBookBadgeFailed': '查询用户通讯录红点信息错误',
		'errAddFriendRequestFailed': '新增好友申请记录错误',
		'errUpdateFriendRequestFailed': '修改好友申请记录错误',
		'errAddUserAddressBookBadgeFailed': '新增用户通讯录红点信息错误',
		'errUpdateUserAddressBookBadgeFailed': '修改用户通讯录红点信息错误',
		'errQueryCreatorOrAdminUidFailed': '查询创建者或管理员的uid失败',
		'errStartEventFailed': '开启事件失败',
		'errAddInviteDataFailed': '添加邀请数据失败',
		'errAddInviteItemFailed': '添加邀请项失败',
		'errQueryIsAdminOrCreatorFailed': '查询是否管理者或创建者失败',
		'errNotGroupAdminOrCreator': '你不是群主或管理员',
		'errGetAuthInfoFailed': '获取授权信息失败',
		'errDecodeAuthJsonFailed': '解码认证信息的JSON数据失败',
		'errAuthCodeNotConfirmInvite': '授权码不是确认邀请',
		'errQueryInviteDetailFailed': '查询邀请详情失败',
		'errInviteInfoNotFound': '没有查询到邀请信息',
		'errInviteStatusNotPending': '邀请信息不是待邀请状态',
		'errQueryInviterUserInfoFailed': '查询邀请者的用户信息失败',
		'errInviterUserInfoNotFound': '没有查到邀请者的用户信息',
		'errUpdateInviteStatusFailed': '更新邀请信息状态失败',
		'errUpdateInviteItemStatusFailed': '更新邀请信息项状态失败',
		'errAddMemberFailed': '添加成员失败',
		'errGetInviteItemFailed': '获取邀请项失败',
		'errQueryMemberInfoFailed': '查询成员信息错误',
		'errQueryChannelTypeEmpty': '查询频道类型不能为空',
		'errQueryReportListFailed': '查询举报列表错误',
		'errQueryReportCountFailed': '查询举报总数量错误',
		'errQueryUserInfoFailed': '查询用户信息错误',
		'errQueryReportUserSetFailed': '查询举报用户集合错误',
		'errQueryReportGroupSetFailed': '查询举报群集合错误',
		'errRobotIDEmpty': '机器人ID不能为空',
		'errQueryRobotMenuFailed': '查询机器人菜单错误',
		'errQueryOperatedRobotFailed': '查询操作的机器人错误',
		'errOperatedRobotNotExist': '操作的机器人不存在',
		'errDeleteRobotMenuFailed': '删除机器人菜单失败',
		'errUpdateRobotVersionFailed': '修改机器人版本号错误',
		'errUpdateRobotStatusFailed': '修改机器人状态信息错误',
		'errSendStreamStartFailed': '发送stream start消息失败',
		'errSendStreamEndFailed': '发送stream end消息失败',
		'errNotAllowSendToChannel': '不允许发送消息到此频道',
		'errSendTypingFailed': '发送typing消息失败',
		'errUnsupportedType': '不支持的type',
		'errInvalidPayload': '无效的payload',
		'errGetRobotInfoFailed': '获取机器人信息失败',
		'errRobotNotExist': '机器人不存在',
		'errRobotNoAppID': '机器人没有app_id',
		'errBatchQueryRobotFailed': '批量查询机器人数据错误',
		'errBatchQueryRobotByUsernameFailed': '批量通过username查询机器人数据错误',
		'errBatchQueryRobotMenuFailed': '批量查询机器人菜单数据错误',
		'errAppIDEmpty': '应用ID不能为空',
		'errDeleteUseRecordFailed': '删除使用记录错误',
		'errQueryUseRecordFailed': '查询使用记录错误',
		'errQueryAppBatchFailed': '查询一批应用错误',
		'errQueryUserSavedAppFailed': '查询用户已保存的应用错误',
		'errQueryAppFailed': '查询应用错误',
		'errAppDeletedOrUnavailable': '该应用已删除或不可用',
		'errAddUseRecordFailed': '新增使用记录错误',
		'errUpdateUseRecordFailed': '修改使用记录错误',
		'errCategoryIDEmpty': '分类编号不能为空',
		'errQueryAppByCategoryFailed': '通过分类查询应用错误',
		'errUpdateUserAppOrderFailed': '修改用户app顺序错误',
		'errDeleteUserAppFailed': '删除用户app错误',
		'errQueryUserAppFailed': '查询用户某个应用错误',
		'errQueryUserMaxOrderAppFailed': '查询用户最大序号app错误',
		'errAddUserAppFailed': '添加用户app错误',
		'errQueryCategoryFailed': '查询分类错误',
		'errQueryBannerDataFailed': '查询横幅数据错误',
		'errCategoryNotExist': '该分类不存在',
		'errUpdateCategoryFailed': '修改分类错误',
		'errDeleteCategoryFailed': '删除分类错误',
		'errQueryAllAppFailed': '查询所有应用错误',
		'errQueryTotalCountFailed': '查询总数量错误',
		'errSearchAppFailed': '搜索应用错误',
		'errDeleteCategoryAppFailed': '删除分类下app错误',
		'errAddedAppNotExist': '添加的应用不存在',
		'errQueryCategoryAppFailed': '查询该分类下应用错误',
		'errQueryCategoryAppMaxOrderFailed': '查询分类应用最大序号错误',
		'errAddCategoryAppFailed': '添加分类下app错误',
		'errUpdateCategoryAppOrderFailed': '修改分类下app排序错误',
		'errGetCategoryAppFailed': '获取分类下的app错误',
		'errBannerIDEmpty': '横幅编号不能为空',
		'errBannerURLEmpty': '横幅跳转地址不能为空',
		'errBannerCoverEmpty': '横幅封面不能为空',
		'errUpdateBannerFailed': '修改横幅错误',
		'errQueryBannerFailed': '查询横幅错误',
		'errDeleteBannerFailed': '删除横幅错误',
		'errQueryAllCategoryFailed': '查询所有分类错误',
		'errAddBannerFailed': '新增横幅信息错误',
		'errUpdateAppInfoFailed': '修改应用信息错误',
		'errCategoryIDAndAppIDEmpty': '分类ID和应用ID均不能为空',
		'errDeleteAppFailed': '删除应用错误',
		'errDeleteUserAppUsageRecordFailed': '删除用户app使用记录错误',
		'errQueryCategoryAppNameExistFailed': '查询此分类下app是否存在此名称错误',
		'errAppNameExist': '此应用名已存在',
		'errAddAppFailed': '新增应用错误',
		'errQueryCategoryByNameFailed': '通过分类名查询分类错误',
		'errCategoryNameExist': '该分类名称已存在',
		'errQueryMaxOrderCategoryFailed': '查询最大序号分类错误',
		'errAddCategoryFailed': '新增分类错误',
		'errQueryAppModuleFailed': '查询app模块错误',
		'errDeleteModuleNotExist': '删除的模块不存在',
		'errNodeNotExist': '节点不存在',
		'errStressTestNotEnabled': '没有开启压测配置，不支持压测',
		'errSlotLeaderNodeInfoNotExist': '槽领导对应的节点信息不存在',
		'errStressMachineNotExist': '压测机器不存在',
	};
}

// Path: home
class LocalizedHomeZh {
	LocalizedHomeZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	late final LocalizedHomeTabZh tab = LocalizedHomeTabZh.internal(_root);
	List<String> get connectionStatus => [
		'同步失败',
		'同步成功',
		'已在其他设备登录',
		'同步中',
		'连接中',
		'网络异常',
		'同步成功',
	];
	late final LocalizedHomeConversationZh conversation = LocalizedHomeConversationZh.internal(_root);
}

// Path: msg
class LocalizedMsgZh {
	LocalizedMsgZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get channelMuted => '已静音';
	String get applyJoinGroup => '[进群申请]';
	String get lastMsgRemind => '[有人@你]';
	String get lastMsgDraft => '[草稿]';
	String get unkownMsg => '[未知消息，请先升级客户端查看]';
	String get formarMsgError => '[消息格式错误，无法查看]';
	String get signalDecryptError => '[消息解密失败，无法查看]';
	String get youRecalledAMessage => '你撤回了一条消息';
	String someoneRecalledAMessage({required Object name}) => '\'${name}\'撤回了一条消息';
	String youRecalledMemberMessage({required Object member}) => '你撤回了一条成员 \'${member}\' 的消息';
	String someoneRecalledMemberMessage({required Object name}) => '${name} 撤回了一条成员的消息';
	String noRelationRequest({required Object name}) => '${name}开启了朋友验证，你还不是他（她）朋友。请先发送朋友验证请求，对方验证通过后，才能聊天。发送验证请求';
	String get systemFileHelper => '文件传输助手';
	String get systemTeam => '系统通知';
	String get chat => '会话';
	String get ohterTyping => '对方正在输入';
	String userIsTyping({required Object name}) => '${name}正在输入';
	String groupMembers({required Object count}) => '${count}个成员';
	String onlintCount({required Object count}) => '${count}人在线';
	String lastSeenTime({required Object time}) => '上次在线时间${time}';
}

// Path: c.dateFormat
class LocalizedCDateFormatZh {
	LocalizedCDateFormatZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get yesterday => '昨天';
	String get am => '上午';
	String get pm => '下午';
	String get today => '今天';
	List<String> get weeks => [
		'周日',
		'周一',
		'周二',
		'周三',
		'周四',
		'周五',
		'周六',
	];
	String minute({required Object minute}) => '${minute}分钟';
	String hour({required Object hour}) => '${hour}小时';
	String day({required Object day}) => '${day}天';
	String month({required Object month}) => '${month}月';
	String year({required Object year}) => '${year}年';
	String get just => '刚刚';
}

// Path: c.agreement
class LocalizedCAgreementZh {
	LocalizedCAgreementZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get userAgreement => '《用户协议》';
	String get privacyPolicy => '《隐私政策》';
	TextSpan checkbox({required InlineSpan userAgreement, required InlineSpan privacyPolicy}) => TextSpan(children: [
		const TextSpan(text: '我已阅读并同意 '),
		userAgreement,
		const TextSpan(text: ' 和 '),
		privacyPolicy,
	]);
	String get title => '用户协议和隐私政策';
	String get hint => '为了更好地保障您的合法权益，请您阅读并同意《用户协议》 和 《隐私政策》';
}

// Path: c.language
class LocalizedCLanguageZh {
	LocalizedCLanguageZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get title => '语言设置';
}

// Path: c.zone
class LocalizedCZoneZh {
	LocalizedCZoneZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get title => '选择国家/地区';
	String get search => '搜索国家/地区';
	String get cancel => '取消';
	String get select => '选择';
}

// Path: c.login
class LocalizedCLoginZh {
	LocalizedCLoginZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get loginWithPhone => '手机号登录';
	String get loginWithName => '用户名登录';
	String get loginWithDevice => '设备自动注册登录';
	String get loginWithAutoRegisterHint => '是否根据手机设备号注册账号并登录';
	String get phoneLabel => '手机号';
	String get nameLabel => '用户名';
	String get passwordLabel => '密码';
	String get phonePlaceholder => '请输入手机号';
	String get namePlaceholder => '请输入用户名';
	String get passwordPlaceholder => '请输入密码';
	String get forgotPassword => '忘记密码？';
	String get noAccountYet => '还没有账号？';
	String get submit => '立即登录';
	String get usernameOrPasswordError => '用户名或密码错误';
	String get usernameOrPasswordEmpty => '用户名或密码不能为空';
	String get phoneOrPasswordEmpty => '手机号或密码不能为空';
}

// Path: c.register
class LocalizedCRegisterZh {
	LocalizedCRegisterZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get title => '注册账号';
	String get registerWithPhone => '手机号注册';
	String get registerWithName => '用户名注册';
	String get registerWithDevice => '设备自动注册';
	String get registerWithAutoRegisterHint => '是否根据手机设备号注册账号';
	String get invitationCode => '邀请码';
	String get invitationCodePlaceholder => '请输入您的邀请码';
	String get phoneLabel => '手机号';
	String get nameLabel => '用户名';
	String get passwordLabel => '密码';
	String get phonePlaceholder => '请输入手机号';
	String get namePlaceholder => '请输入用户名';
	String get passwordPlaceholder => '请输入密码';
	String get confirmPasswordLabel => '确认密码';
	String get confirmPasswordPlaceholder => '请确认密码';
	String get hasAccount => '已经有账号？';
	String get submit => '立即注册';
	String get usernameEmpty => '请输入用户名';
	String get phoneEmpty => '请输入手机号';
	String get passwordEmpty => '请输入密码';
	String get confirmPasswordEmpty => '请填写确认密码';
	String get invitationCodeEmpty => '请填写邀请码';
	String get invitationCodeError => '邀请码错误';
	String get usernameError => '用户名格式错误（6-18位字符，不能包含非法字符）';
	String get phoneError => '手机号格式错误';
	String get passwordError => '密码格式错误（6-18位字符， 字母或者数字）';
	String get confirmPasswordError => '密码不一致';
}

// Path: c.verify
class LocalizedCVerifyZh {
	LocalizedCVerifyZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get verificationCode => '验证码';
	String get sendVerificationCode => '发送验证码';
	String get resendVerificationCode => '重发验证码';
	String verificationCodeTimingReminder({required Object seconds}) => '${seconds}秒后重新获取验证码';
	String get plsEnterVerificationCode => '请输入您的验证码';
	String get confirm => '确 认';
	String get sendSuccess => '发送成功';
}

// Path: c.setSelfInfo
class LocalizedCSetSelfInfoZh {
	LocalizedCSetSelfInfoZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get plsCompleteInfo => '请完善个人信息';
	String get plsSetAvatar => '点击设置头像';
	String get plsEnterNickname => '请输入您的昵称';
	String get plsEnterUsername => '请输入您的用户名';
	String get username => '用户名';
	String get nickname => '昵称';
	String get avatar => '头像';
	String get sex => '性别';
	String get introduction => '个性签名';
	String get plsEnterIntroduction => '请输入您的个性签名';
	String get plsSelectGender => '请选择您的性别';
	String get usernameValidateError => '用户名格式错误（6-18位字符，不能包含非法字符）';
	String get nicknameValidateError => '昵称格式错误（2-12位字符，不能包含非法字符）';
	String get usernameHelperText => '用户名仅可修改一次。';
	String get submit => '提交';
	String get submitSuccess => '提交成功';
	String get submitFailed => '提交失败';
}

// Path: c.setSelfSecurity
class LocalizedCSetSelfSecurityZh {
	LocalizedCSetSelfSecurityZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get title => '设置密保问题';
	String get question => '密保问题';
	String get answer => '密保答案';
	String get plsEnterQuestion => '我的真实姓名';
	String get plsEnterAnswer => '请输入';
	String get questionOrAnswerEmpty => '密保问题或答案不能为空';
	String get submitSuccess => '设置成功';
	String get submit => '完 成';
}

// Path: c.refresh
class LocalizedCRefreshZh {
	LocalizedCRefreshZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get noMoreData => '没有更多数据';
	String get pullToRefresh => '下拉刷新';
	String get refreshLoading => '刷新中';
	String get refreshSuccess => '刷新成功';
	String get refreshFailed => '刷新失败';
	String get pullToLoad => '上拉加载';
	String get loadSuccess => '加载成功';
	String get loadFailed => '加载失败';
	String get loadMore => '加载更多';
	String get loading => '加载中';
	String get releaseReady => '松开加载';
	String get lastUpdateAt => '最后更新于 %T 前';
}

// Path: c.dropdownMenu
class LocalizedCDropdownMenuZh {
	LocalizedCDropdownMenuZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get createGroup => '发起群聊';
	String get addFriend => '添加好友';
	String get scan => '扫一扫';
}

// Path: c.mine
class LocalizedCMineZh {
	LocalizedCMineZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String username({required Object username}) => '账户ID: ${username}';
	String get wallet => '我的钱包';
	String get circle => '我的朋友圈';
	String get emoji => '表情';
	String get collection => '我的收藏';
	String get question => '常见问题';
	String get setting => '用户设置';
}

// Path: c.setting
class LocalizedCSettingZh {
	LocalizedCSettingZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get title => '设置';
	String get accountSecurity => '账号安全';
	String get general => '通用';
	String get contactCustomer => '联系客服';
	String get about => '关于我们';
	String get userAgreement => '用户协议';
	String get privacyPolicy => '隐私政策';
	String get feedback => '意见反馈';
	String get networkDetection => '网络检测';
	String get switchLanguage => '切换语言';
	String get logout => '退出登录';
	String get switchAccount => '切换账号';
	String get logoutConfirm => '退出登录后，您需要重新登录才能继续使用。';
}

// Path: c.account
class LocalizedCAccountZh {
	LocalizedCAccountZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get title => '轻触头像以切换账号';
	String get currentUse => '当前使用';
	String get addAccount => '添加账号';
	String get loginOther => '登录其他账号';
	String get registerOther => '注册新账号';
	String get clearAccountTitle => '清除登录痕迹';
	String get clearAccountHint => '仅清楚本地登录记录，不清除聊天记录';
	String deleteAccountLabel({required Object name}) => '删除${name}的登录记录';
	String get deleteAccountHint => '删除登录记录不会删除任何历史记录';
}

// Path: c.profile
class LocalizedCProfileZh {
	LocalizedCProfileZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get title => '个人信息';
	String get avatar => '头像';
	String get nickname => '昵称';
	String get sex => '性别';
	String get username => '账户ID';
	String get introduction => '个性签名';
	String get qrCode => '二维码名片';
	String get setNickname => '设置昵称';
	String get setUsername => '设置用户名';
	String get setIntroduction => '设置个性签名';
	String get plsSelectGender => '请选择您的性别';
	String get plsSetAvatar => '点击设置头像';
	String get plsEnterNickname => '请输入您的昵称';
	String get plsEnterUsername => '请输入您的用户名';
	String get plsEnterIntroduction => '请输入您的个性签名';
	String get usernameValidateError => '用户名格式错误（6-18位字符，不能包含非法字符）';
	String get nicknameValidateError => '昵称格式错误（2-12位字符，不能包含非法字符）';
	String get setAvatarSuccess => '修改头像成功';
	String get setAvatarFailed => '修改头像失败';
	String get setNicknameSuccess => '修改昵称成功';
	String get setNicknameFailed => '修改昵称失败';
	String get setUsernameSuccess => '修改用户名成功';
	String get setUsernameFailed => '修改用户名失败';
	String get setIntroductionSuccess => '修改个性签名成功';
	String get setIntroductionFailed => '修改个性签名失败';
	String get setGenderSuccess => '修改性别成功';
	String get setGenderFailed => '修改性别失败';
	String get introductionDefault => '暂无个性签名';
	String get saveImage => '点击保存图片';
}

// Path: contact.friendApply
class LocalizedContactFriendApplyZh {
	LocalizedContactFriendApplyZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get title => '新的朋友';
	String get recentApply => '近三天申请';
	String get oldApply => '三天前申请';
	String remark({required Object remark}) => '备注: ${remark}';
	String get accepted => '已添加';
	String get apply => '待验证';
	String get refused => '已拒绝';
	String get accept => '接受';
	String get refuse => '拒绝';
	String get delete => '删除';
	String get acceptSuccess => '已添加为好友';
	String get refuseSuccess => '已拒绝此好友申请';
}

// Path: contact.searchUser
class LocalizedContactSearchUserZh {
	LocalizedContactSearchUserZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get placeholder => '搜索用户名/手机号';
	String get userNotFound => '未找到用户';
}

// Path: contact.friendHome
class LocalizedContactFriendHomeZh {
	LocalizedContactFriendHomeZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get title => '好友主页';
	String get introduction => '个性签名';
	String get addToContact => '添加到通讯录';
	String get applyFriend => '申请添加好友';
	String get sendApply => '发送好友申请';
	String get send => '发送';
	String get sendSuccess => '发送成功';
	String get sendFail => '发送失败';
}

// Path: home.tab
class LocalizedHomeTabZh {
	LocalizedHomeTabZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get conversation => '会话';
	String get contacts => '通讯录';
	String get applet => '小程序';
	String get feed => '动态';
	String get mine => '我的';
}

// Path: home.conversation
class LocalizedHomeConversationZh {
	LocalizedHomeConversationZh.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get deleteTitle => '删除';
	String get deleteSubtitle => '删除后，将清空该聊天的聊天记录';
	String get deleteConfirm => '确定删除';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Localized {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'c.appNmae': return '飞宏';
			case 'c.welcome': return '欢迎来到飞宏';
			case 'c.confirm': return '确认';
			case 'c.cancel': return '取消';
			case 'c.toolboxAlbum': return '相册';
			case 'c.toolboxCamera': return '相机';
			case 'c.supportsTypeHint': return '仅支持png、jpg、jpeg、gif、bmp及webp格式。';
			case 'c.tapTooShort': return '点击时间太短';
			case 'c.talkTooShort': return '说话时间太短';
			case 'c.permissionDeniedTitle': return '权限被拒绝';
			case 'c.permissionDeniedHint': return '请在设置中允许使用%s权限。';
			case 'c.close': return '关闭';
			case 'c.manager': return '管理';
			case 'c.delete': return '删除';
			case 'c.edit': return '编辑';
			case 'c.add': return '添加';
			case 'c.save': return '保存';
			case 'c.retry': return '重试';
			case 'c.you': return '你';
			case 'c.noInternet': return '没有网络连接';
			case 'c.networkError': return '网络异常，请检查您的网络设置';
			case 'c.saveSuccessfully': return '保存成功';
			case 'c.saveToGallery': return '保存到相册';
			case 'c.saveFailed': return '保存失败';
			case 'c.permanentlyDenied': return '权限不允许';
			case 'c.letsStartChattingLabel': return '让我们开始聊天吧';
			case 'c.loadingChannelsError': return '加载频道失败';
			case 'c.launchUrlError': return '不能打开此链接';
			case 'c.gender.0': return '其他';
			case 'c.gender.1': return '男';
			case 'c.gender.2': return '女';
			case 'c.onlineDevice.0': return '手机端在线';
			case 'c.onlineDevice.1': return 'Web端在线';
			case 'c.onlineDevice.2': return '电脑端在线';
			case 'c.dateFormat.yesterday': return '昨天';
			case 'c.dateFormat.am': return '上午';
			case 'c.dateFormat.pm': return '下午';
			case 'c.dateFormat.today': return '今天';
			case 'c.dateFormat.weeks.0': return '周日';
			case 'c.dateFormat.weeks.1': return '周一';
			case 'c.dateFormat.weeks.2': return '周二';
			case 'c.dateFormat.weeks.3': return '周三';
			case 'c.dateFormat.weeks.4': return '周四';
			case 'c.dateFormat.weeks.5': return '周五';
			case 'c.dateFormat.weeks.6': return '周六';
			case 'c.dateFormat.minute': return ({required Object minute}) => '${minute}分钟';
			case 'c.dateFormat.hour': return ({required Object hour}) => '${hour}小时';
			case 'c.dateFormat.day': return ({required Object day}) => '${day}天';
			case 'c.dateFormat.month': return ({required Object month}) => '${month}月';
			case 'c.dateFormat.year': return ({required Object year}) => '${year}年';
			case 'c.dateFormat.just': return '刚刚';
			case 'c.agreement.userAgreement': return '《用户协议》';
			case 'c.agreement.privacyPolicy': return '《隐私政策》';
			case 'c.agreement.checkbox': return ({required InlineSpan userAgreement, required InlineSpan privacyPolicy}) => TextSpan(children: [
				const TextSpan(text: '我已阅读并同意 '),
				userAgreement,
				const TextSpan(text: ' 和 '),
				privacyPolicy,
			]);
			case 'c.agreement.title': return '用户协议和隐私政策';
			case 'c.agreement.hint': return '为了更好地保障您的合法权益，请您阅读并同意《用户协议》 和 《隐私政策》';
			case 'c.language.title': return '语言设置';
			case 'c.zone.title': return '选择国家/地区';
			case 'c.zone.search': return '搜索国家/地区';
			case 'c.zone.cancel': return '取消';
			case 'c.zone.select': return '选择';
			case 'c.login.loginWithPhone': return '手机号登录';
			case 'c.login.loginWithName': return '用户名登录';
			case 'c.login.loginWithDevice': return '设备自动注册登录';
			case 'c.login.loginWithAutoRegisterHint': return '是否根据手机设备号注册账号并登录';
			case 'c.login.phoneLabel': return '手机号';
			case 'c.login.nameLabel': return '用户名';
			case 'c.login.passwordLabel': return '密码';
			case 'c.login.phonePlaceholder': return '请输入手机号';
			case 'c.login.namePlaceholder': return '请输入用户名';
			case 'c.login.passwordPlaceholder': return '请输入密码';
			case 'c.login.forgotPassword': return '忘记密码？';
			case 'c.login.noAccountYet': return '还没有账号？';
			case 'c.login.submit': return '立即登录';
			case 'c.login.usernameOrPasswordError': return '用户名或密码错误';
			case 'c.login.usernameOrPasswordEmpty': return '用户名或密码不能为空';
			case 'c.login.phoneOrPasswordEmpty': return '手机号或密码不能为空';
			case 'c.register.title': return '注册账号';
			case 'c.register.registerWithPhone': return '手机号注册';
			case 'c.register.registerWithName': return '用户名注册';
			case 'c.register.registerWithDevice': return '设备自动注册';
			case 'c.register.registerWithAutoRegisterHint': return '是否根据手机设备号注册账号';
			case 'c.register.invitationCode': return '邀请码';
			case 'c.register.invitationCodePlaceholder': return '请输入您的邀请码';
			case 'c.register.phoneLabel': return '手机号';
			case 'c.register.nameLabel': return '用户名';
			case 'c.register.passwordLabel': return '密码';
			case 'c.register.phonePlaceholder': return '请输入手机号';
			case 'c.register.namePlaceholder': return '请输入用户名';
			case 'c.register.passwordPlaceholder': return '请输入密码';
			case 'c.register.confirmPasswordLabel': return '确认密码';
			case 'c.register.confirmPasswordPlaceholder': return '请确认密码';
			case 'c.register.hasAccount': return '已经有账号？';
			case 'c.register.submit': return '立即注册';
			case 'c.register.usernameEmpty': return '请输入用户名';
			case 'c.register.phoneEmpty': return '请输入手机号';
			case 'c.register.passwordEmpty': return '请输入密码';
			case 'c.register.confirmPasswordEmpty': return '请填写确认密码';
			case 'c.register.invitationCodeEmpty': return '请填写邀请码';
			case 'c.register.invitationCodeError': return '邀请码错误';
			case 'c.register.usernameError': return '用户名格式错误（6-18位字符，不能包含非法字符）';
			case 'c.register.phoneError': return '手机号格式错误';
			case 'c.register.passwordError': return '密码格式错误（6-18位字符， 字母或者数字）';
			case 'c.register.confirmPasswordError': return '密码不一致';
			case 'c.verify.verificationCode': return '验证码';
			case 'c.verify.sendVerificationCode': return '发送验证码';
			case 'c.verify.resendVerificationCode': return '重发验证码';
			case 'c.verify.verificationCodeTimingReminder': return ({required Object seconds}) => '${seconds}秒后重新获取验证码';
			case 'c.verify.plsEnterVerificationCode': return '请输入您的验证码';
			case 'c.verify.confirm': return '确 认';
			case 'c.verify.sendSuccess': return '发送成功';
			case 'c.setSelfInfo.plsCompleteInfo': return '请完善个人信息';
			case 'c.setSelfInfo.plsSetAvatar': return '点击设置头像';
			case 'c.setSelfInfo.plsEnterNickname': return '请输入您的昵称';
			case 'c.setSelfInfo.plsEnterUsername': return '请输入您的用户名';
			case 'c.setSelfInfo.username': return '用户名';
			case 'c.setSelfInfo.nickname': return '昵称';
			case 'c.setSelfInfo.avatar': return '头像';
			case 'c.setSelfInfo.sex': return '性别';
			case 'c.setSelfInfo.introduction': return '个性签名';
			case 'c.setSelfInfo.plsEnterIntroduction': return '请输入您的个性签名';
			case 'c.setSelfInfo.plsSelectGender': return '请选择您的性别';
			case 'c.setSelfInfo.usernameValidateError': return '用户名格式错误（6-18位字符，不能包含非法字符）';
			case 'c.setSelfInfo.nicknameValidateError': return '昵称格式错误（2-12位字符，不能包含非法字符）';
			case 'c.setSelfInfo.usernameHelperText': return '用户名仅可修改一次。';
			case 'c.setSelfInfo.submit': return '提交';
			case 'c.setSelfInfo.submitSuccess': return '提交成功';
			case 'c.setSelfInfo.submitFailed': return '提交失败';
			case 'c.setSelfSecurity.title': return '设置密保问题';
			case 'c.setSelfSecurity.question': return '密保问题';
			case 'c.setSelfSecurity.answer': return '密保答案';
			case 'c.setSelfSecurity.plsEnterQuestion': return '我的真实姓名';
			case 'c.setSelfSecurity.plsEnterAnswer': return '请输入';
			case 'c.setSelfSecurity.questionOrAnswerEmpty': return '密保问题或答案不能为空';
			case 'c.setSelfSecurity.submitSuccess': return '设置成功';
			case 'c.setSelfSecurity.submit': return '完 成';
			case 'c.refresh.noMoreData': return '没有更多数据';
			case 'c.refresh.pullToRefresh': return '下拉刷新';
			case 'c.refresh.refreshLoading': return '刷新中';
			case 'c.refresh.refreshSuccess': return '刷新成功';
			case 'c.refresh.refreshFailed': return '刷新失败';
			case 'c.refresh.pullToLoad': return '上拉加载';
			case 'c.refresh.loadSuccess': return '加载成功';
			case 'c.refresh.loadFailed': return '加载失败';
			case 'c.refresh.loadMore': return '加载更多';
			case 'c.refresh.loading': return '加载中';
			case 'c.refresh.releaseReady': return '松开加载';
			case 'c.refresh.lastUpdateAt': return '最后更新于 %T 前';
			case 'c.dropdownMenu.createGroup': return '发起群聊';
			case 'c.dropdownMenu.addFriend': return '添加好友';
			case 'c.dropdownMenu.scan': return '扫一扫';
			case 'c.mine.username': return ({required Object username}) => '账户ID: ${username}';
			case 'c.mine.wallet': return '我的钱包';
			case 'c.mine.circle': return '我的朋友圈';
			case 'c.mine.emoji': return '表情';
			case 'c.mine.collection': return '我的收藏';
			case 'c.mine.question': return '常见问题';
			case 'c.mine.setting': return '用户设置';
			case 'c.setting.title': return '设置';
			case 'c.setting.accountSecurity': return '账号安全';
			case 'c.setting.general': return '通用';
			case 'c.setting.contactCustomer': return '联系客服';
			case 'c.setting.about': return '关于我们';
			case 'c.setting.userAgreement': return '用户协议';
			case 'c.setting.privacyPolicy': return '隐私政策';
			case 'c.setting.feedback': return '意见反馈';
			case 'c.setting.networkDetection': return '网络检测';
			case 'c.setting.switchLanguage': return '切换语言';
			case 'c.setting.logout': return '退出登录';
			case 'c.setting.switchAccount': return '切换账号';
			case 'c.setting.logoutConfirm': return '退出登录后，您需要重新登录才能继续使用。';
			case 'c.account.title': return '轻触头像以切换账号';
			case 'c.account.currentUse': return '当前使用';
			case 'c.account.addAccount': return '添加账号';
			case 'c.account.loginOther': return '登录其他账号';
			case 'c.account.registerOther': return '注册新账号';
			case 'c.account.clearAccountTitle': return '清除登录痕迹';
			case 'c.account.clearAccountHint': return '仅清楚本地登录记录，不清除聊天记录';
			case 'c.account.deleteAccountLabel': return ({required Object name}) => '删除${name}的登录记录';
			case 'c.account.deleteAccountHint': return '删除登录记录不会删除任何历史记录';
			case 'c.profile.title': return '个人信息';
			case 'c.profile.avatar': return '头像';
			case 'c.profile.nickname': return '昵称';
			case 'c.profile.sex': return '性别';
			case 'c.profile.username': return '账户ID';
			case 'c.profile.introduction': return '个性签名';
			case 'c.profile.qrCode': return '二维码名片';
			case 'c.profile.setNickname': return '设置昵称';
			case 'c.profile.setUsername': return '设置用户名';
			case 'c.profile.setIntroduction': return '设置个性签名';
			case 'c.profile.plsSelectGender': return '请选择您的性别';
			case 'c.profile.plsSetAvatar': return '点击设置头像';
			case 'c.profile.plsEnterNickname': return '请输入您的昵称';
			case 'c.profile.plsEnterUsername': return '请输入您的用户名';
			case 'c.profile.plsEnterIntroduction': return '请输入您的个性签名';
			case 'c.profile.usernameValidateError': return '用户名格式错误（6-18位字符，不能包含非法字符）';
			case 'c.profile.nicknameValidateError': return '昵称格式错误（2-12位字符，不能包含非法字符）';
			case 'c.profile.setAvatarSuccess': return '修改头像成功';
			case 'c.profile.setAvatarFailed': return '修改头像失败';
			case 'c.profile.setNicknameSuccess': return '修改昵称成功';
			case 'c.profile.setNicknameFailed': return '修改昵称失败';
			case 'c.profile.setUsernameSuccess': return '修改用户名成功';
			case 'c.profile.setUsernameFailed': return '修改用户名失败';
			case 'c.profile.setIntroductionSuccess': return '修改个性签名成功';
			case 'c.profile.setIntroductionFailed': return '修改个性签名失败';
			case 'c.profile.setGenderSuccess': return '修改性别成功';
			case 'c.profile.setGenderFailed': return '修改性别失败';
			case 'c.profile.introductionDefault': return '暂无个性签名';
			case 'c.profile.saveImage': return '点击保存图片';
			case 'c.connectStatus.0': return '同步失败';
			case 'c.connectStatus.1': return '链接成功';
			case 'c.connectStatus.2': return '被其他设备登录';
			case 'c.connectStatus.3': return '同步中';
			case 'c.connectStatus.4': return '链接中';
			case 'c.connectStatus.5': return '无网络';
			case 'c.connectStatus.6': return '同步成功';
			case 'contact.title': return '通讯录';
			case 'contact.empty': return '暂无联系人';
			case 'contact.newFriend': return '新的朋友';
			case 'contact.group': return '群聊';
			case 'contact.invite': return '入群邀请';
			case 'contact.friendApply.title': return '新的朋友';
			case 'contact.friendApply.recentApply': return '近三天申请';
			case 'contact.friendApply.oldApply': return '三天前申请';
			case 'contact.friendApply.remark': return ({required Object remark}) => '备注: ${remark}';
			case 'contact.friendApply.accepted': return '已添加';
			case 'contact.friendApply.apply': return '待验证';
			case 'contact.friendApply.refused': return '已拒绝';
			case 'contact.friendApply.accept': return '接受';
			case 'contact.friendApply.refuse': return '拒绝';
			case 'contact.friendApply.delete': return '删除';
			case 'contact.friendApply.acceptSuccess': return '已添加为好友';
			case 'contact.friendApply.refuseSuccess': return '已拒绝此好友申请';
			case 'contact.searchUser.placeholder': return '搜索用户名/手机号';
			case 'contact.searchUser.userNotFound': return '未找到用户';
			case 'contact.friendHome.title': return '好友主页';
			case 'contact.friendHome.introduction': return '个性签名';
			case 'contact.friendHome.addToContact': return '添加到通讯录';
			case 'contact.friendHome.applyFriend': return '申请添加好友';
			case 'contact.friendHome.sendApply': return '发送好友申请';
			case 'contact.friendHome.send': return '发送';
			case 'contact.friendHome.sendSuccess': return '发送成功';
			case 'contact.friendHome.sendFail': return '发送失败';
			case 'errors.somethingUnexpected': return '发生了一些意外，请稍后再试';
			case 'errors.retry': return '重试';
			case 'errors.httpError.title': return '发生错误';
			case 'errors.httpError.networkError': return '网络连接超时，请检查网络或者代理';
			case 'errors.httpError.connectionTimeout': return '网络连接超时，请检查网络或者代理';
			case 'errors.httpError.sendTimeout': return '网络请求超时，请检查网络或者代理';
			case 'errors.httpError.receiveTimeout': return '网络请求超时，请检查网络或者代理';
			case 'errors.httpError.badCertificate': return '证书错误，请联系管理员';
			case 'errors.httpError.badResponse': return '服务器错误，请联系管理员';
			case 'errors.httpError.connectionError': return '与服务器无法建立连接，请检查网络或者代理';
			case 'errors.httpError.unknown': return '服务器错误，请联系管理员';
			case 'errors.error.errDataFormatError': return '数据格式有误';
			case 'errors.error.errDBTransactionOpenFailed': return '开启事务失败';
			case 'errors.error.errCreateTransactionFailed': return '创建事务失败';
			case 'errors.error.errDBTransactionCommitFailed': return '数据库事物提交失败';
			case 'errors.error.errFileUploadFailed': return '文件上传失败';
			case 'errors.error.errSenderEmpty': return '发送者不能为空';
			case 'errors.error.errContentEmpty': return '发送内容不能为空';
			case 'errors.error.errSendMessageFailed': return '发送消息失败';
			case 'errors.error.errCannotProcessSendRequest': return '无法处理发送消息请求';
			case 'errors.error.errSaveMessageFailed': return '保存消息失败';
			case 'errors.error.errMessageSyncReceiptFailed': return '消息同步回执失败';
			case 'errors.error.errGetChannelNodeFailed': return '获取频道所在节点失败';
			case 'errors.error.errCreateChannelFailed': return '创建频道失败';
			case 'errors.error.errAddOrUpdateChannelFailed': return '添加或更新频道信息失败';
			case 'errors.error.errQueryChannelFailed': return '查询频道失败';
			case 'errors.error.errAddChannelFailed': return '添加频道失败';
			case 'errors.error.errChannelIDEmpty': return '频道ID不能为空';
			case 'errors.error.errPersonalChannelNotSupported': return '暂不支持个人频道';
			case 'errors.error.errPersonalChannelNotSupportAddSub': return '个人频道不支持添加订阅者';
			case 'errors.error.errRemoveAllBlacklistFailed': return '移除所有黑名单失败';
			case 'errors.error.errUpdateChannelInfoFailed': return '更新频道信息失败';
			case 'errors.error.errRemoveAllWhitelistFailed': return '移除所有白明单失败';
			case 'errors.error.errGetConversationFailed': return '获取会话失败';
			case 'errors.error.errGetRecentMessagesFailed': return '获取最近消息失败';
			case 'errors.error.errSystemAccountUpdateTokenNotAllowed': return '系统账号不允许更新token';
			case 'errors.error.errSlotLeaderNodeNotExist': return '槽的领导节点不存在';
			case 'errors.error.errAddSystemAccountFailed': return '添加系统账号失败';
			case 'errors.error.errAddSystemAccountToCacheFailed': return '添加系统账号到缓存失败';
			case 'errors.error.errGetSlotNodeFailed': return '获取slot所在节点失败';
			case 'errors.error.errRemoveSystemAccountFailed': return '移除系统账号失败';
			case 'errors.error.errRemoveSystemAccountFromCacheFailed': return '移除系统账号从缓存失败';
			case 'errors.error.errGetSystemAccountFailed': return '获取系统账号失败';
			case 'errors.error.errUsernameOrPasswordError': return '用户名或密码错误';
			case 'errors.error.errJwtSecretNotConfigured': return '没有配置jwt.secret';
			case 'errors.error.errUsernameRegisterOff': return '用户名已注册功能已关闭';
			case 'errors.error.errRequestDataError': return '请求数据格式有误';
			case 'errors.error.errNicknameEmpty': return '用户昵称不能为空';
			case 'errors.error.errUsernameEmpty': return '用户名不能为空';
			case 'errors.error.errUsernameNotInvalid': return '用户名须以字母开头，仅支持使用6～18个字母、数字、下划线自由组合';
			case 'errors.error.errInviteCodeEmpty': return '邀请码不能为空';
			case 'errors.error.errInviteCodeNotExist': return '邀请码不存在';
			case 'errors.error.errPasswordEmpty': return '密码不能为空';
			case 'errors.error.errUsernameExist': return '该用户名已存在';
			case 'errors.error.errUsernameNotExist': return '该用户名不存在';
			case 'errors.error.errUserNotExist': return '该用户不存在';
			case 'errors.error.errPasswordIncorrect': return '密码不正确';
			case 'errors.error.errRegisterFailed': return '注册失败';
			case 'errors.error.errVerifyCharEmpty': return '校验字符不能为空';
			case 'errors.error.errSignatureEmpty': return '签名字符不能为空';
			case 'errors.error.errUserNoPublicKey': return '该用户未上传公钥';
			case 'errors.error.errSignatureInfoNotExist': return '签名信息不存在';
			case 'errors.error.errVerifySignatureError': return '校验签名错误';
			case 'errors.error.errSignatureError': return '签名错误';
			case 'errors.error.errPublicKeyEmpty': return '公钥不能为空';
			case 'errors.error.errUserDisabledOrBanned': return '该用户不存在或被封禁/禁用';
			case 'errors.error.errUserAlreadyUploadPublicKey': return '该用户已上传过公钥信息';
			case 'errors.error.errVerifyTypeNotMatch': return '验证类型不匹配';
			case 'errors.error.errNewPasswordSameAsOld': return '新密码不能和旧密码相同';
			case 'errors.error.errOldPasswordIncorrect': return '旧密码错误';
			case 'errors.error.errUpdateLoginPasswordFailed': return '修改登录密码错误';
			case 'errors.error.errGetShortNoFailed': return '获取短编号失败';
			case 'errors.error.errSetTokenCacheFailed': return '设置token缓存失败';
			case 'errors.error.errUpdateIMTokenFailed': return '更新IM token失败';
			case 'errors.error.errZoneNotExist': return '缺少手机区号';
			case 'errors.error.errPhoneNumberNotExist': return '缺少手机号';
			case 'errors.error.errZoneNotSupport': return '不支持的手机区号';
			case 'errors.error.errSendVerifyCodeFailed': return '发送验证码失败';
			case 'errors.error.errRegistrationNotSupported': return '不支持注册';
			case 'errors.error.errGetLoginStatusFailed': return '获取登录状态失败';
			case 'errors.error.errLoginStatusExpired': return '登录状态已过期';
			case 'errors.error.errGetGiteeUserInfoFailed': return '获取gitee用户信息失败';
			case 'errors.error.errQueryGiteeUserInfoFailed': return '查询gitee用户信息失败';
			case 'errors.error.errInsertGiteeUserFailed': return '插入gitee user失败';
			case 'errors.error.errQRCodeVerificationFailed': return '二维码验证失败';
			case 'errors.error.errGetDeviceInfoFailed': return '获取设备信息失败';
			case 'errors.error.errDeviceNotFound': return '未查询到该设备';
			case 'errors.error.errDeleteDeviceFailed': return '删除设备失败';
			case 'errors.error.errQueryDeviceListFailed': return '查询设备列表失败';
			case 'errors.error.errWebLogoutFailed': return '退出web设备失败';
			case 'errors.error.errPCLogoutFailed': return '退出PC设备失败';
			case 'errors.error.errQueryUserOnlineStatusFailed': return '查询用户在线状态失败';
			case 'errors.error.errQueryUserFriendsFailed': return '查询用户好友失败';
			case 'errors.error.errQueryGroupListFailed': return '查询群列表错误';
			case 'errors.error.errQueryGroupCountFailed': return '查询群数量错误';
			case 'errors.error.errGroupIDEmpty': return '操作群ID不能为空';
			case 'errors.error.errOperationStatusEmpty': return '操作状态不能为空';
			case 'errors.error.errQueryGroupInfoFailed': return '查询群信息错误';
			case 'errors.error.errGroupNotExist': return '操作的群不存在';
			case 'errors.error.errUnknownOperationType': return '未知操作类型';
			case 'errors.error.errCallIMUpdateChannelFailed': return '调用IM修改channel信息服务失败';
			case 'errors.error.errUpdateGroupInfoFailed': return '更新群信息失败';
			case 'errors.error.errGroupMemberEmpty': return '群成员不能为空';
			case 'errors.error.errQueryGroupMemberFailed': return '查询群成员错误';
			case 'errors.error.errQueryGroupMemberCountFailed': return '查询群成员总数错误';
			case 'errors.error.errFriendUIDEmpty': return '好友ID不能为空';
			case 'errors.error.errQueryFriendApplicationFailed': return '查询申请记录错误';
			case 'errors.error.errApplicationNotExist': return '申请记录不存在';
			case 'errors.error.errUpdateApplicationFailed': return '修改申请记录错误';
			case 'errors.error.errDeleteApplicationFailed': return '删除申请记录错误';
			case 'errors.error.errQueryFriendAppListFailed': return '查询好友申请列表错误';
			case 'errors.error.errQueryApplicantInfoFailed': return '查询申请用户信息错误';
			case 'errors.error.errApplicantNotExist': return '申请者不存在';
			case 'errors.error.errDeleteFriendFailed': return '删除好友错误';
			case 'errors.error.errUpdateFriendRelationFailed': return '修改好友单项关系错误';
			case 'errors.error.errSendDeleteFriendEventFailed': return '发送删除好友事件失败';
			case 'errors.error.errQueryUserFriendSettingsFailed': return '查询用户好友设置错误';
			case 'errors.error.errResetFriendSettingsFailed': return '重置好友设置错误';
			case 'errors.error.errCommitTransactionFailed': return '提交事务失败';
			case 'errors.error.errCannotAddSelfAsFriend': return '不能添加自己为好友';
			case 'errors.error.errLoggedInUserNotExist': return '登录用户不存在';
			case 'errors.error.errCheckIsFriendFailed': return '查询是否是好友失败';
			case 'errors.error.errAlreadyFriends': return '已经是好友，不能再申请';
			case 'errors.error.errFriendRequestReceiverNotExist': return '接收好友请求的用户不存在';
			case 'errors.error.errQueryFriendInfoFailed': return '查询好友信息错误';
			case 'errors.error.errFriendInfoNotExist': return '好友信息不存在';
			case 'errors.error.errVerificationCodeEmpty': return '验证码不能为空';
			case 'errors.error.errSetApplicationTokenFailed': return '设置申请token失败';
			case 'errors.error.errQueryFriendRequestFailed': return '查询好友申请记录错误';
			case 'errors.error.errQueryUserAddressBookBadgeFailed': return '查询用户通讯录红点信息错误';
			case 'errors.error.errAddFriendRequestFailed': return '新增好友申请记录错误';
			case 'errors.error.errUpdateFriendRequestFailed': return '修改好友申请记录错误';
			case 'errors.error.errAddUserAddressBookBadgeFailed': return '新增用户通讯录红点信息错误';
			case 'errors.error.errUpdateUserAddressBookBadgeFailed': return '修改用户通讯录红点信息错误';
			case 'errors.error.errQueryCreatorOrAdminUidFailed': return '查询创建者或管理员的uid失败';
			case 'errors.error.errStartEventFailed': return '开启事件失败';
			case 'errors.error.errAddInviteDataFailed': return '添加邀请数据失败';
			case 'errors.error.errAddInviteItemFailed': return '添加邀请项失败';
			case 'errors.error.errQueryIsAdminOrCreatorFailed': return '查询是否管理者或创建者失败';
			case 'errors.error.errNotGroupAdminOrCreator': return '你不是群主或管理员';
			case 'errors.error.errGetAuthInfoFailed': return '获取授权信息失败';
			case 'errors.error.errDecodeAuthJsonFailed': return '解码认证信息的JSON数据失败';
			case 'errors.error.errAuthCodeNotConfirmInvite': return '授权码不是确认邀请';
			case 'errors.error.errQueryInviteDetailFailed': return '查询邀请详情失败';
			case 'errors.error.errInviteInfoNotFound': return '没有查询到邀请信息';
			case 'errors.error.errInviteStatusNotPending': return '邀请信息不是待邀请状态';
			case 'errors.error.errQueryInviterUserInfoFailed': return '查询邀请者的用户信息失败';
			case 'errors.error.errInviterUserInfoNotFound': return '没有查到邀请者的用户信息';
			case 'errors.error.errUpdateInviteStatusFailed': return '更新邀请信息状态失败';
			case 'errors.error.errUpdateInviteItemStatusFailed': return '更新邀请信息项状态失败';
			case 'errors.error.errAddMemberFailed': return '添加成员失败';
			case 'errors.error.errGetInviteItemFailed': return '获取邀请项失败';
			case 'errors.error.errQueryMemberInfoFailed': return '查询成员信息错误';
			case 'errors.error.errQueryChannelTypeEmpty': return '查询频道类型不能为空';
			case 'errors.error.errQueryReportListFailed': return '查询举报列表错误';
			case 'errors.error.errQueryReportCountFailed': return '查询举报总数量错误';
			case 'errors.error.errQueryUserInfoFailed': return '查询用户信息错误';
			case 'errors.error.errQueryReportUserSetFailed': return '查询举报用户集合错误';
			case 'errors.error.errQueryReportGroupSetFailed': return '查询举报群集合错误';
			case 'errors.error.errRobotIDEmpty': return '机器人ID不能为空';
			case 'errors.error.errQueryRobotMenuFailed': return '查询机器人菜单错误';
			case 'errors.error.errQueryOperatedRobotFailed': return '查询操作的机器人错误';
			case 'errors.error.errOperatedRobotNotExist': return '操作的机器人不存在';
			case 'errors.error.errDeleteRobotMenuFailed': return '删除机器人菜单失败';
			case 'errors.error.errUpdateRobotVersionFailed': return '修改机器人版本号错误';
			case 'errors.error.errUpdateRobotStatusFailed': return '修改机器人状态信息错误';
			case 'errors.error.errSendStreamStartFailed': return '发送stream start消息失败';
			case 'errors.error.errSendStreamEndFailed': return '发送stream end消息失败';
			case 'errors.error.errNotAllowSendToChannel': return '不允许发送消息到此频道';
			case 'errors.error.errSendTypingFailed': return '发送typing消息失败';
			case 'errors.error.errUnsupportedType': return '不支持的type';
			case 'errors.error.errInvalidPayload': return '无效的payload';
			case 'errors.error.errGetRobotInfoFailed': return '获取机器人信息失败';
			case 'errors.error.errRobotNotExist': return '机器人不存在';
			case 'errors.error.errRobotNoAppID': return '机器人没有app_id';
			case 'errors.error.errBatchQueryRobotFailed': return '批量查询机器人数据错误';
			case 'errors.error.errBatchQueryRobotByUsernameFailed': return '批量通过username查询机器人数据错误';
			case 'errors.error.errBatchQueryRobotMenuFailed': return '批量查询机器人菜单数据错误';
			case 'errors.error.errAppIDEmpty': return '应用ID不能为空';
			case 'errors.error.errDeleteUseRecordFailed': return '删除使用记录错误';
			case 'errors.error.errQueryUseRecordFailed': return '查询使用记录错误';
			case 'errors.error.errQueryAppBatchFailed': return '查询一批应用错误';
			case 'errors.error.errQueryUserSavedAppFailed': return '查询用户已保存的应用错误';
			case 'errors.error.errQueryAppFailed': return '查询应用错误';
			case 'errors.error.errAppDeletedOrUnavailable': return '该应用已删除或不可用';
			case 'errors.error.errAddUseRecordFailed': return '新增使用记录错误';
			case 'errors.error.errUpdateUseRecordFailed': return '修改使用记录错误';
			case 'errors.error.errCategoryIDEmpty': return '分类编号不能为空';
			case 'errors.error.errQueryAppByCategoryFailed': return '通过分类查询应用错误';
			case 'errors.error.errUpdateUserAppOrderFailed': return '修改用户app顺序错误';
			case 'errors.error.errDeleteUserAppFailed': return '删除用户app错误';
			case 'errors.error.errQueryUserAppFailed': return '查询用户某个应用错误';
			case 'errors.error.errQueryUserMaxOrderAppFailed': return '查询用户最大序号app错误';
			case 'errors.error.errAddUserAppFailed': return '添加用户app错误';
			case 'errors.error.errQueryCategoryFailed': return '查询分类错误';
			case 'errors.error.errQueryBannerDataFailed': return '查询横幅数据错误';
			case 'errors.error.errCategoryNotExist': return '该分类不存在';
			case 'errors.error.errUpdateCategoryFailed': return '修改分类错误';
			case 'errors.error.errDeleteCategoryFailed': return '删除分类错误';
			case 'errors.error.errQueryAllAppFailed': return '查询所有应用错误';
			case 'errors.error.errQueryTotalCountFailed': return '查询总数量错误';
			case 'errors.error.errSearchAppFailed': return '搜索应用错误';
			case 'errors.error.errDeleteCategoryAppFailed': return '删除分类下app错误';
			case 'errors.error.errAddedAppNotExist': return '添加的应用不存在';
			case 'errors.error.errQueryCategoryAppFailed': return '查询该分类下应用错误';
			case 'errors.error.errQueryCategoryAppMaxOrderFailed': return '查询分类应用最大序号错误';
			case 'errors.error.errAddCategoryAppFailed': return '添加分类下app错误';
			case 'errors.error.errUpdateCategoryAppOrderFailed': return '修改分类下app排序错误';
			case 'errors.error.errGetCategoryAppFailed': return '获取分类下的app错误';
			case 'errors.error.errBannerIDEmpty': return '横幅编号不能为空';
			case 'errors.error.errBannerURLEmpty': return '横幅跳转地址不能为空';
			case 'errors.error.errBannerCoverEmpty': return '横幅封面不能为空';
			case 'errors.error.errUpdateBannerFailed': return '修改横幅错误';
			case 'errors.error.errQueryBannerFailed': return '查询横幅错误';
			case 'errors.error.errDeleteBannerFailed': return '删除横幅错误';
			case 'errors.error.errQueryAllCategoryFailed': return '查询所有分类错误';
			case 'errors.error.errAddBannerFailed': return '新增横幅信息错误';
			case 'errors.error.errUpdateAppInfoFailed': return '修改应用信息错误';
			case 'errors.error.errCategoryIDAndAppIDEmpty': return '分类ID和应用ID均不能为空';
			case 'errors.error.errDeleteAppFailed': return '删除应用错误';
			case 'errors.error.errDeleteUserAppUsageRecordFailed': return '删除用户app使用记录错误';
			case 'errors.error.errQueryCategoryAppNameExistFailed': return '查询此分类下app是否存在此名称错误';
			case 'errors.error.errAppNameExist': return '此应用名已存在';
			case 'errors.error.errAddAppFailed': return '新增应用错误';
			case 'errors.error.errQueryCategoryByNameFailed': return '通过分类名查询分类错误';
			case 'errors.error.errCategoryNameExist': return '该分类名称已存在';
			case 'errors.error.errQueryMaxOrderCategoryFailed': return '查询最大序号分类错误';
			case 'errors.error.errAddCategoryFailed': return '新增分类错误';
			case 'errors.error.errQueryAppModuleFailed': return '查询app模块错误';
			case 'errors.error.errDeleteModuleNotExist': return '删除的模块不存在';
			case 'errors.error.errNodeNotExist': return '节点不存在';
			case 'errors.error.errStressTestNotEnabled': return '没有开启压测配置，不支持压测';
			case 'errors.error.errSlotLeaderNodeInfoNotExist': return '槽领导对应的节点信息不存在';
			case 'errors.error.errStressMachineNotExist': return '压测机器不存在';
			case 'home.tab.conversation': return '会话';
			case 'home.tab.contacts': return '通讯录';
			case 'home.tab.applet': return '小程序';
			case 'home.tab.feed': return '动态';
			case 'home.tab.mine': return '我的';
			case 'home.connectionStatus.0': return '同步失败';
			case 'home.connectionStatus.1': return '同步成功';
			case 'home.connectionStatus.2': return '已在其他设备登录';
			case 'home.connectionStatus.3': return '同步中';
			case 'home.connectionStatus.4': return '连接中';
			case 'home.connectionStatus.5': return '网络异常';
			case 'home.connectionStatus.6': return '同步成功';
			case 'home.conversation.deleteTitle': return '删除';
			case 'home.conversation.deleteSubtitle': return '删除后，将清空该聊天的聊天记录';
			case 'home.conversation.deleteConfirm': return '确定删除';
			case 'msg.channelMuted': return '已静音';
			case 'msg.applyJoinGroup': return '[进群申请]';
			case 'msg.lastMsgRemind': return '[有人@你]';
			case 'msg.lastMsgDraft': return '[草稿]';
			case 'msg.unkownMsg': return '[未知消息，请先升级客户端查看]';
			case 'msg.formarMsgError': return '[消息格式错误，无法查看]';
			case 'msg.signalDecryptError': return '[消息解密失败，无法查看]';
			case 'msg.youRecalledAMessage': return '你撤回了一条消息';
			case 'msg.someoneRecalledAMessage': return ({required Object name}) => '\'${name}\'撤回了一条消息';
			case 'msg.youRecalledMemberMessage': return ({required Object member}) => '你撤回了一条成员 \'${member}\' 的消息';
			case 'msg.someoneRecalledMemberMessage': return ({required Object name}) => '${name} 撤回了一条成员的消息';
			case 'msg.noRelationRequest': return ({required Object name}) => '${name}开启了朋友验证，你还不是他（她）朋友。请先发送朋友验证请求，对方验证通过后，才能聊天。发送验证请求';
			case 'msg.systemFileHelper': return '文件传输助手';
			case 'msg.systemTeam': return '系统通知';
			case 'msg.chat': return '会话';
			case 'msg.ohterTyping': return '对方正在输入';
			case 'msg.userIsTyping': return ({required Object name}) => '${name}正在输入';
			case 'msg.groupMembers': return ({required Object count}) => '${count}个成员';
			case 'msg.onlintCount': return ({required Object count}) => '${count}人在线';
			case 'msg.lastSeenTime': return ({required Object time}) => '上次在线时间${time}';
			default: return null;
		}
	}
}

