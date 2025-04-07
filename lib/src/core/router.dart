import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:smart_farm_admin/src/core/constants/auth_data_constant.dart';
import 'package:smart_farm_admin/src/view/auth/login.dart';
import 'package:smart_farm_admin/src/view/cage/cage.dart';
import 'package:smart_farm_admin/src/view/farming_batch/farming_batch.dart';
import 'package:smart_farm_admin/src/view/home/home.dart';
import 'package:smart_farm_admin/src/view/layout.dart';
import 'package:smart_farm_admin/src/view/notification/notification.dart';
import 'package:smart_farm_admin/src/view/profile/profile.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

class RouteName {
  static const String login = '/login';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String changePassword = '/change-password';
  static const String notificationSetting = '/notification-setting';
  static const String userProfile = '/user-profile';
  static const String cage = '/cage';
  static const String notification = '/notification';
  static const String taskCage = '/cage/task';
  static const String logCage = '/cage/log';
  static const String reportCage = '/cage/report';
  static const String farmingBatch = '/farming-batch';

  static const publicRoutes = [login];
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
    GoRoute(
      path: RouteName.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: RouteName.cage,
      builder: (context, state) {
        final params = state.extra as Map<String, dynamic>;
        final cageId = params['cageId'] as String;
        return CageScreen(cageId: cageId);
      },
    ),
    GoRoute(
      path: RouteName.notification,
      builder: (context, state) {
        return const NotificationScreen();
      },
    ),
    GoRoute(
      path: RouteName.farmingBatch,
      builder: (context, state) {
        final params = state.extra as Map<String, dynamic>?;
        final farmingBatchId = params?['farmingBatchId'] as String;
        return FarmingBatchDetailScreen(farmingBatchId: farmingBatchId);
      },
    ),
  ],
);
