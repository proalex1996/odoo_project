
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:odoo_project/common/resource/assets_manager.dart';
import 'package:odoo_project/common/resource/colors_manager.dart';

class InitView extends StatelessWidget {
  const InitView({super.key});

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
