import 'package:flutter_api_test/assets/theme/theme.dart';
import 'package:flutter_api_test/database/boxes_hive.dart';
import 'package:flutter_api_test/riverpod/state_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:developer';

class HiveTheme {
  HiveTheme({required this.reference});

  WidgetRef reference;

  Future<void> _savetheme(Set<int> newitem) async {
    boxTheme.put('isdark', newitem.first);
  }

  void updateSelectedTheme(Set<int> newselected) {
    reference.read(riverpodThemeIndex.notifier).update((state) => newselected);
    reference
        .read(riverpodTheme.notifier)
        .update((state) => newselected.first == 1 ? lighttheme : darktheme);
    _savetheme(newselected);
    log('Выбран новая тема №${newselected.first}');
  }
}
