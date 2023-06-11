import 'package:flutter/material.dart';
import 'package:odoo_project/common/resource/colors_manager.dart';

class Themes {
  static ThemeData theme = ThemeData(
    primaryColorLight: ColorsManager.colorFFFFFF,
    fontFamily: 'OpenSans',
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonTheme: ButtonThemeData(
      height: 42,
      buttonColor: ColorsManager.colorPrimary,
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: ColorsManager.colorFFFFFF,
        elevation: 0,
        iconTheme: IconThemeData(
          color: ColorsManager.colorFFFFFF,
          size: 16,
        )),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
        .copyWith(background: ColorsManager.colorFFFFFF),
  );
}
