import 'package:clean_architecture_with_mvvm/presentation/resources/font_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontFamily: FontConstants.fontFamily,
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}

// light style
TextStyle getLightStyle({double fontSize = FontSize.s12, required color}) {
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}

// regular style
TextStyle getRegularStyle({double fontSize = FontSize.s12, required color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

// medium style
TextStyle getMediumStyle({double fontSize = FontSize.s12, required color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

// bold style
TextStyle getBoldStyle({double fontSize = FontSize.s12, required color}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}

//semiBold
TextStyle getSemiBoldStyle({double fontSize = FontSize.s12, required color}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}
