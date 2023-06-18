import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odoo_project/common/listener/listener.dart';
import 'package:odoo_project/common/resource/assets_manager.dart';
import 'package:odoo_project/common/resource/colors_manager.dart';
import 'package:odoo_project/common/resource/fonts_manager.dart';
import 'package:odoo_project/common/resource/styles_manager.dart';
import 'package:odoo_project/common/resource/values_manager.dart';
import 'package:odoo_project/common/helper/double_helper.dart';

class ErrorDialog extends StatelessWidget {
  final String title;
  final String? message;
  final String? strLeft;
  final String? strRight;
  final String? strCenter;
  final LeftTapListener? leftTapListener;
  final RightTapListener? rightTapListener;
  final SingleTapListener? singleTapListener;
  final PopTapListener? popTapListener;

  const ErrorDialog({
    Key? key,
    required this.title,
    this.message,
    this.strLeft,
    this.strRight,
    this.strCenter,
    this.leftTapListener,
    this.rightTapListener,
    this.singleTapListener,
    this.popTapListener,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppPadding.p8.getSize(context),
        vertical: AppPadding.p32.getSize(context),
      ),
      actionsPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.all(AppPadding.p24.getSize(context)),
      shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(AppSize.s30.getSize(context)))),
      content: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.p24.getSize(context),
                  ),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: getTextBoldStyle(
                      fontSize: FontSize.s20.getSize(context),
                      fontFamily: FontFamily.openSans,
                      color: ColorsManager.color152946,
                    ),
                  ),
                ),
                SizedBox(
                  height: AppSize.s24.getSize(context),
                ),
                SvgPicture.asset(ImageAssets.logo),
                SizedBox(
                    height: message != null
                        ? AppSize.s12.getSize(context)
                        : AppSize.s0),
                Visibility(
                  visible: message != null,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppPadding.p24.getSize(context)),
                    child: Text(
                      message ?? '',
                      textAlign: TextAlign.center,
                      style: getTextRegularStyle(
                        fontSize: FontSize.s15,
                        fontFamily: FontFamily.openSans,
                        color: ColorsManager.color344356,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: AppSize.s15.getSize(context),
                ),
                singleTapListener == null
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p20),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  leftTapListener!(true);
                                },
                                child: Container(
                                  height: AppSize.s60,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: AppPadding.p10,
                                    vertical: AppPadding.p16,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ColorsManager.colorCFCFCF,
                                      width: AppSize.s2,
                                    ),
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s16),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    strLeft ?? '',
                                    textAlign: TextAlign.center,
                                    style: getTextBoldStyle(
                                      fontSize: FontSize.s16,
                                      fontFamily: FontFamily.inter,
                                      color: ColorsManager.color8E8E8E,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: AppSize.s16),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  rightTapListener!(true);
                                },
                                child: Container(
                                  height: AppSize.s60,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: AppPadding.p10,
                                    vertical: AppPadding.p16,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorsManager.colorPrimary,
                                    border: Border.all(
                                      color: ColorsManager.colorPrimary,
                                      width: AppSize.s2,
                                    ),
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s16),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    strRight ?? '',
                                    textAlign: TextAlign.center,
                                    style: getTextBoldStyle(
                                      fontSize: FontSize.s16,
                                      fontFamily: FontFamily.inter,
                                      color: ColorsManager.colorWhite,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p20),
                        child: InkWell(
                          onTap: () {
                            singleTapListener!(true);
                          },
                          child: Container(
                            height: AppSize.s60,
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.p10,
                              vertical: AppPadding.p16,
                            ),
                            decoration: BoxDecoration(
                              color: ColorsManager.colorPrimary,
                              border: Border.all(
                                color: ColorsManager.colorPrimary,
                                width: AppSize.s2,
                              ),
                              borderRadius: BorderRadius.circular(AppSize.s16),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              strCenter ?? '',
                              textAlign: TextAlign.center,
                              style: getTextBoldStyle(
                                fontSize: FontSize.s16,
                                fontFamily: FontFamily.inter,
                                color: ColorsManager.colorWhite,
                              ),
                            ),
                          ),
                        ),
                      ),
              ],
            ),
            Visibility(
              visible: popTapListener != null,
              child: Align(
                alignment: Alignment.topRight,
                child: MaterialButton(
                  onPressed: () {
                    popTapListener!(true);
                  },
                  color: ColorsManager.colorPrimary,
                  textColor: ColorsManager.colorWhite,
                  padding: const EdgeInsets.all(AppPadding.p8),
                  shape: const CircleBorder(),
                  child: const Icon(
                    Icons.close_outlined,
                    size: AppSize.s24,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
