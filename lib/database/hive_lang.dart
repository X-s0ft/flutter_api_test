import 'dart:developer';
import 'package:flutter_api_test/assets/i18n/lib/gen/strings.g.dart';
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
    reference
        .read(riverpodLang.notifier)
        .update(
          (state) => newselected.first == 1
              ? LocaleSettings.setLocale(AppLocale.en)
              : LocaleSettings.setLocale(AppLocale.ru),
        );
    _saveLang(newselected);

    log('Выбран язык №${newselected.first}');
  }
}
