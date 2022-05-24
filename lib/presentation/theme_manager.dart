import 'package:clean_architecture_with_mvvm/presentation/color_manager.dart';
import 'package:clean_architecture_with_mvvm/presentation/font_manager.dart';
import 'package:clean_architecture_with_mvvm/presentation/styles_manager.dart';
import 'package:clean_architecture_with_mvvm/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      ///-------- main colors ----------//
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightPrimary,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,
      splashColor: ColorManager.lightPrimary,//ripple effect color
      ///--------- card view theme -----//
      cardTheme: CardTheme(
          color: ColorManager.white,
          shadowColor: ColorManager.grey,
          elevation: AppSize.s4),
      ///--------- app bar theme --------//
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.lightPrimary,
        titleTextStyle: getRegularStyle(fontSize: FontSize.s16,color: ColorManager.white,)
      ),
      ///----------- button theme ---------//
      buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey,
        splashColor: ColorManager.white,
        buttonColor: ColorManager.primary
      ),
     ///---------- elevated Button -------//
     elevatedButtonTheme:   ElevatedButtonThemeData(
       style: ElevatedButton.styleFrom(
         textStyle: getRegularStyle(color: ColorManager.primary,fontSize: FontSize.s17),
         primary: ColorManager.primary,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(AppSize.s12)
         )
       ),
     )


  );
}
