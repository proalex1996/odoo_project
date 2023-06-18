import 'package:flutter/material.dart';
import 'package:odoo_project/common/resource/colors_manager.dart';
import 'package:odoo_project/common/resource/fonts_manager.dart';
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

  static Color _getShapeColor(Set<MaterialState> states) {
    return ColorsManager.colorFFFFFF;
  }

  static TextStyle _getTextButtonColor(Set<MaterialState> states) {
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

  static Size _getMinimumSize(Set<MaterialState> states) {
    return const Size(
      AppSize.s200,
      AppSize.s45,
    );
  }

  static Size _getMaximumSize(Set<MaterialState> states) {
    return const Size(
      AppSize.sMax,
      AppSize.sMax,
    );
  }

  static TextStyle _getTextStyleLabelLarge(Set<MaterialState> states) {
    return TextStyle(
      color: ColorsManager.colorFFFFFF,
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w800,
      fontSize: FontSize.s24,
    );
  }

  static TextStyle _getTextStyleBodyLarge(Set<MaterialState> states) {
    return TextStyle(
      color: ColorsManager.colorFFFFFF,
      fontFamily: 'OpenSans',
      fontSize: FontSize.s18,
    );
  }

  static TextStyle _getTextStyleSubtitle(Set<MaterialState> states) {
    return TextStyle(
      color: ColorsManager.color8E8E93,
      fontFamily: 'OpenSans',
      fontSize: FontSize.s14,
    );
  }

  static OutlinedBorder _getOutlinedButtonBorder(Set<MaterialState> states) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
      side: BorderSide(
        color: ColorsManager.colorPrimary,
      ),
    );
  }

  static ThemeData theme = ThemeData(
    primaryColorLight: ColorsManager.colorFFFFFF,
    fontFamily: 'OpenSans',
    secondaryHeaderColor: ColorsManager.color2F394E,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonTheme: ButtonThemeData(
      height: AppSize.s42,
      minWidth: AppSize.s60,
      textTheme: ButtonTextTheme.accent,
      buttonColor: ColorsManager.colorPrimary,
    ),
    textTheme: TextTheme(
      labelLarge: MaterialStateTextStyle.resolveWith(_getTextStyleLabelLarge),
      bodyLarge: MaterialStateTextStyle.resolveWith(_getTextStyleBodyLarge),
      titleSmall: MaterialStateTextStyle.resolveWith(_getTextStyleSubtitle),
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
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.resolveWith(_getMinimumSize),
        backgroundColor: MaterialStateProperty.resolveWith(_getShapeColor),
        maximumSize: MaterialStateProperty.resolveWith(_getMaximumSize),
        textStyle: MaterialStateTextStyle.resolveWith(_getTextButtonColor),
        shape: MaterialStateProperty.resolveWith(_getOutlinedButtonBorder),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.resolveWith(_getMinimumSize),
        backgroundColor: MaterialStateProperty.resolveWith(_getBackgroundColor),
        maximumSize: MaterialStateProperty.resolveWith(_getMaximumSize),
        textStyle: MaterialStateTextStyle.resolveWith(_getTextButtonColor),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsManager.colorFFFFFF,
      elevation: 0,
      iconTheme: IconThemeData(
        color: ColorsManager.colorFFFFFF,
        size: AppSize.s16,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
        .copyWith(background: ColorsManager.colorFFFFFF),
  );
}
