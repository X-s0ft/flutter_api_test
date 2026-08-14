import 'package:flutter/material.dart';
import 'package:flutter_api_test/assets/theme/colors.dart';

// TODO: Дописать стили
final lighttext = TextStyle();
final darktext = TextStyle();

final lighttheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: backcolorL,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: navcolorL),
  textTheme: TextTheme(titleMedium: lighttext),
);
final darktheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: backcolorD,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: navcolorD),
  textTheme: TextTheme(titleMedium: darktext),
);
