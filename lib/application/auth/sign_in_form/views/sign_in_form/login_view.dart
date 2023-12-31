import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odoo_project/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:odoo_project/common/helper/double_helper.dart';
import 'package:odoo_project/common/resource/assets_manager.dart';
import 'package:odoo_project/common/resource/values_manager.dart';
import 'package:odoo_project/common/themes/themes_manager.dart';
import 'package:odoo_project/common/widget/divider_text.dart';
import 'package:odoo_project/application/auth/sign_in_form/views/sign_in_form/widget/text_field.dart';
import 'package:odoo_project/infrastructure/di/di.dart';

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
    return BlocProvider(
      create: (context) => instance<SignInFormBloc>(),
      child: const SignInForm(),
    );
  }
}

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {},
      builder: (context, state) {
        final bloc = BlocProvider.of<SignInFormBloc>(context);
        return Scaffold(
          body: SingleChildScrollView(
            reverse: true,
            child: Container(
              padding: EdgeInsets.all(AppPadding.p16.getSize(context)),
              child: Form(
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
                      onChanged: (value) => bloc.add(
                        SignInFormEvent.emailChanged(value),
                      ),
                      hintText: 'Email',
                    ),
                    SizedBox(height: AppSize.s16.getSize(context)),
                    TextFieldLogin(
                      hintText: 'Password',
                      onChanged: (value) => bloc.add(
                        SignInFormEvent.passwordChanged(value),
                      ),
                    ),
                    SizedBox(height: AppSize.s16.getSize(context)),
                    ElevatedButton(
                      onPressed: () {},
                      style: context.theme.elevatedButtonTheme.style,
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
                      style: context.theme.outlinedButtonTheme.style,
                      child: SvgPicture.asset(
                        ImageAssets.googleLogo,
                        height: AppSize.s20.getSize(context),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
