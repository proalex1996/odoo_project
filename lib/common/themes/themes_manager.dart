import 'package:flutter/material.dart';
import 'package:odoo_project/common/resource/colors_manager.dart';
import 'package:odoo_project/common/resource/values_manager.dart';

class Themes {
  static Color _getBackgroundColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return ColorsManager.colorFFFFFF;
    }
    return ColorsManager.colorPrimary;
  }

  static TextStyle _getForegroundColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return TextStyle(color: ColorsManager.colorPrimary);
    }
    return TextStyle(color: ColorsManager.colorFFFFFF);
  }

  static ThemeData theme = ThemeData(
    primaryColorLight: ColorsManager.colorFFFFFF,
    fontFamily: 'OpenSans',
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonTheme: ButtonThemeData(
      height: AppSize.s42,
      minWidth: AppSize.s60,
      buttonColor: ColorsManager.colorPrimary,
    ),
    textTheme: TextTheme(
      labelLarge: MaterialStateTextStyle.resolveWith(_getForegroundColor),
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.colorPrimary,
        ),
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide(),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(_getBackgroundColor),
      ),
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: ColorsManager.colorFFFFFF,
        elevation: 0,
        iconTheme: IconThemeData(
          color: ColorsManager.colorFFFFFF,
          size: 16,
        )),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
        .copyWith(background: ColorsManager.colorFFFFFF),
  );
}
