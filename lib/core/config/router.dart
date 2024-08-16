import 'package:go_router/go_router.dart';

import '../../features/fortune/pages/fortune_page.dart';
import '../../features/home/pages/home_page.dart';
import '../../features/home/pages/rules_page.dart';
import '../../features/home/pages/settings_page.dart';
import '../../features/splash/splash_page.dart';

final routerConfig = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsPage(),
    ),
    GoRoute(
      path: '/rules',
      builder: (context, state) => const RulesPage(),
    ),
    GoRoute(
      path: '/fortune',
      builder: (context, state) => const FortunePage(),
    ),
  ],
);
