import '../controller/search_result_controller.dart';
import '../models/searchresult_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class SearchresultItemWidget extends StatelessWidget {
  SearchresultItemWidget(this.searchresultItemModelObj);

  SearchresultItemModel searchresultItemModelObj;

  var controller = Get.find<SearchResultController>();

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
