import 'package:flutter/material.dart';
import 'package:flutter_api_test/assets/i18n/lib/gen/strings.g.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {

  // TODO: Сделать вывод информации с API
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(t.information)));
  }
}
