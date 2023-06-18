// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:odoo_project/common/route/nav_service.dart';
import 'package:odoo_project/common/route/router_builder.dart';
import 'package:odoo_project/common/themes/themes_manager.dart';
import 'package:odoo_project/infrastructure/di/di.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Odoo",
        theme: Themes.theme,
        onGenerateRoute: RouteBuilder.route,
        initialRoute: RouterPath.initialRoute,
        navigatorKey: instance<NavService>().navKey,
      ),
    );
  }
}
