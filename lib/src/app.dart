import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm_admin/src/core/common/cubit/theme_cubit.dart';
import 'package:smart_farm_admin/src/core/router.dart';
import 'package:smart_farm_admin/src/core/theme/theme.dart';
import 'package:smart_farm_admin/src/core/theme/util.dart';

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

    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => ThemeCubit())],
      child: BlocBuilder<ThemeCubit, bool>(
        builder: (context, themeMode) {
          return MaterialApp.router(
            theme: themeMode == true ? theme.dark() : theme.light(),
            routerConfig: router,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
