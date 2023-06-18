import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {
  const TextFieldLogin({
    super.key,
    required this.controller,
    required this.hintText,
  });
  final TextEditingController controller;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: (const InputDecoration())
          .applyDefaults(Theme.of(context).inputDecorationTheme)
          .copyWith(hintText: hintText),
    );
  }
}
