// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:either_dart/either.dart';
import 'package:odoo_project/domain/core/failures.dart';
import 'package:odoo_project/domain/core/value_objects.dart';
import 'package:odoo_project/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String? input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAdress(input ?? ''),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String? input) {
    assert(input != null);
    return Password._(
      validateEmailAdress(input ?? ''),
    );
  }

  const Password._(this.value);
}
