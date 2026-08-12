import 'package:flutter/material.dart';
import 'package:flutter_api_test/database/boxes_hive.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'widgets/all_widgets.dart';

Future<void> main() async {
  await Hive.initFlutter();
  box = await Hive.openBox('ThemeBox');
  runApp(ProviderScope(child: ConfigWidget()));
}