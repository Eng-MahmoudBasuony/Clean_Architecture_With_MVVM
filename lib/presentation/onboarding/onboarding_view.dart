import 'package:clean_architecture_with_mvvm/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';

import '../resources/strings_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.grey,
         body: Center(child: Text(AppStrings.onBoardingView),),
    );
  }
}
