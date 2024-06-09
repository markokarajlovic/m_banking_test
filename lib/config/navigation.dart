import 'package:go_router/go_router.dart';
import 'package:m_banking_test/presentation/screens/login/login.dart';
import 'package:m_banking_test/presentation/screens/splash/splash_screen.dart';

class Navigation {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: NavigationRoutes.splash.path,
        name: NavigationRoutes.splash.name,
        builder: (_, __) => const SplashScreen(),
      ),
      GoRoute(
        path: NavigationRoutes.login.path,
        name: NavigationRoutes.login.name,
        builder: (_, __) => const LoginScreen(),
      ),
    ],
  );
}

enum NavigationRoutes {
  splash(path: '/', name: 'splashScreen'),
  login(path: '/loginScreen', name: 'loginScreen');

  const NavigationRoutes({required this.name, required this.path});

  final String name;
  final String path;
}
