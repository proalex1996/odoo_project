import 'package:flutter/material.dart';
import 'package:odoo_project/common/themes/themes_manager.dart';

class TextFieldLogin extends StatelessWidget {
  const TextFieldLogin({
    super.key,
    required this.onChanged,
    required this.hintText,
  });
  final String hintText;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: (const InputDecoration())
          .applyDefaults(context.theme.inputDecorationTheme)
          .copyWith(hintText: hintText),
    );
  }
}
