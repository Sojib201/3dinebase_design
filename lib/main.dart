import 'package:action_panel/bloc/login_bloc.dart';
import 'package:action_panel/panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'login_screen.dart';
import 'order_screen.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('dm-path');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(),
        )
      ],
      child: ScreenUtilInit(
        designSize: const Size(2560, 1600),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            //home: LoginScreen(),
            //home: ActionPanel(),
            home: OrderScreen(),
          );
        },
      ),
    );
  }
}
