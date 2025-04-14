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
class LocalizedEnUs extends Localized {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	LocalizedEnUs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Localized>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.enUs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en-US>.
	@override final TranslationMetadata<AppLocale, Localized> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final LocalizedEnUs _root = this; // ignore: unused_field

	@override 
	LocalizedEnUs $copyWith({TranslationMetadata<AppLocale, Localized>? meta}) => LocalizedEnUs(meta: meta ?? this.$meta);

	// Translations
	@override String get appNmae => 'Fei-hong';
	@override late final _LocalizedAgreementEnUs agreement = _LocalizedAgreementEnUs._(_root);
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
	@override late final _LocalizedLoginEnUs login = _LocalizedLoginEnUs._(_root);
	@override late final _LocalizedRegisterEnUs register = _LocalizedRegisterEnUs._(_root);
	@override late final _LocalizedVerifyEnUs verify = _LocalizedVerifyEnUs._(_root);
	@override String get welcome => 'Welcome to Feihong';
}

// Path: agreement
class _LocalizedAgreementEnUs extends LocalizedAgreementZhCn {
	_LocalizedAgreementEnUs._(LocalizedEnUs root) : this._root = root, super.internal(root);

	final LocalizedEnUs _root; // ignore: unused_field

	// Translations
	@override TextSpan checkbox({required InlineSpan userAgreement, required InlineSpan privacyPolicy}) => TextSpan(children: [
		const TextSpan(text: 'I have read and agree to '),
		userAgreement,
		const TextSpan(text: ' and '),
		privacyPolicy,
	]);
	@override String get hint => 'In order to better protect your legitimate rights and interests, please read and agree to the following agreement';
	@override String get privacyPolicy => 'Privacy Policy';
	@override String get title => 'User Agreement and Privacy Policy';
	@override String get userAgreement => 'User Agreement';
}

// Path: login
class _LocalizedLoginEnUs extends LocalizedLoginZhCn {
	_LocalizedLoginEnUs._(LocalizedEnUs root) : this._root = root, super.internal(root);

	final LocalizedEnUs _root; // ignore: unused_field

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
	@override String get phonePlaceholder => 'Please enter your mobile phone number';
	@override String get submit => 'Log in now';
}

// Path: register
class _LocalizedRegisterEnUs extends LocalizedRegisterZhCn {
	_LocalizedRegisterEnUs._(LocalizedEnUs root) : this._root = root, super.internal(root);

	final LocalizedEnUs _root; // ignore: unused_field

	// Translations
	@override String get hasAccount => 'Already have an account?';
	@override String get invitationCode => 'Invitation code';
	@override String get invitationCodePlaceholder => 'Please enter your invitation code';
	@override String get nameLabel => 'username';
	@override String get namePlaceholder => 'Please enter your username';
	@override String get passwordLabel => 'password';
	@override String get passwordPlaceholder => 'Please enter your password';
	@override String get phoneLabel => 'Phone number';
	@override String get phonePlaceholder => 'Please enter your mobile phone number';
	@override String get registerWithAutoRegisterHint => 'Whether to register an account based on your mobile phone device number';
	@override String get registerWithDevice => 'Automatic device registration';
	@override String get registerWithName => 'Username registration';
	@override String get registerWithPhone => 'Mobile phone number registration';
	@override String get submit => 'Register now';
}

// Path: verify
class _LocalizedVerifyEnUs extends LocalizedVerifyZhCn {
	_LocalizedVerifyEnUs._(LocalizedEnUs root) : this._root = root, super.internal(root);

	final LocalizedEnUs _root; // ignore: unused_field

	// Translations
	@override String get plsEnterVerificationCode => 'Please enter your verification code';
	@override String get resendVerificationCode => 'Resend verification code';
	@override String get sendVerificationCode => 'Send verification code';
	@override String get verificationCode => 'Verification code';
	@override String get verificationCodeTimingReminder => 'Retrieve the verification code after %sS';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on LocalizedEnUs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appNmae': return 'Fei-hong';
			case 'agreement.checkbox': return ({required InlineSpan userAgreement, required InlineSpan privacyPolicy}) => TextSpan(children: [
				const TextSpan(text: 'I have read and agree to '),
				userAgreement,
				const TextSpan(text: ' and '),
				privacyPolicy,
			]);
			case 'agreement.hint': return 'In order to better protect your legitimate rights and interests, please read and agree to the following agreement';
			case 'agreement.privacyPolicy': return 'Privacy Policy';
			case 'agreement.title': return 'User Agreement and Privacy Policy';
			case 'agreement.userAgreement': return 'User Agreement';
			case 'httpError.badCertificate': return 'Certificate error, please contact the administrator';
			case 'httpError.badResponse': return 'Server error, please contact the administrator';
			case 'httpError.connectionError': return 'The connection cannot be established with the server, please check the network or proxy';
			case 'httpError.connectionTimeout': return 'The network connection timed out, please check the network or agent';
			case 'httpError.networkError': return 'The network connection timed out, please check the network or agent';
			case 'httpError.receiveTimeout': return 'Network request timeout, please check the network or proxy';
			case 'httpError.sendTimeout': return 'Network request timeout, please check the network or proxy';
			case 'httpError.title': return 'An error occurred';
			case 'httpError.unknown': return 'Server error, please contact the administrator';
			case 'login.forgotPassword': return 'forget the password?';
			case 'login.loginWithAutoRegisterHint': return 'Whether to register an account and log in according to your mobile phone device number';
			case 'login.loginWithDevice': return 'Automatic device registration and login';
			case 'login.loginWithName': return 'Username login';
			case 'login.loginWithPhone': return 'Mobile phone number login';
			case 'login.nameLabel': return 'username';
			case 'login.namePlaceholder': return 'Please enter your username';
			case 'login.noAccountYet': return 'Don\'t have an account yet?';
			case 'login.passwordLabel': return 'password';
			case 'login.passwordPlaceholder': return 'Please enter your password';
			case 'login.phoneLabel': return 'Phone number';
			case 'login.phonePlaceholder': return 'Please enter your mobile phone number';
			case 'login.submit': return 'Log in now';
			case 'register.hasAccount': return 'Already have an account?';
			case 'register.invitationCode': return 'Invitation code';
			case 'register.invitationCodePlaceholder': return 'Please enter your invitation code';
			case 'register.nameLabel': return 'username';
			case 'register.namePlaceholder': return 'Please enter your username';
			case 'register.passwordLabel': return 'password';
			case 'register.passwordPlaceholder': return 'Please enter your password';
			case 'register.phoneLabel': return 'Phone number';
			case 'register.phonePlaceholder': return 'Please enter your mobile phone number';
			case 'register.registerWithAutoRegisterHint': return 'Whether to register an account based on your mobile phone device number';
			case 'register.registerWithDevice': return 'Automatic device registration';
			case 'register.registerWithName': return 'Username registration';
			case 'register.registerWithPhone': return 'Mobile phone number registration';
			case 'register.submit': return 'Register now';
			case 'verify.plsEnterVerificationCode': return 'Please enter your verification code';
			case 'verify.resendVerificationCode': return 'Resend verification code';
			case 'verify.sendVerificationCode': return 'Send verification code';
			case 'verify.verificationCode': return 'Verification code';
			case 'verify.verificationCodeTimingReminder': return 'Retrieve the verification code after %sS';
			case 'welcome': return 'Welcome to Feihong';
			default: return null;
		}
	}
}

