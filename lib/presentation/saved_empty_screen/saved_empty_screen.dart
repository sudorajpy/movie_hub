import 'controller/saved_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';
import 'package:raj_singh_s_application3/presentation/downloaded_tab_container_page/downloaded_tab_container_page.dart';
import 'package:raj_singh_s_application3/presentation/home_page/home_page.dart';
import 'package:raj_singh_s_application3/presentation/profile_page/profile_page.dart';
import 'package:raj_singh_s_application3/presentation/saved_page/saved_page.dart';
import 'package:raj_singh_s_application3/presentation/search_page/search_page.dart';
import 'package:raj_singh_s_application3/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class SavedEmptyScreen extends GetWidget<SavedEmptyController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 59,
            top: 12,
            right: 59,
            bottom: 12,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_save".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium18,
              ),
              Spacer(),
              CustomImageView(
                svgPath: ImageConstant.imgMaskgroup1,
                height: getSize(
                  184,
                ),
                width: getSize(
                  184,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 30,
                ),
                child: Text(
                  "lbl_not_save".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium16,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                  bottom: 179,
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
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Search:
        return AppRoutes.searchPage;
      case BottomBarEnum.Saved:
        return AppRoutes.savedPage;
      case BottomBarEnum.Downloads:
        return AppRoutes.downloadedTabContainerPage;
      case BottomBarEnum.Me:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.searchPage:
        return SearchPage();
      case AppRoutes.savedPage:
        return SavedPage();
      case AppRoutes.downloadedTabContainerPage:
        return DownloadedTabContainerPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
