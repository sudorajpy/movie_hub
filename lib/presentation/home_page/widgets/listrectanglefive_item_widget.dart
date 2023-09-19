import '../controller/home_controller.dart';
import '../models/listrectanglefive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ListrectanglefiveItemWidget extends StatelessWidget {
  ListrectanglefiveItemWidget(this.listrectanglefiveItemModelObj);

  ListrectanglefiveItemModel listrectanglefiveItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle5178x1242,
        height: getVerticalSize(
          178,
        ),
        width: getHorizontalSize(
          124,
        ),
        radius: BorderRadius.circular(
          getHorizontalSize(
            10,
          ),
        ),
        margin: getMargin(
          right: 15,
        ),
      ),
    );
  }
}
