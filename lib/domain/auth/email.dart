// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'email.freezed.dart';

class Email {
  final Either<ValueFailure<String>, String>? value;

  factory Email(String? input) {
    assert(input != null);
    return Email._(
      validateEmail(input ?? ''),
    );
  }

  const Email._(this.value);

  @override
  String toString() {
    return 'Email : $value';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Email && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

Either<ValueFailure<String>, String> validateEmail(String input) {
  const pattern = r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$';
  if (RegExp(pattern).hasMatch(input)) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidEmail(failureEmail: input));
  }
}

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required String failureEmail,
  }) = invalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required String failureEmail,
  }) = ShortPassword<T>;
}
