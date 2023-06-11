import 'package:odoo_project/common/failure/failure.dart';

class InvalidEmailFailure implements Failure {
  final String failedValue;
  InvalidEmailFailure({
    required this.failedValue,
  });
}
