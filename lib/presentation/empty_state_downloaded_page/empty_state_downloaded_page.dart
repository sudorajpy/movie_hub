import 'controller/empty_state_downloaded_controller.dart';
import 'models/empty_state_downloaded_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';

class EmptyStateDownloadedPage extends StatelessWidget {
  EmptyStateDownloadedController controller =
      Get.put(EmptyStateDownloadedController(EmptyStateDownloadedModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 59,
                    top: 115,
                    right: 59,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgMaskgroupGray40001184x184,
                        height: getSize(
                          184,
                        ),
                        width: getSize(
                          184,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 31,
                        ),
                        child: Text(
                          "lbl_no_videos_yet".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium16,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 8,
                        ),
                        child: Text(
                          "msg_let_s_find_and".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular12Bluegray10001,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
