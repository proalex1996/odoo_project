import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required String failureEmail,
  }) = invalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required String failureEmail,
  }) = ShortPassword<T>;
}
