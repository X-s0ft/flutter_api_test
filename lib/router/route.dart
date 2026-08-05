import 'package:flutter_api_test/pages/all_pages.dart';
import 'package:flutter_api_test/widgets/all_widgets.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          BNBar(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(path: '/', builder: (context, state) => const InfoPage()),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/options',
              builder: (context, state) => const OptionsPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
