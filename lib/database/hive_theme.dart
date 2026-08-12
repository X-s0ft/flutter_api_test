import 'dart:developer';
import 'package:flutter_api_test/database/boxes_hive.dart';
import 'package:flutter_api_test/riverpod/state_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HiveTheme {
  HiveTheme({required this.reference});

  WidgetRef reference;

  Future<void> _savetheme(Set<int> newitem) async {
    box.put('isdark', newitem.first);
    log('Тема при выборе: ${box.get('isdark')}, тип элемента: ${<int>{box.getAt(0)}.runtimeType}, нынешняя тема: ${reference.read(chekertheme)}');

  }

  void updateSelectedTheme(Set<int> newselected) {
    reference.read(riverpodTheme.notifier).update((state) => newselected);
    _savetheme(newselected);
  }

 
}
