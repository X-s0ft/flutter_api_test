import 'package:flutter/material.dart';
import 'package:flutter_api_test/assets/theme/theme.dart';
import 'package:flutter_api_test/router/route.dart';

class ConfigWidget extends StatelessWidget {
  const ConfigWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: true,
      showSemanticsDebugger: false,
      routerConfig: router,
      darkTheme: darktheme,
      theme: lighttheme,
    );
  }
}
