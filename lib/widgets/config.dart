import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_api_test/assets/i18n/lib/gen/strings.g.dart';
import 'package:flutter_api_test/riverpod/state_riverpod.dart';
import 'package:flutter_api_test/router/route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConfigWidget extends ConsumerWidget {
  const ConfigWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final changerTheme = ref.watch(riverpodTheme);
    final chekerLang = ref.watch(riverpodLang);
    LocaleSettings.setLocale(chekerLang);
    log('Чекер говорит: $chekerLang');
    return MaterialApp.router(
      debugShowCheckedModeBanner: true,
      showSemanticsDebugger: false,
      routerConfig: router,
      theme: changerTheme,
    );
  }
}
