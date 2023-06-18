import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:odoo_project/domain/core/errors.dart';
import 'package:odoo_project/domain/core/failures.dart';

/// [id] = indentity - mean ([right]) => [right]
@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  bool isVaid() => value.isRight();

  T getOrCrash() {
    return value.fold(
        (left) => throw UnexpectedValueError(valueFailure: left), id);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'Value : $value';
  }
}
