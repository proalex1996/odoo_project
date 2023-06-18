import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_auth/google_auth.dart';
import 'package:odoo_project/domain/auth/auth_failure.dart';
import 'package:odoo_project/domain/auth/i_auth_facade.dart';
import 'package:odoo_project/domain/auth/value_objects.dart';

class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleAuth _googleAuth;
  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleAuth,
  );
  @override
  Future<Either<AuthFailure, Unit>> registerWithEaP({
    required EmailAddress email,
    required Password password,
  }) {
    final String emailAdress = email.value.right;
    final String pass = password.value.right;
    _firebaseAuth.createUserWithEmailAndPassword(
      email: emailAdress,
      password: pass,
    );
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEaP({
    required EmailAddress email,
    required Password password,
  }) async {
    final String emailAdress = email.value.right;
    final String pass = password.value.right;
    _firebaseAuth.signInWithEmailAndPassword(
      email: emailAdress,
      password: pass,
    );
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    _googleAuth.signIn(
        '751065553631-rnbbo738dep3eis3u598g06mjpjjlfir.apps.googleusercontent.com');
    throw UnimplementedError();
  }
}
