// ignore_for_file: unused_local_variable

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:odoo_project/common/resource/values_manager.dart';
import 'package:odoo_project/modules/presentation/auth/login_view.dart';
import 'package:odoo_project/modules/presentation/home/home_view.dart';
import 'package:odoo_project/modules/presentation/init/init_view.dart';

part 'router_path.dart';

class RouteBuilder {
  static Route<dynamic> route(RouteSettings settings) {
    /// Custom page route with slide right animation
    return PageRouteBuilder(
      pageBuilder: (BuildContext context,
          Animation<double> animation, //
          Animation<double> secondaryAnimation) {
        final args = settings.arguments;
        if (kDebugMode) {
          print(settings.name);
        }

        switch (settings.name) {
          case RouterPath.home:
            return const HomeView();
          case RouterPath.init:
            return const InitView();
          case RouterPath.login:
            return LoginView();
          default:
            return unDefinedRoute();
        }
      },
      transitionsBuilder: (BuildContext context,
          Animation<double> animation, //
          Animation<double> secondaryAnimation,
          Widget child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: DurationConstant.d150),
      reverseTransitionDuration:
          const Duration(milliseconds: DurationConstant.d150),
      maintainState: true,
    );
  }

  static unDefinedRoute() {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: const Center(child: Text("")),
    );
  }
}
