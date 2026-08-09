import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'widgets/all_widgets.dart';

void main() {
  runApp(ProviderScope(child: const ConfigWidget()));
}