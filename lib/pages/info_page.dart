import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {

  // TODO: Сделать вывод информации с API
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Информация')));
  }
}
