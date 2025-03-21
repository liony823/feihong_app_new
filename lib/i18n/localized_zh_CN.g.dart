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

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Localized {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appNmae': return '飞宏';
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

