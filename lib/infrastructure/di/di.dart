import 'package:get_it/get_it.dart';
import 'package:odoo_project/common/route/nav_service.dart';

final instance = GetIt.instance;
Future<void> initAppModule() async {
  instance.registerLazySingleton<NavService>(
    () => NavService(),
  );
}
