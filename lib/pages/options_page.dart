import 'package:flutter/material.dart';
import 'package:flutter_api_test/assets/i18n/lib/gen/strings.g.dart';
import 'package:flutter_api_test/database/hive_lang.dart';
import 'package:flutter_api_test/database/hive_theme.dart';
import 'package:flutter_api_test/riverpod/state_riverpod.dart';
import 'package:flutter_api_test/widgets/all_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OptionsPage extends ConsumerStatefulWidget {
  const OptionsPage({super.key});

  @override
  ConsumerState<OptionsPage> createState() => _OptionsPageState();
}

class _OptionsPageState extends ConsumerState<OptionsPage> {
  @override
  Widget build(BuildContext context) {
    final hivesavertheme = HiveTheme(reference: ref);
    final hivesaverlang = HiveLang(reference: ref);
    Set<int> stateTheme = ref.watch(riverpodThemeIndex);
    Set<int> stateLang = ref.watch(riverpdLangIndex);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OptionContainer(
              'Тема',
              SegmentedButton(
                selected: stateTheme,
                segments: [
                  // TODO: Решить ошибку с обновлением данных (после 3-его клика начинает работать)
                  ButtonSegment(value: 1, label: Text(t.light)),
                  ButtonSegment(value: 2, label: Text(t.dark)),
                ],
                onSelectionChanged: hivesavertheme.updateSelectedTheme,
              ),
            ),
            OptionContainer(
              'Язык',
              SegmentedButton(
                selected: stateLang,
                segments: [
                  ButtonSegment(value: 1, label: Text('EN')),
                  ButtonSegment(value: 2, label: Text('RU')),
                ],
                onSelectionChanged: hivesaverlang.updateSelcetedLang,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
