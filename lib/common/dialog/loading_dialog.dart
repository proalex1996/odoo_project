import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/gifs/loading.zip'),
    );
  }
}
