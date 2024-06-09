part of 'home.dart';

class HomeScreen extends StatelessWidget {
  final Widget child;

  const HomeScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: child,
      bottomNavigationBar: BankBottomBar(
        onTap: (int idx) => _onItemTapped(idx, context),
        currentIndex: _calculateSelectedIndex(context),
        customBottomBarItems: [
          BankBottomBarItem(
            label: LocaleKeys.bottom_nav_bar_login.tr(),
            selectedIcon: Assets.icons.bottomBarLoginSelected.image(width: 28, height: 28),
            unselectedIcon: Assets.icons.bottomBarLoginSelected.image(width: 28, height: 28),
          ),
          BankBottomBarItem(
            label: LocaleKeys.bottom_nav_bar_token.tr(),
            selectedIcon: Assets.icons.bottomBarToken.image(width: 28, height: 28),
            unselectedIcon: Assets.icons.bottomBarToken.image(
              width: 28,
              height: 28,
              color: Colors.black45,
            ),
          ),
          BankBottomBarItem(
            label: LocaleKeys.bottom_nav_bar_ips.tr(),
            selectedIcon: Assets.icons.bottomBarIps.image(
              width: 28,
              height: 28,
              color: Colors.black,
              colorBlendMode: BlendMode.color,
            ),
            unselectedIcon: Assets.icons.bottomBarIps.image(
              width: 28,
              height: 28,
              color: Colors.black45,
              colorBlendMode: BlendMode.xor,
            ),
          ),
          BankBottomBarItem(
            label: LocaleKeys.bottom_nav_bar_support.tr(),
            selectedIcon: Assets.icons.bottomBarSupportSelected.image(width: 24, height: 24),
            unselectedIcon: Assets.icons.bottomBarSupportUnselected.image(width: 24, height: 24),
          ),
          BankBottomBarItem(
            label: LocaleKeys.bottom_nav_bar_other.tr(),
            selectedIcon: Assets.icons.bottomBarOtherSelected.image(width: 28, height: 28),
            unselectedIcon: Assets.icons.bottomBarOtherUnselected.image(width: 28, height: 28),
          ),
        ],
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith(NavigationRoutes.login.path)) {
      return 0;
    }
    if (location.startsWith(NavigationRoutes.token.path)) {
      return 1;
    }
    if (location.startsWith(NavigationRoutes.ips.path)) {
      return 2;
    }
    if (location.startsWith(NavigationRoutes.support.path)) {
      return 3;
    }
    if (location.startsWith(NavigationRoutes.other.path)) {
      return 4;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.goNamed(NavigationRoutes.login.name);
        break;
      case 1:
        context.goNamed(NavigationRoutes.token.name);
        break;
      case 2:
        context.goNamed(NavigationRoutes.ips.name);
        break;
      case 3:
        context.goNamed(NavigationRoutes.support.name);
        break;
      case 4:
        context.goNamed(NavigationRoutes.other.name);
        break;
    }
  }
}
