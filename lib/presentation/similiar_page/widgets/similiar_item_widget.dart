import '../controller/similiar_controller.dart';
import '../models/similiar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class SimiliarItemWidget extends StatelessWidget {
  SimiliarItemWidget(this.similiarItemModelObj);

  SimiliarItemModel similiarItemModelObj;

  var controller = Get.find<SimiliarController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: CustomImageView(
        imagePath: ImageConstant.imgImage1154x108,
        height: getVerticalSize(
          154,
        ),
        width: getHorizontalSize(
          108,
        ),
        radius: BorderRadius.circular(
          getHorizontalSize(
            10,
          ),
        ),
        margin: getMargin(
          right: 12,
        ),
      ),
    );
  }
}
