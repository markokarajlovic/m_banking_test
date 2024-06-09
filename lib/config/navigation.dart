import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:m_banking_test/presentation/screens/home/home.dart';
import 'package:m_banking_test/presentation/screens/ips/ips.dart';
import 'package:m_banking_test/presentation/screens/login/login.dart';
import 'package:m_banking_test/presentation/screens/other/other.dart';
import 'package:m_banking_test/presentation/screens/splash/splash_screen.dart';
import 'package:m_banking_test/presentation/screens/support/support.dart';
import 'package:m_banking_test/presentation/screens/token/token.dart';

class Navigation {
  static final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: NavigationRoutes.splash.path,
        name: NavigationRoutes.splash.name,
        builder: (_, __) => const SplashScreen(),
      ),
      ShellRoute(
        navigatorKey: _homeNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) => HomeScreen(child: child),
        routes: [
          GoRoute(
            path: NavigationRoutes.login.path,
            name: NavigationRoutes.login.name,
            builder: (_, __) => const LoginScreen(),
          ),
          GoRoute(
            path: NavigationRoutes.token.path,
            name: NavigationRoutes.token.name,
            builder: (_, __) => const TokenScreen(),
          ),
          GoRoute(
            path: NavigationRoutes.ips.path,
            name: NavigationRoutes.ips.name,
            builder: (_, __) => const IpsScreen(),
          ),
          GoRoute(
            path: NavigationRoutes.support.path,
            name: NavigationRoutes.support.name,
            builder: (_, __) => const SupportScreen(),
          ),
          GoRoute(
            path: NavigationRoutes.other.path,
            name: NavigationRoutes.other.name,
            builder: (_, __) => const OtherScreen(),
          ),
        ],
      ),
    ],
  );
}

enum NavigationRoutes {
  splash(path: '/', name: 'splashScreen'),
  login(path: '/loginScreen', name: 'loginScreen'),
  token(path: '/tokenScreen', name: 'tokenScreen'),
  ips(path: '/ipsScreen', name: 'ipsScreen'),
  support(path: '/supportScreen', name: 'supportScreen'),
  other(path: '/otherScreen', name: 'otherScreen');

  const NavigationRoutes({required this.name, required this.path});

  final String name;
  final String path;
}
