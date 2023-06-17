import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odoo_project/common/resource/assets_manager.dart';
import 'package:odoo_project/common/resource/colors_manager.dart';
import 'package:odoo_project/common/resource/values_manager.dart';
import 'package:odoo_project/helper/double_helper.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _signIn() {
    String email = _emailController.text;
    String password = _passwordController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(AppPadding.p16.getSize(context)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(ImageAssets.logo),
            SizedBox(height: AppSize.s16.getSize(context)),
            TextField(
              controller: _emailController,
              decoration: (const InputDecoration())
                  .applyDefaults(Theme.of(context).inputDecorationTheme)
                  .copyWith(
                    label: Icon(
                      Icons.mail,
                      color: ColorsManager.color8E8E93,
                    ),
                  ),
            ),
            SizedBox(height: AppSize.s16.getSize(context)),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                label: Icon(
                  Icons.lock,
                  color: ColorsManager.color8E8E93,
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: AppSize.s16.getSize(context)),
            ElevatedButton(
              onPressed: _signIn,
              style: Theme.of(context).elevatedButtonTheme.style,
              child: const Text(
                'Sign In',
              ),
            ),
            SizedBox(height: AppSize.s30.getSize(context)),
          ],
        ),
      ),
    );
  }
}
