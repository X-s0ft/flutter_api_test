import 'package:flutter/material.dart';
import 'package:flutter_api_test/widgets/all_widgets.dart';

class OptionsPage extends StatefulWidget {
  const OptionsPage({super.key});

  @override
  State<OptionsPage> createState() => _OptionsPageState();
}

class _OptionsPageState extends State<OptionsPage> {
  // TODO: Функцию позже удалить
  void ipdateselected(Set<int> newselect){
    setState(() {
      _selected = newselect;
    });
  }
  Set<int> _selected = {1};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OptionContainer(
              'Тема',
              SegmentedButton(
                selected: {1},
                segments: [
                  ButtonSegment(value: 1, label: Text('Светлая')),
                  ButtonSegment(value: 2, label: Text('Тёмная')),
                ],
              ),
            ),
            OptionContainer(
              'Язык',
              SegmentedButton(
                selected: _selected,
                segments: [
                  ButtonSegment(value: 1, label: Text('RU')),
                  ButtonSegment(value: 2, label: Text('EN')),
                ],
                onSelectionChanged: ipdateselected
              ),
            ),
          ],
        ),
      ),
    );
  }
}
