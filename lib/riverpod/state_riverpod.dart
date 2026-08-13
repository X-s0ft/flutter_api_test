import 'package:flutter_api_test/assets/theme/theme.dart';
import 'package:flutter_api_test/database/boxes_hive.dart';
import 'package:flutter_riverpod/legacy.dart';

final riverpodTheme = StateProvider((ref) => <int>{box.get('isdark')});

final chekertheme = StateProvider(
  ((ref) => <int>{box.get('isdark')}.first == 1 ? lighttheme : darktheme),
);
