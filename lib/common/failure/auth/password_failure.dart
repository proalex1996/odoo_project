import 'package:odoo_project/common/failure/failure.dart';

class InvalidPasswordFailure implements Failure {
  final String failedValue;
  InvalidPasswordFailure({
    required this.failedValue,
  });
}
