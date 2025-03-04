import 'package:data_layer/data_layer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm_admin/src/core/common/cubits/theme_cubit.dart';
import 'package:smart_farm_admin/src/core/network/http_client.dart';
import 'package:smart_farm_admin/src/core/router.dart';
import 'package:smart_farm_admin/src/core/theme/theme.dart';
import 'package:smart_farm_admin/src/core/theme/util.dart';
import 'package:smart_farm_admin/src/viewmodel/index.dart';

/// The Widget that configures your application.
class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Roboto", "Roboto");
    MaterialTheme theme = MaterialTheme(textTheme);

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) =>
              AuthRepository(authApiClient: AuthApiClient(dio: dio)),
        ),
        RepositoryProvider(
          create: (context) =>
              TaskRepository(apiClient: TaskRemoteData(dio: dio)),
        ),
        RepositoryProvider(
          create: (context) =>
              CageRepository(cageApiClient: CageApiClient(dio: dio)),
        ),
        RepositoryProvider(
          create: (context) =>
              TicketRepository(ticketApiClient: TicketApiClient(dio: dio)),
        ),
        RepositoryProvider(
          create: (context) => WarehouseRepository(
              warehouseApiClient: WarehouseApiClient(dio: dio)),
        ),
        RepositoryProvider(
          create: (context) => FarmingCycleRepository(
              farmingCycleApiClient: FarmingCycleApiClient(dio: dio)),
        ),
        RepositoryProvider(
          create: (context) =>
              UserRepository(userApiClient: UserApiClient(dio: dio)),
        ),
        RepositoryProvider(
          create: (context) =>
              ReportRepository(reportApiClient: ReportApiClient(dio: dio)),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ThemeCubit()),
          BlocProvider(
              create: (context) =>
                  AuthBloc(authRepository: context.read<AuthRepository>())),
          BlocProvider(
              create: (context) =>
                  TaskCubit(taskRepository: context.read<TaskRepository>())),
          BlocProvider(
              create: (context) =>
                  CageCubit(cageRepository: context.read<CageRepository>())),
          BlocProvider(
              create: (context) => TicketCubit(
                  ticketRepository: context.read<TicketRepository>())),
          BlocProvider(
              create: (context) => WarehouseCubit(
                  warehouseRepository: context.read<WarehouseRepository>())),
          BlocProvider(
              create: (context) => FarmingCycleCubit(
                  farmingCycleRepository:
                      context.read<FarmingCycleRepository>())),
          BlocProvider(
              create: (context) =>
                  UserBloc(userRepository: context.read<UserRepository>())),
          BlocProvider(
              create: (context) => ReportCubit(
                  reportRepository: context.read<ReportRepository>()))
        ],
        child: BlocBuilder<ThemeCubit, bool>(
          builder: (context, themeMode) {
            return MaterialApp.router(
              theme: themeMode == true ? theme.dark() : theme.light(),
              routerConfig: router,
            );
          },
        ),
      ),
    );
  }
}
