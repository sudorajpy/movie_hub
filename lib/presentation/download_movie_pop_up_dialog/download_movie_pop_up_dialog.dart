import 'controller/download_movie_pop_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';
import 'package:raj_singh_s_application3/widgets/custom_button.dart';
import 'package:raj_singh_s_application3/widgets/custom_checkbox.dart';

class DownloadMoviePopUpDialog extends StatelessWidget {
  DownloadMoviePopUpDialog(this.controller);

  DownloadMoviePopUpController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        325,
      ),
      padding: getPadding(
        left: 30,
        top: 34,
        right: 30,
        bottom: 34,
      ),
      decoration: AppDecoration.fillBluegray800.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgFloatingicon,
            height: getSize(
              84,
            ),
            width: getSize(
              84,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                top: 19,
              ),
              child: Text(
                "lbl_download_file".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular20,
              ),
            ),
          ),
          Obx(
            () => CustomCheckbox(
              text: "lbl_height_1080p".tr,
              value: controller.isCheckbox.value,
              margin: getMargin(
                top: 35,
              ),
              fontStyle: CheckboxFontStyle.PoppinsMedium12WhiteA700,
              onChange: (value) {
                controller.isCheckbox.value = value;
              },
            ),
          ),
          Obx(
            () => CustomCheckbox(
              text: "lbl_mid_720p".tr,
              value: controller.isCheckbox1.value,
              margin: getMargin(
                top: 15,
              ),
              fontStyle: CheckboxFontStyle.PoppinsRegular12WhiteA700a2_1,
              onChange: (value) {
                controller.isCheckbox1.value = value;
              },
            ),
          ),
          Obx(
            () => CustomCheckbox(
              text: "lbl_low_360p".tr,
              value: controller.isCheckbox2.value,
              margin: getMargin(
                top: 15,
              ),
              fontStyle: CheckboxFontStyle.PoppinsRegular12WhiteA700a2_1,
              onChange: (value) {
                controller.isCheckbox2.value = value;
              },
            ),
          ),
          CustomButton(
            height: getVerticalSize(
              50,
            ),
            text: "lbl_download".tr,
            margin: getMargin(
              left: 22,
              top: 36,
              right: 22,
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
