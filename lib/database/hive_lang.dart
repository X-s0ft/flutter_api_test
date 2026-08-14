import 'dart:developer';
import 'package:flutter_api_test/database/boxes_hive.dart';
import 'package:flutter_api_test/riverpod/state_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HiveLang {
  HiveLang({required this.reference});

  WidgetRef reference;

  Future<void> _saveLang(Set<int> newitem) async {
    boxLang.put('lang', newitem.first);
  }

  void updateSelcetedLang(Set<int> newselected) {
    reference.read(riverpdLangIndex.notifier).update((state) => newselected);
    _saveLang(newselected);
    log('Выбран новый язык выбран ${newselected.first}');
  }
}
