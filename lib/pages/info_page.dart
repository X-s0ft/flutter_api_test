import 'package:flutter/material.dart';
import 'package:flutter_api_test/assets/i18n/lib/gen/strings.g.dart';
import 'package:flutter_api_test/repos/api_bank/dio_bank.dart';
import 'package:flutter_api_test/riverpod/state_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InfoPage extends ConsumerStatefulWidget {
  const InfoPage({super.key});

  @override
  ConsumerState<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends ConsumerState<InfoPage> {
  // TODO: Сделать вывод информации с API
  @override
  Widget build(BuildContext context) {
    ref.watch(riverpdLangIndex);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(t.information),
            IconButton(
              onPressed: () {
                Diobank().getList();
              },
              icon: Icon(Icons.dangerous),
            ),
          ],
        ),
      ),
    );
  }
}
