import 'controller/downloaded_tab_container_controller.dart';
import 'models/downloaded_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';
import 'package:raj_singh_s_application3/presentation/downloaded_page/downloaded_page.dart';
import 'package:raj_singh_s_application3/presentation/downloading_page/downloading_page.dart';

class DownloadedTabContainerPage extends StatelessWidget {
  DownloadedTabContainerController controller = Get.put(
      DownloadedTabContainerController(DownloadedTabContainerModel().obs));

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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 11,
                    ),
                    child: Text(
                      "lbl_download".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      40,
                    ),
                    width: getHorizontalSize(
                      300,
                    ),
                    margin: getMargin(
                      top: 34,
                    ),
                    child: TabBar(
                      controller: controller.tabController,
                      labelColor: ColorConstant.red700,
                      labelStyle: TextStyle(
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                      unselectedLabelColor: ColorConstant.whiteA70087,
                      unselectedLabelStyle: TextStyle(
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                      indicatorColor: ColorConstant.red700,
                      tabs: [
                        Tab(
                          child: Text(
                            "lbl_downloaded".tr,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_downloading".tr,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      574,
                    ),
                    child: TabBarView(
                      controller: controller.tabController,
                      children: [
                        DownloadedPage(),
                        DownloadingPage(),
                      ],
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
