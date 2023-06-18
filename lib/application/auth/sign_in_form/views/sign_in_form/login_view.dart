import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odoo_project/common/helper/double_helper.dart';
import 'package:odoo_project/common/resource/assets_manager.dart';
import 'package:odoo_project/common/resource/values_manager.dart';
import 'package:odoo_project/common/widget/divider_text.dart';
import 'package:odoo_project/application/auth/sign_in_form/views/sign_in_form/widget/text_field.dart';

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
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          padding: EdgeInsets.all(AppPadding.p16.getSize(context)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: AppSize.s100.getSize(context)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.p56.getSize(context)),
                child: SvgPicture.asset(ImageAssets.logo),
              ),
              SizedBox(height: AppSize.s16.getSize(context)),
              TextFieldLogin(
                controller: _emailController,
                hintText: 'Email',
              ),
              SizedBox(height: AppSize.s16.getSize(context)),
              TextFieldLogin(
                controller: _passwordController,
                hintText: 'Password',
              ),
              SizedBox(height: AppSize.s16.getSize(context)),
              ElevatedButton(
                onPressed: _signIn,
                style: Theme.of(context).elevatedButtonTheme.style,
                child: const Text(
                  'LOGIN',
                ),
              ),
              SizedBox(height: AppSize.s15.getSize(context)),
              const HorizontalOrLine(
                label: 'OR',
                height: AppSize.s1,
              ),
              SizedBox(height: AppSize.s15.getSize(context)),
              OutlinedButton(
                onPressed: () {},
                style: Theme.of(context).outlinedButtonTheme.style,
                child: SvgPicture.asset(
                  ImageAssets
                      .googleLogo, // Replace with your own Google logo asset
                  height: AppSize.s20.getSize(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
