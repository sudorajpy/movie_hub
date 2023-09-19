import '../downloaded_page/widgets/downloaded_item_widget.dart';
import 'controller/downloaded_controller.dart';
import 'models/downloaded_item_model.dart';
import 'models/downloaded_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';

class DownloadedPage extends StatelessWidget {
  DownloadedController controller =
      Get.put(DownloadedController(DownloadedModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 25,
                  top: 22,
                  right: 25,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          16,
                        ),
                      );
                    },
                    itemCount: controller.downloadedModelObj.value
                        .downloadedItemList.value.length,
                    itemBuilder: (context, index) {
                      DownloadedItemModel model = controller.downloadedModelObj
                          .value.downloadedItemList.value[index];
                      return DownloadedItemWidget(
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
