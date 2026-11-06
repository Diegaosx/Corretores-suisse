import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'fr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
    String? frText = '',
  }) =>
      [enText, esText, frText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    '3v0v72l0': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Miscellaneous
  {
    'pg9c1qnw': {
      'en': 'We need access to the microphone to answer your response.',
      'es': '',
      'fr': '',
    },
    '8e7cig2m': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'p9bvo0b7': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'alj77qkb': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '46dk9j0z': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'brdb3wib': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'rcy7xsfq': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'd326hkal': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'de1vak77': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'nozfze42': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'scso5muj': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'j6zklgd2': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'ccgbucr2': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'i3bzn6dc': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'irlsxlzs': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'zg5zovhx': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'nj0m6aaf': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'mxozzws0': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'xb6a9gev': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'p71s4r51': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'pp6nldfy': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'fc4ik49r': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'xpx239r5': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'ki8ktjw4': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'tpbq48c7': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '3okfrl08': {
      'en': '',
      'es': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
