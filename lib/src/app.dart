import 'package:data_layer/repository/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm_admin/src/core/common/cubit/theme_cubit.dart';
import 'package:smart_farm_admin/src/core/network/http_client.dart';
import 'package:smart_farm_admin/src/core/router.dart';
import 'package:smart_farm_admin/src/core/theme/theme.dart';
import 'package:smart_farm_admin/src/core/theme/util.dart';
import 'package:smart_farm_admin/src/viewmodel/auth/auth_bloc.dart';
import 'package:smart_farm_admin/src/viewmodel/cage/cage_bloc.dart';
import 'package:smart_farm_admin/src/viewmodel/system/system_bloc.dart';
import 'package:smart_farm_admin/src/viewmodel/user/user_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

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
          create:
              (context) =>
                  AuthRepository(authApiClient: AuthApiClient(dio: dio)),
        ),
        RepositoryProvider(
          create:
              (context) =>
                  UserRepository(userApiClient: UserApiClient(dio: dio)),
        ),
        RepositoryProvider(
          create:
              (context) =>
                  CageRepository(cageApiClient: CageApiClient(dio: dio)),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ThemeCubit()),
          BlocProvider(
            create:
                (context) =>
                    AuthBloc(authRepository: context.read<AuthRepository>()),
          ),
          BlocProvider(
            create:
                (context) =>
                    UserBloc(userRepository: context.read<UserRepository>()),
          ),
          BlocProvider(
            create:
                (context) =>
                    CageBloc(cageRepository: context.read<CageRepository>()),
          ),
          BlocProvider(create: (context) => SystemBloc()),
        ],
        child: BlocBuilder<ThemeCubit, bool>(
          builder: (context, themeMode) {
            return MaterialApp.router(
              theme: themeMode == true ? theme.dark() : theme.light(),
              routerConfig: router,
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      ),
    );
  }
}
