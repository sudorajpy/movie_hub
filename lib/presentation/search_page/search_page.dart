import '../search_page/widgets/chipviewmarvel_item_widget.dart';
import '../search_page/widgets/list_item_widget.dart';
import '../search_page/widgets/listrectangle2_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/chipviewmarvel_item_model.dart';
import 'models/list_item_model.dart';
import 'models/listrectangle2_item_model.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';
import 'package:raj_singh_s_application3/widgets/custom_search_view.dart';

class SearchPage extends StatelessWidget {
  SearchController controller = Get.put(SearchController(SearchModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlack900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: CustomSearchView(
                      focusNode: FocusNode(),
                      controller: controller.searchController,
                      hintText: "msg_search_by_title".tr,
                      margin: getMargin(
                        left: 16,
                        right: 16,
                      ),
                      alignment: Alignment.center,
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
                      suffix: Padding(
                        padding: EdgeInsets.only(
                          right: getHorizontalSize(
                            15,
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {
                            controller.searchController.clear();
                          },
                          icon: Icon(
                            Icons.clear,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 23,
                    ),
                    child: Text(
                      "lbl_recent_searches".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular14WhiteA700,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 15,
                    ),
                    child: Obx(
                      () => Wrap(
                        runSpacing: getVerticalSize(
                          5,
                        ),
                        spacing: getHorizontalSize(
                          5,
                        ),
                        children: List<Widget>.generate(
                          controller.searchModelObj.value.chipviewmarvelItemList
                              .value.length,
                          (index) {
                            ChipviewmarvelItemModel model = controller
                                .searchModelObj
                                .value
                                .chipviewmarvelItemList
                                .value[index];

                            return ChipviewmarvelItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 25,
                    ),
                    child: Text(
                      "lbl_popular".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular14WhiteA700,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        148,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            left: 16,
                            top: 13,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                10,
                              ),
                            );
                          },
                          itemCount: controller.searchModelObj.value
                              .listrectangle2ItemList.value.length,
                          itemBuilder: (context, index) {
                            Listrectangle2ItemModel model = controller
                                .searchModelObj
                                .value
                                .listrectangle2ItemList
                                .value[index];
                            return Listrectangle2ItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 24,
                    ),
                    child: Text(
                      "msg_recommendations".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular14WhiteA700,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        149,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            left: 16,
                            top: 14,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                10,
                              ),
                            );
                          },
                          itemCount: controller
                              .searchModelObj.value.listItemList.value.length,
                          itemBuilder: (context, index) {
                            ListItemModel model = controller
                                .searchModelObj.value.listItemList.value[index];
                            return ListItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
