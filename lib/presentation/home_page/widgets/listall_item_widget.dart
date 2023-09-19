import '../controller/home_controller.dart';
import '../models/listall_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ListallItemWidget extends StatelessWidget {
  ListallItemWidget(this.listallItemModelObj);

  ListallItemModel listallItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: getHorizontalSize(
          81,
        ),
        margin: getMargin(
          right: 8,
        ),
        padding: getPadding(
          left: 30,
          top: 4,
          right: 33,
          bottom: 4,
        ),
        decoration: AppDecoration.txtStyle.copyWith(
          borderRadius: BorderRadiusStyle.txtCircleBorder14,
        ),
        child: Obx(
          () => Text(
            listallItemModelObj.allTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsRegular12WhiteA700,
          ),
        ),
      ),
    );
  }
}
