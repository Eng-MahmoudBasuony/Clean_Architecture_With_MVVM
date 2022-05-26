import 'dart:async';

import 'package:clean_architecture_with_mvvm/presentation/resources/assets_manager.dart';
import 'package:clean_architecture_with_mvvm/presentation/resources/color_manager.dart';
import 'package:clean_architecture_with_mvvm/presentation/resources/constants_manager.dart';
import 'package:flutter/material.dart';
import '../resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
   Timer? _timer;


  @override
  void initState() {
    _startDelay();
   super.initState();

  }

  _startDelay(){
     _timer =  Timer( const Duration(seconds: ConstantsApp.splashDelay), (){
       Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
     });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: Image(
          image: AssetImage(ImageAssets.splashLogo),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
}
