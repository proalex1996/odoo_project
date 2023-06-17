import 'package:either_dart/either.dart';
import 'package:odoo_project/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateEmailAdress(String input) {
  const pattern = r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$';
  if (RegExp(pattern).hasMatch(input)) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidEmail(failureEmail: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidEmail(failureEmail: input));
  }
}
