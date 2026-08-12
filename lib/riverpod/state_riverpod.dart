import 'package:flutter_api_test/assets/theme/theme.dart';
import 'package:flutter_api_test/database/boxes_hive.dart';
import 'package:flutter_riverpod/legacy.dart';

final riverpodTheme = StateProvider((ref) => <int>{box.get('isdark')});
final riverpodLang = StateProvider((ref) => {1});

final chekertheme = StateProvider(((ref) => lighttheme));
