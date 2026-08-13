import 'package:flutter/material.dart';
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
    Set<int> stateTheme = ref.watch(riverpodTheme);

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
                  ButtonSegment(value: 1, label: Text('Светлая')),
                  ButtonSegment(value: 2, label: Text('Тёмная')),
                ],
                onSelectionChanged: hivesavertheme.updateSelectedTheme,
              ),
            ),
            OptionContainer(
              'Язык',
              SegmentedButton(
                selected: {1},
                segments: [
                  ButtonSegment(value: 1, label: Text('RU')),
                  ButtonSegment(value: 2, label: Text('EN')),
                ],
                onSelectionChanged: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
