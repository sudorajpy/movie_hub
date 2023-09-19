import 'controller/empty_state_downloading_controller.dart';
import 'models/empty_state_downloading_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';

class EmptyStateDownloadingPage extends StatelessWidget {
  EmptyStateDownloadingController controller = Get.put(
      EmptyStateDownloadingController(EmptyStateDownloadingModel().obs));

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
                    left: 61,
                    top: 115,
                    right: 57,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgMaskgroup184x184,
                        height: getSize(
                          184,
                        ),
                        width: getSize(
                          184,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 29,
                        ),
                        child: Text(
                          "msg_no_videos_to_do".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium16,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 10,
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
