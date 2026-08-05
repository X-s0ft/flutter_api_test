import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BNBar extends StatefulWidget {
  const BNBar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<BNBar> createState() => _BNBarState();
}

List<BottomNavigationBarItem> get _buildBNBItem => [
  const BottomNavigationBarItem(
    icon: Icon(Icons.account_balance_rounded),
    label: 'Информация',
  ),
  const BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Настройки'),
];

class _BNBarState extends State<BNBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        items: _buildBNBItem,
        currentIndex: widget.navigationShell.currentIndex,
        onTap: (index) => widget.navigationShell.goBranch(
          index,
          initialLocation: index == widget.navigationShell.currentIndex,
        ),
      ),
    );
  }
}
