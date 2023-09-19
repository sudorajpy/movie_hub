import '../controller/setting_controller.dart';
import '../models/setting_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';
import 'package:raj_singh_s_application3/widgets/custom_icon_button.dart';
import 'package:raj_singh_s_application3/widgets/custom_switch.dart';

// ignore: must_be_immutable
class SettingItemWidget extends StatelessWidget {
  SettingItemWidget(this.settingItemModelObj);

  SettingItemModel settingItemModelObj;

  var controller = Get.find<SettingController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 10,
      ),
      decoration: AppDecoration.cardBg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 40,
            width: 40,
            variant: IconButtonVariant.SearchBg,
            shape: IconButtonShape.CircleBorder20,
            child: CustomImageView(
              svgPath: ImageConstant.imgNotificationWhiteA700,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
              top: 10,
              bottom: 11,
            ),
            child: Obx(
              () => Text(
                settingItemModelObj.typeTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium12WhiteA700.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.12,
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          Obx(
            () => CustomSwitch(
              margin: getMargin(
                top: 10,
                right: 12,
                bottom: 10,
              ),
              value: settingItemModelObj.isSelectedSwitch.value,
              onChanged: (value) {
                settingItemModelObj.isSelectedSwitch.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
