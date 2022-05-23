import 'package:clean_architecture_with_mvvm/presentation/color_manager.dart';
import 'package:clean_architecture_with_mvvm/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      //-------- main colors ----------//
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightPrimary,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,
      //--------- card view theme -----//
      cardTheme: CardTheme(
       color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4
      )

  );
}
