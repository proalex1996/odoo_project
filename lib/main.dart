import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:odoo_project/app.dart';
import 'package:odoo_project/infrastructure/di/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initAppModule();
  runApp(const MyApp());
}
