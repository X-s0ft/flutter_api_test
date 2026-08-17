import 'package:flutter_api_test/assets/i18n/lib/gen/strings.g.dart';
import 'package:flutter_api_test/assets/theme/theme.dart';
import 'package:flutter_api_test/database/boxes_hive.dart';
import 'package:flutter_riverpod/legacy.dart';

final riverpodThemeIndex = StateProvider(
  (ref) => <int>{
    boxTheme.get('isdark', defaultValue: {1}),
  },
);

final riverpdLangIndex = StateProvider(
  (ref) => <int>{
    boxLang.get('lang', defaultValue: {1}),
  },
);

final riverpodTheme = StateProvider(
  ((ref) => <int>{boxTheme.get('isdark')}.first == 1 ? lighttheme : darktheme),
);

final riverpodLang = StateProvider(
  ((ref) => <int>{boxLang.get('lang')}.first == 1 ? AppLocale.ru: AppLocale.en),
);