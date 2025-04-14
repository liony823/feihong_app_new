///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'localized.g.dart';

// Path: <root>
typedef LocalizedZhCn = Localized; // ignore: unused_element
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
		    locale: AppLocale.zhCn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-CN>.
	@override final TranslationMetadata<AppLocale, Localized> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Localized _root = this; // ignore: unused_field

	Localized $copyWith({TranslationMetadata<AppLocale, Localized>? meta}) => Localized(meta: meta ?? this.$meta);

	// Translations
	String get appNmae => '飞宏';
	String get welcome => '欢迎来到飞宏';
	late final LocalizedAgreementZhCn agreement = LocalizedAgreementZhCn.internal(_root);
	late final LocalizedLanguageZhCn language = LocalizedLanguageZhCn.internal(_root);
	late final LocalizedLoginZhCn login = LocalizedLoginZhCn.internal(_root);
	late final LocalizedRegisterZhCn register = LocalizedRegisterZhCn.internal(_root);
	late final LocalizedVerifyZhCn verify = LocalizedVerifyZhCn.internal(_root);
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
}

// Path: agreement
class LocalizedAgreementZhCn {
	LocalizedAgreementZhCn.internal(this._root);

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
	String get hint => '为了更好地保障您的合法权益，请您阅读并同意以下协议';
}

// Path: language
class LocalizedLanguageZhCn {
	LocalizedLanguageZhCn.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get title => '语言设置';
}

// Path: login
class LocalizedLoginZhCn {
	LocalizedLoginZhCn.internal(this._root);

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
}

// Path: register
class LocalizedRegisterZhCn {
	LocalizedRegisterZhCn.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
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
	String get hasAccount => '已经有账号？';
	String get submit => '立即注册';
}

// Path: verify
class LocalizedVerifyZhCn {
	LocalizedVerifyZhCn.internal(this._root);

	final Localized _root; // ignore: unused_field

	// Translations
	String get verificationCode => '验证码';
	String get sendVerificationCode => '发送验证码';
	String get resendVerificationCode => '重发验证码';
	String get verificationCodeTimingReminder => '%sS后重新获取验证码';
	String get plsEnterVerificationCode => '请输入您的验证码';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Localized {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appNmae': return '飞宏';
			case 'welcome': return '欢迎来到飞宏';
			case 'agreement.userAgreement': return '《用户协议》';
			case 'agreement.privacyPolicy': return '《隐私政策》';
			case 'agreement.checkbox': return ({required InlineSpan userAgreement, required InlineSpan privacyPolicy}) => TextSpan(children: [
				const TextSpan(text: '我已阅读并同意 '),
				userAgreement,
				const TextSpan(text: ' 和 '),
				privacyPolicy,
			]);
			case 'agreement.title': return '用户协议和隐私政策';
			case 'agreement.hint': return '为了更好地保障您的合法权益，请您阅读并同意以下协议';
			case 'language.title': return '语言设置';
			case 'login.loginWithPhone': return '手机号登录';
			case 'login.loginWithName': return '用户名登录';
			case 'login.loginWithDevice': return '设备自动注册登录';
			case 'login.loginWithAutoRegisterHint': return '是否根据手机设备号注册账号并登录';
			case 'login.phoneLabel': return '手机号';
			case 'login.nameLabel': return '用户名';
			case 'login.passwordLabel': return '密码';
			case 'login.phonePlaceholder': return '请输入手机号';
			case 'login.namePlaceholder': return '请输入用户名';
			case 'login.passwordPlaceholder': return '请输入密码';
			case 'login.forgotPassword': return '忘记密码？';
			case 'login.noAccountYet': return '还没有账号？';
			case 'login.submit': return '立即登录';
			case 'register.registerWithPhone': return '手机号注册';
			case 'register.registerWithName': return '用户名注册';
			case 'register.registerWithDevice': return '设备自动注册';
			case 'register.registerWithAutoRegisterHint': return '是否根据手机设备号注册账号';
			case 'register.invitationCode': return '邀请码';
			case 'register.invitationCodePlaceholder': return '请输入您的邀请码';
			case 'register.phoneLabel': return '手机号';
			case 'register.nameLabel': return '用户名';
			case 'register.passwordLabel': return '密码';
			case 'register.phonePlaceholder': return '请输入手机号';
			case 'register.namePlaceholder': return '请输入用户名';
			case 'register.passwordPlaceholder': return '请输入密码';
			case 'register.hasAccount': return '已经有账号？';
			case 'register.submit': return '立即注册';
			case 'verify.verificationCode': return '验证码';
			case 'verify.sendVerificationCode': return '发送验证码';
			case 'verify.resendVerificationCode': return '重发验证码';
			case 'verify.verificationCodeTimingReminder': return '%sS后重新获取验证码';
			case 'verify.plsEnterVerificationCode': return '请输入您的验证码';
			case 'httpError.title': return '发生错误';
			case 'httpError.networkError': return '网络连接超时，请检查网络或者代理';
			case 'httpError.connectionTimeout': return '网络连接超时，请检查网络或者代理';
			case 'httpError.sendTimeout': return '网络请求超时，请检查网络或者代理';
			case 'httpError.receiveTimeout': return '网络请求超时，请检查网络或者代理';
			case 'httpError.badCertificate': return '证书错误，请联系管理员';
			case 'httpError.badResponse': return '服务器错误，请联系管理员';
			case 'httpError.connectionError': return '与服务器无法建立连接，请检查网络或者代理';
			case 'httpError.unknown': return '服务器错误，请联系管理员';
			default: return null;
		}
	}
}

