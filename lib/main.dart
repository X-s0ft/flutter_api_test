import 'package:flutter/material.dart';
import 'package:flutter_api_test/assets/i18n/lib/gen/strings.g.dart';
import 'package:flutter_api_test/database/boxes_hive.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'widgets/all_widgets.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  boxTheme = await Hive.openBox('ThemeBox');
  boxLang = await Hive.openBox('LangBox');
  runApp(ProviderScope(child: TranslationProvider(child: ConfigWidget())));
}
