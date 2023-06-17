import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:odoo_project/common/resource/assets_manager.dart';
import 'package:odoo_project/common/resource/colors_manager.dart';
import 'package:odoo_project/common/route/router_builder.dart';

class InitView extends StatefulWidget {
  const InitView({super.key});

  @override
  State<InitView> createState() => _InitViewState();
}

class _InitViewState extends State<InitView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.popAndPushNamed(context, RouterPath.login);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: ColorsManager.colorFFFFFF,
      child: Lottie.asset(
        ImageAssets.loading,
      ),
    );
  }
}
