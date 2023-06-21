import 'package:flutter/material.dart';
import 'package:odoo_project/common/resource/values_manager.dart';
import 'package:odoo_project/common/helper/double_helper.dart';
import 'package:odoo_project/common/themes/themes_manager.dart';

class HorizontalOrLine extends StatelessWidget {
  const HorizontalOrLine({
    super.key,
    required this.label,
    required this.height,
  });

  final String label;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
            margin: EdgeInsets.only(
                left: AppMargin.m10.getSize(context),
                right: AppMargin.m15.getSize(context)),
            child: Divider(
              color: context.theme.secondaryHeaderColor,
              height: height,
            )),
      ),
      Text(
        label,
        style: context.theme.textTheme.titleSmall!
            .copyWith(color: context.theme.secondaryHeaderColor),
      ),
      Expanded(
        child: Container(
            margin: EdgeInsets.only(
              left: AppMargin.m15.getSize(context),
              right: AppMargin.m10.getSize(context),
            ),
            child: Divider(
              color: context.theme.secondaryHeaderColor,
              height: height,
            )),
      ),
    ]);
  }
}
