import 'package:flutter/material.dart';


class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key); //Default constructor

  //named constructor
  MyApp._internal();

  int appState=0;
  static final MyApp _instance = MyApp._internal(); // singleton or single instance
  factory MyApp() => _instance; //factory



  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//------- for test only
class Test extends StatelessWidget {



  updateAppState(){
    MyApp().appState=11;
  }

  getAppState2(){
  print(MyApp().appState); //11
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class Test2 extends StatelessWidget {



  getAppState2(){
    print(MyApp().appState); //11
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
