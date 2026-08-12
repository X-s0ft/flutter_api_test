import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_api_test/assets/theme/theme.dart';
import 'package:flutter_api_test/database/boxes_hive.dart';
import 'package:flutter_api_test/riverpod/state_riverpod.dart';

import 'package:flutter_api_test/router/route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConfigWidget extends ConsumerWidget {
  const ConfigWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(chekertheme);
    log(
      'Состояние ${ref.read(riverpodTheme)} --- Нынешняя тема ${ref.read(chekertheme)} --- Тип: ${ref.read(chekertheme).runtimeType}',
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: true,
      showSemanticsDebugger: false,
      routerConfig: router,
      theme: lighttheme
      //  ref.read(chekertheme.notifier).update((re) => re == 1 ? lighttheme : darktheme), // TODO: додлеать применение темы
    );
  }
}

// box.getAt(0) == {1} ? lighttheme : darktheme
