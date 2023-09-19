import '../controller/category_comedy_controller.dart';
import '../models/gridrectangle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class GridrectangleItemWidget extends StatelessWidget {
  GridrectangleItemWidget(this.gridrectangleItemModelObj);

  GridrectangleItemModel gridrectangleItemModelObj;

  var controller = Get.find<CategoryComedyController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle12078140x102,
      height: getVerticalSize(
        140,
      ),
      width: getHorizontalSize(
        102,
      ),
      radius: BorderRadius.circular(
        getHorizontalSize(
          10,
        ),
      ),
    );
  }
}
