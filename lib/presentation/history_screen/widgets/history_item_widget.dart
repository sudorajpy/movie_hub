import '../controller/history_controller.dart';
import '../models/history_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class HistoryItemWidget extends StatelessWidget {
  HistoryItemWidget(this.historyItemModelObj, {this.onTapImgOverflowmenu});

  HistoryItemModel historyItemModelObj;

  var controller = Get.find<HistoryController>();

  VoidCallback? onTapImgOverflowmenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 10,
        bottom: 10,
      ),
      decoration: AppDecoration.cardBg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle12103112x1128,
            height: getSize(
              112,
            ),
            width: getSize(
              112,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                15,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 4,
              bottom: 4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        154,
                      ),
                      child: Obx(
                        () => Text(
                          historyItemModelObj.mysteryofMuyeTxt.value,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular12WhiteA700,
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgOption,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        left: 6,
                        bottom: 10,
                      ),
                      onTap: () {
                        onTapImgOverflowmenu?.call();
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 9,
                  ),
                  child: Obx(
                    () => Text(
                      historyItemModelObj.actionAdventureOneTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12Bluegray300,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 26,
                  ),
                  child: Row(
                    children: [
                      Obx(
                        () => Text(
                          historyItemModelObj.k20532Txt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular10Bluegray300,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgVector106BlueGray300,
                        height: getVerticalSize(
                          10,
                        ),
                        width: getHorizontalSize(
                          1,
                        ),
                        margin: getMargin(
                          left: 8,
                          top: 3,
                          bottom: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                        ),
                        child: Obx(
                          () => Text(
                            historyItemModelObj.filesizeTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular10Bluegray300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
