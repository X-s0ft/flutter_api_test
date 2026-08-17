import 'dart:developer';
import 'package:flutter_api_test/assets/theme/theme.dart';
import 'package:flutter_api_test/database/boxes_hive.dart';
import 'package:flutter_api_test/riverpod/state_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HiveTheme {
  HiveTheme({required this.reference});

  WidgetRef reference;


  Future<void> _savetheme(Set<int> newitem) async {
    boxTheme.put('isdark', newitem.first);
  }

  void updateSelectedTheme(Set<int> newselected) {
    reference.read(riverpodThemeIndex.notifier).update((state) => newselected);
    _savetheme(newselected);
    reference
        .read(riverpodTheme.notifier)
        .update((state) => newselected.first == 1 ? lighttheme : darktheme);
    log('Выбрана новая тема: ${newselected.first}');
  }
}
