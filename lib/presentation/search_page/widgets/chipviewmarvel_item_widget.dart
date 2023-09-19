import '../models/chipviewmarvel_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewmarvelItemWidget extends StatelessWidget {
  ChipviewmarvelItemWidget(this.chipviewmarvelItemModelObj);

  ChipviewmarvelItemModel chipviewmarvelItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: getPadding(
          right: 26,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewmarvelItemModelObj.marvelTxt.value,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: ColorConstant.whiteA700,
            fontSize: getFontSize(
              12,
            ),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        avatar: CustomImageView(
          svgPath: ImageConstant.imgClock,
          height: getSize(
            14,
          ),
          width: getSize(
            14,
          ),
          margin: getMargin(
            right: 10,
          ),
        ),
        selected: chipviewmarvelItemModelObj.isSelected.value,
        backgroundColor: ColorConstant.gray900,
        selectedColor: ColorConstant.gray900,
        shape: chipviewmarvelItemModelObj.isSelected.value
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: ColorConstant.whiteA70099,
                  width: getHorizontalSize(
                    1,
                  ),
                ),
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    15,
                  ),
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    15,
                  ),
                ),
              ),
        onSelected: (value) {
          chipviewmarvelItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}
