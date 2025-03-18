import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:smart_farm_admin/src/core/constants/auth_data_constant.dart';
import 'package:smart_farm_admin/src/view/auth/login.dart';
import 'package:smart_farm_admin/src/view/home/home.dart';
import 'package:smart_farm_admin/src/view/layout.dart';
import 'package:smart_farm_admin/src/view/profile/profile.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

class RouteName {
  static const String login = '/login';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String changePassword = '/change-password';
  static const String notificationSetting = '/notification-setting';
  static const String userProfile = '/user-profile';

  static const publicRoutes = [login];
}

CustomTransitionPage _buildPageWithSlideTransition(Widget child) {
  return CustomTransitionPage(
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      final tween = Tween(
        begin: begin,
        end: end,
      ).chain(CurveTween(curve: curve));
      final offsetAnimation = animation.drive(tween);

      return SlideTransition(position: offsetAnimation, child: child);
    },
  );
}

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: RouteName.home,
  redirect: (context, state) async {
    final box = await Hive.openBox(AuthDataConstant.authBoxName);
    final accessToken = box.get(AuthDataConstant.accessTokenKey);
    final isAuthenticated = accessToken != null && accessToken.isNotEmpty;

    if (!isAuthenticated && !RouteName.publicRoutes.contains(state.fullPath)) {
      return RouteName.login;
    }
    return null;
  },
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return LayoutScaffold(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouteName.home,
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouteName.profile,
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
    // GoRoute(
    //   path: RouteName.home,
    //   pageBuilder:
    //       (context, state) => _buildPageWithSlideTransition(const HomeScreen()),
    // ),
    GoRoute(
      path: RouteName.login,
      pageBuilder:
          (context, state) =>
              _buildPageWithSlideTransition(const LoginScreen()),
    ),
  ],
);
