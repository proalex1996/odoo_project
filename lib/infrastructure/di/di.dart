import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_auth/google_auth.dart';
import 'package:odoo_project/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:odoo_project/common/route/nav_service.dart';
import 'package:odoo_project/domain/auth/i_auth_facade.dart';
import 'package:odoo_project/infrastructure/auth/auth_firebase_facade.dart';

final instance = GetIt.instance;
Future<void> initAppModule() async {
  instance.registerLazySingleton<NavService>(
    () => NavService(),
  );

  instance.registerLazySingleton<FirebaseAuth>(
    () => FirebaseAuth.instance,
  );
  instance.registerLazySingleton<GoogleAuth>(
    () => GoogleAuth(),
  );
  instance.registerLazySingleton<IAuthFacade>(
    () => FirebaseAuthFacade(
      instance(),
      instance(),
    ),
  );
  instance.registerLazySingleton<SignInFormBloc>(
    () => SignInFormBloc(instance()),
  );
}
