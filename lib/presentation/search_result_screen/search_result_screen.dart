import '../search_result_screen/widgets/searchresult_item_widget.dart';
import 'controller/search_result_controller.dart';
import 'models/searchresult_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';
import 'package:raj_singh_s_application3/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchResultScreen extends GetWidget<SearchResultController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 15,
            right: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomSearchView(
                focusNode: FocusNode(),
                controller: controller.searchController,
                hintText: "lbl_comedy".tr,
                margin: getMargin(
                  left: 1,
                ),
                padding: SearchViewPadding.PaddingT16,
                prefix: Container(
                  margin: getMargin(
                    left: 16,
                    top: 13,
                    right: 20,
                    bottom: 13,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSearch,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    50,
                  ),
                ),
                suffix: Container(
                  padding: getPadding(
                    all: 7,
                  ),
                  margin: getMargin(
                    left: 30,
                    top: 13,
                    right: 16,
                    bottom: 13,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA70063,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        11,
                      ),
                    ),
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.img0c2c6f25a3334d8595d91f22e636033f,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    50,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 24,
                ),
                child: Text(
                  "msg_results_for_co".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular14WhiteA700,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 14,
                ),
                child: Obx(
                  () => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: getVerticalSize(
                        141,
                      ),
                      crossAxisCount: 3,
                      mainAxisSpacing: getHorizontalSize(
                        20,
                      ),
                      crossAxisSpacing: getHorizontalSize(
                        20,
                      ),
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.searchResultModelObj.value
                        .searchresultItemList.value.length,
                    itemBuilder: (context, index) {
                      SearchresultItemModel model = controller
                          .searchResultModelObj
                          .value
                          .searchresultItemList
                          .value[index];
                      return SearchresultItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
