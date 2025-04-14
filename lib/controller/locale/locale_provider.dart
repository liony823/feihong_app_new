import 'package:common/common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:world_countries/world_countries.dart';

part 'locale_provider.g.dart';

class LocaleState {
  final TypedLocale? locale;

  LocaleState({this.locale});

  LocaleState copyWith({TypedLocale? locale}) {
    return LocaleState(locale: locale ?? this.locale);
  }
}

@Riverpod(keepAlive: true)
class LocaleController extends _$LocaleController {
  @override
  LocaleState build() {
    final spLocale = DataSp.getAppLang();
    if (Utils.isEmptyOrNull(spLocale)) {
      final language = NaturalLanguage.fromCodeShort(
          LocaleSettings.currentLocale.languageCode);
      final locale = TypedLocale.fromSubtags(language: language);
      return LocaleState(locale: locale);
    }

    final language = NaturalLanguage.fromCodeShort(spLocale!);
    final locale = TypedLocale.fromSubtags(language: language);

    return LocaleState(locale: locale);
  }

  bool isCurrentLanguage(NaturalLanguage language) {
    return LocaleSettings.currentLocale.languageCode ==
        language.codeShort.toLowerCase();
  }

  void onSelectLanguage(NaturalLanguage language) {
    final locale = TypedLocale.fromSubtags(language: language);
    state = state.copyWith(locale: locale);
    final appLocale = language.toLocale();
    LocaleSettings.setLocaleRaw(appLocale.toString());
    DataSp.setAppLang(language.codeShort);
  }

  String getTranslatedBaseLanguage(NaturalLanguage language) {
    final nativeName = language.namesNative.firstOrNull;
    final tr = language.maybeTranslation(state.locale);
    final title = tr?.name ?? language.name;
    return "$title-$nativeName";
  }
}
