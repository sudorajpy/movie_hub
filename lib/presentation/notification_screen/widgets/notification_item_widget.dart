import '../controller/notification_controller.dart';
import '../models/notification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';
import 'package:raj_singh_s_application3/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  NotificationItemWidget(this.notificationItemModelObj);

  NotificationItemModel notificationItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 15,
        top: 13,
        right: 15,
        bottom: 13,
      ),
      decoration: AppDecoration.cardBg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconButton(
            height: 30,
            width: 30,
            margin: getMargin(
              top: 1,
              bottom: 32,
            ),
            variant: IconButtonVariant.FillWhiteA70063,
            padding: IconButtonPadding.PaddingAll4,
            child: CustomImageView(
              svgPath: ImageConstant.imgTicketWhiteA700,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    171,
                  ),
                  child: Obx(
                    () => Text(
                      notificationItemModelObj.durationTxt.value,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12WhiteA700,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 9,
                  ),
                  child: Obx(
                    () => Text(
                      notificationItemModelObj.durationOneTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsLight10,
                    ),
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
