import 'package:clean_architecture_with_mvvm/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';

import '../presentation/resources/routes_manager.dart';

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key); //Default constructor

  //named constructor
  MyApp._internal();

  static final MyApp _instance =
      MyApp._internal(); // singleton or single instance
  factory MyApp() => _instance; //factory

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
