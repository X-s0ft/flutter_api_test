import 'package:flutter/material.dart';
import 'package:flutter_api_test/assets/i18n/lib/gen/strings.g.dart';
import 'package:flutter_api_test/repos/api_bank/dio_bank.dart';
import 'package:flutter_api_test/repos/api_bank/model_get.dart';
import 'package:flutter_api_test/riverpod/state_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InfoPage extends ConsumerStatefulWidget {
  const InfoPage({super.key});

  @override
  ConsumerState<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends ConsumerState<InfoPage> {
  @override
  Widget build(BuildContext context) {
    ref.watch(riverpdLangIndex);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(t.information),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: FutureBuilder<List<Bank>>(
                future: Diobank().getList(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        'Ошибка! Возможно у вас нет доступа к интернету',
                      ),
                    );
                  }
                  final bankdata = snapshot.data!;
                  return ListView.builder(
                    itemCount: bankdata.length,
                    itemBuilder: (context, index) {
                      final bank = bankdata[index];
                      return Card(
                        child: ListTile(
                          title: Text(bank.name),
                          subtitle: Text(bank.price.toString()),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
