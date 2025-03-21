import 'package:go_router/go_router.dart';

import 'package:reminder_me/presentation/screens/home_screen.dart';
import 'package:reminder_me/presentation/screens/settings_screen.dart';

final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/settings',
        name: 'settings',
        builder: (context, state) => const SettingsPage(),
      ),
    ],
  );