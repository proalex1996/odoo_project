import 'package:flutter/material.dart';
import 'package:odoo_project/app.dart';
import 'package:odoo_project/infrastructure/di/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppModule();
  // await preCacheImages();
  runApp(const MyApp());
}
