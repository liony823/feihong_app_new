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
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on LocalizedEnUs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appNmae': return 'Fei-hong';
			default: return null;
		}
	}
}

