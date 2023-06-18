import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
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
  }) async {
    final String emailAdress = email.getOrCrash();
    final String pass = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAdress,
        password: pass,
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == "email-already-in-use") {
        return left(
          const AuthFailure.emailAlreadyInUse(),
        );
      } else {
        return left(
          const AuthFailure.serverError(),
        );
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEaP({
    required EmailAddress email,
    required Password password,
  }) async {
    final String emailAdress = email.getOrCrash();
    final String pass = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAdress,
        password: pass,
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == "invalid-email" ||
          e.code == "wrong-password" ||
          e.code == "user-not-found") {
        return left(
          const AuthFailure.invalidEmailAndPasswordCombiation(),
        );
      } else {
        return left(
          const AuthFailure.serverError(),
        );
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleAuth.signIn(
          '751065553631-rnbbo738dep3eis3u598g06mjpjjlfir.apps.googleusercontent.com');
      if (googleUser.isEmpty) {
        return left(const AuthFailure.cancelledByUser());
      }
      String idToken = googleUser['idToken'];
      String accessToken = googleUser['accessToken'];
      final authCredential = GoogleAuthProvider.credential(
        idToken: idToken,
        accessToken: accessToken,
      );
      return _firebaseAuth.signInWithCredential(authCredential).then(
            (value) => right(unit),
          );
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }
}
