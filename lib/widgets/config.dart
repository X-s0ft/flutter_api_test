import 'package:flutter/material.dart';
import 'package:flutter_api_test/riverpod/state_riverpod.dart';
import 'package:flutter_api_test/router/route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConfigWidget extends ConsumerWidget {
  const ConfigWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainTheme = ref.watch(chekertheme);

    return MaterialApp.router(
      debugShowCheckedModeBanner: true,
      showSemanticsDebugger: false,
      routerConfig: router,
      theme: mainTheme,
    );
  }
}
