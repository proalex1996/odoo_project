// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:odoo_project/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;
  UnexpectedValueError({
    required this.valueFailure,
  });
  @override
  String toString() {
    const explantion = "Encountered a ValueFailure at an unrecoverable point.";
    return Error.safeToString(
        '$explantion Terminating. Failure war: $valueFailure');
  }
}
