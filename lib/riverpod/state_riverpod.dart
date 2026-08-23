import 'package:flutter_api_test/assets/i18n/lib/gen/strings.g.dart';
import 'package:flutter_api_test/assets/theme/theme.dart';
import 'package:flutter_api_test/database/boxes_hive.dart';
import 'package:flutter_riverpod/legacy.dart';

final riverpodThemeIndex = StateProvider(
  (val) => <int>{boxTheme.get('isdark', defaultValue: 1)},
);

final riverpdLangIndex = StateProvider(
  (val) => <int>{boxLang.get('lang', defaultValue: 1)},
);

final riverpodTheme = StateProvider(
  (val) => <int>{boxTheme.get('isdark', defaultValue: 1)}.first == 1
      ? lighttheme
      : darktheme,
);

final riverpodLang = StateProvider(
  (val) => <int>{boxLang.get('lang', defaultValue: 1)}.first == 1
      ? LocaleSettings.setLocale(AppLocale.en)
      : LocaleSettings.setLocale(AppLocale.ru),
);
