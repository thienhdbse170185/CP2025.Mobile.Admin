import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:smart_farm_admin/src/core/constants/auth_data_constant.dart';
import 'package:smart_farm_admin/src/model/dto/farming_batch/growth_stage_detail/growth_stage_detail.dart';
import 'package:smart_farm_admin/src/model/dto/merged_farming_batch/merged_farming_batch_details/merged_farming_batch_details_dto.dart';
import 'package:smart_farm_admin/src/view/auth/login.dart';
import 'package:smart_farm_admin/src/view/farming_batch/farming_batch.dart';
import 'package:smart_farm_admin/src/view/growth_stage/growth_stage_screen.dart';
import 'package:smart_farm_admin/src/view/home/home.dart';
import 'package:smart_farm_admin/src/view/layout.dart';
import 'package:smart_farm_admin/src/view/medical_symptom/medical_symptom_screen.dart';
import 'package:smart_farm_admin/src/view/merged_farming_batch/merged_farming_batch.dart';
import 'package:smart_farm_admin/src/view/notification/notification.dart';
import 'package:smart_farm_admin/src/view/profile/edit_user.dart';
import 'package:smart_farm_admin/src/view/profile/profile.dart';
import 'package:smart_farm_admin/src/view/report/report.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

class RouteName {
  static const String login = '/login';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String changePassword = '/change-password';
  static const String notificationSetting = '/notification-setting';
  static const String userProfile = '/user-profile';
  static const String editUserProfile = '/edit-user-profile';
  static const String cage = '/cage';
  static const String notification = '/notification';
  static const String taskCage = '/cage/task';
  static const String logCage = '/cage/log';
  static const String reportCage = '/cage/report';
  static const String farmingBatch = '/farming-batch';
  static const String growthStageDetail = '/growth-stage-detail';
  static const String mergedFarmingBatch = '/merged-farming-batch';
  static const String reportFarmingBatch = '/report-farming-batch';
  static const String medicalSymptom = '/medical-symptom';

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
    // GoRoute(
    //   path: RouteName.cage,
    //   builder: (context, state) {
    //     final params = state.extra as Map<String, dynamic>;
    //     final cageId = params['cageId'] as String;
    //     return CageScreen(cageId: cageId);
    //   },
    // ),
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
    GoRoute(
      path: RouteName.growthStageDetail,
      builder: (context, state) {
        final params = state.extra as Map<String, dynamic>;
        final growthStageDetail =
            params['growthStageDetail'] as GrowthStageDetail;
        return GrowthStageScreen(growthStageDetail: growthStageDetail);
      },
    ),
    GoRoute(
      path: RouteName.mergedFarmingBatch,
      builder: (context, state) {
        final params = state.extra as Map<String, dynamic>;
        final mergedFarmingBatch =
            params['mergedFarmingBatch'] as List<MergedFarmingBatchDetailsDto>;
        return MergedFarmingBatchScreen(mergedFarmingBatch: mergedFarmingBatch);
      },
    ),
    GoRoute(
      path: RouteName.reportFarmingBatch,
      builder: (context, state) {
        final params = state.extra as Map<String, dynamic>;
        final farmingBatchId = params['farmingBatchId'] as String;
        return ReportFarmingBatchScreen(farmingBatchId: farmingBatchId);
      },
    ),
    GoRoute(
      path: RouteName.medicalSymptom,
      builder: (context, state) {
        final params = state.extra as Map<String, dynamic>;
        final id = params['id'] as String;
        return MedicalSymptomScreen(id: id);
      },
    ),
    GoRoute(
      path: RouteName.editUserProfile,
      builder: (context, state) {
        return EditUserProfileWidget();
      },
    ),
  ],
);
