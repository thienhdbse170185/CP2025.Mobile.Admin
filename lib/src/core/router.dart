import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_farm_admin/src/view/home.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

class RouteName {
  static const String login = '/login';
  static const String home = '/home';

  static const publicRoutes = [login, home];
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
  routes: [
    GoRoute(
      path: RouteName.home,
      pageBuilder:
          (context, state) =>
              _buildPageWithSlideTransition(const HomeScreen(title: 'ABc')),
    ),
  ],
);
