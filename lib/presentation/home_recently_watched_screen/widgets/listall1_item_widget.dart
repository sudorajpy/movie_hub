import '../controller/home_recently_watched_controller.dart';
import '../models/listall1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class Listall1ItemWidget extends StatelessWidget {
  Listall1ItemWidget(this.listall1ItemModelObj);

  Listall1ItemModel listall1ItemModelObj;

  var controller = Get.find<HomeRecentlyWatchedController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
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
              listall1ItemModelObj.allTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular12WhiteA700,
            ),
          ),
        ),
      ),
    );
  }
}
