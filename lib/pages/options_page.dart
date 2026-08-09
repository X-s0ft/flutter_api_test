import 'package:flutter/material.dart';
import 'package:flutter_api_test/riverpod/state_riverpod.dart';
import 'package:flutter_api_test/widgets/all_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OptionsPage extends ConsumerStatefulWidget {
  const OptionsPage({super.key});

  @override
  ConsumerState<OptionsPage> createState() => _OptionsPageState();
}

class _OptionsPageState extends ConsumerState<OptionsPage> {
  void updateSelectedLang(Set<int> newselected) {
    ref.read(riverpodLang.notifier).update((state) => newselected);
  }

  void updateSelectedTheme(Set<int> newselected) {
    ref.read(riverpodTheme.notifier).update((state) => newselected);
  }

  @override
  Widget build(BuildContext context) {
    Set<int> stateTheme = ref.watch(riverpodTheme);
    Set<int> stateLang = ref.watch(riverpodLang);

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
                onSelectionChanged: updateSelectedTheme,
              ),
            ),
            OptionContainer(
              'Язык',
              SegmentedButton(
                selected: stateLang,
                segments: [
                  ButtonSegment(value: 1, label: Text('RU')),
                  ButtonSegment(value: 2, label: Text('EN')),
                ],
                onSelectionChanged: updateSelectedLang,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
