import 'controller/logout_controller.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';
import 'package:raj_singh_s_application3/widgets/custom_button.dart';

class LogoutDialog extends StatelessWidget {
  LogoutDialog(this.controller);

  LogoutController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        325,
      ),
      padding: getPadding(
        left: 17,
        top: 34,
        right: 17,
        bottom: 34,
      ),
      decoration: AppDecoration.fillBluegray800.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgVolume99x99,
            height: getSize(
              98,
            ),
            width: getSize(
              98,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 22,
            ),
            child: Text(
              "msg_are_you_sure_yo".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium18,
            ),
          ),
          CustomButton(
            height: getVerticalSize(
              50,
            ),
            text: "lbl_no".tr,
            margin: getMargin(
              left: 14,
              top: 33,
              right: 14,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 28,
              bottom: 58,
            ),
            child: Text(
              "lbl_yes".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular16,
            ),
          ),
        ],
      ),
    );
  }
}
