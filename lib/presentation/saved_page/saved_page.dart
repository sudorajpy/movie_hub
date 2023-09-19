import '../saved_page/widgets/saved_item_widget.dart';
import 'controller/saved_controller.dart';
import 'models/saved_item_model.dart';
import 'models/saved_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';

class SavedPage extends StatelessWidget {
  SavedController controller = Get.put(SavedController(SavedModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlack900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(
                      left: 25,
                      top: 11,
                      right: 25,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "lbl_saved".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18,
                            ),
                            Padding(
                              padding: getPadding(
                                left: 95,
                                top: 8,
                              ),
                              child: Text(
                                "lbl_delete".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular12WhiteA700,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: getPadding(
                            top: 35,
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
                              itemCount: controller.savedModelObj.value
                                  .savedItemList.value.length,
                              itemBuilder: (context, index) {
                                SavedItemModel model = controller.savedModelObj
                                    .value.savedItemList.value[index];
                                return SavedItemWidget(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
