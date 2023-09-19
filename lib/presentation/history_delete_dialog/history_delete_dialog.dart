import 'controller/history_delete_controller.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';
import 'package:raj_singh_s_application3/widgets/custom_button.dart';

class HistoryDeleteDialog extends StatelessWidget {
  HistoryDeleteDialog(this.controller);

  HistoryDeleteController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        325,
      ),
      padding: getPadding(
        left: 31,
        top: 34,
        right: 31,
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
            svgPath: ImageConstant.imgTrash98x98,
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
              "lbl_are_you_sure".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium18,
            ),
          ),
          Container(
            width: getHorizontalSize(
              234,
            ),
            margin: getMargin(
              left: 14,
              top: 7,
              right: 14,
            ),
            child: Text(
              "msg_by_doing_this2".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtPoppinsRegular12WhiteA700a2,
            ),
          ),
          CustomButton(
            height: getVerticalSize(
              50,
            ),
            text: "lbl_cancel".tr,
            margin: getMargin(
              top: 34,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 28,
              bottom: 12,
            ),
            child: Text(
              "lbl_delete".tr,
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
