import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gloid/routes/routes..gr.dart';
import 'package:gloid/utils/materialColorGenerator.dart';

import 'bloc/navigation_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationBloc>(
          create: (BuildContext context) => NavigationBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Gloid App',
        theme: ThemeData(
          fontFamily: 'Atkinson',
          // textTheme: TextTheme().apply(
          //   bodyColor: Colors.white,
          //   displayColor: Colors.white,
          // ),
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.white),
          ),
          primarySwatch: createMaterialColor(Color(0xFF0008C8)),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        builder: ExtendedNavigator.builder(
          name: "mainRouter",
          router: AppRouter(),
          initialRoute: Routes.rootScreen,
        ),
      ),
    );
  }
}
