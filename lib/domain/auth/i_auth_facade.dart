import 'package:dartz/dartz.dart';
import 'package:odoo_project/domain/auth/auth_failure.dart';
import 'package:odoo_project/domain/auth/value_objects.dart';

/// [FirebaseAuth] and [GoogleSignin] method

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEaP({
    required EmailAddress email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEaP({
    required EmailAddress email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
