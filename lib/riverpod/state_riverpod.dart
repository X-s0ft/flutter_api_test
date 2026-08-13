import 'package:flutter_api_test/assets/theme/theme.dart';
import 'package:flutter_api_test/database/boxes_hive.dart';
import 'package:flutter_riverpod/legacy.dart';

final riverpodThemeIndex = StateProvider((ref) => <int>{boxTheme.get('isdark')});

final riverpodTheme = StateProvider(
  ((ref) => <int>{boxTheme.get('isdark')}.first == 1 ? lighttheme : darktheme),
);
