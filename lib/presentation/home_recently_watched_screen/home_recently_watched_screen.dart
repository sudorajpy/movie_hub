import '../home_recently_watched_screen/widgets/listall1_item_widget.dart';
import '../home_recently_watched_screen/widgets/listrectangle1_item_widget.dart';
import '../home_recently_watched_screen/widgets/listrectanglesix_item_widget.dart';
import '../home_recently_watched_screen/widgets/sliderrectangleten_item_widget.dart';
import 'controller/home_recently_watched_controller.dart';
import 'models/listall1_item_model.dart';
import 'models/listrectangle1_item_model.dart';
import 'models/listrectanglesix_item_model.dart';
import 'models/sliderrectangleten_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:raj_singh_s_application3/core/app_export.dart';
import 'package:raj_singh_s_application3/presentation/downloaded_tab_container_page/downloaded_tab_container_page.dart';
import 'package:raj_singh_s_application3/presentation/home_page/home_page.dart';
import 'package:raj_singh_s_application3/presentation/profile_page/profile_page.dart';
import 'package:raj_singh_s_application3/presentation/saved_page/saved_page.dart';
import 'package:raj_singh_s_application3/presentation/search_page/search_page.dart';
import 'package:raj_singh_s_application3/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeRecentlyWatchedScreen
    extends GetWidget<HomeRecentlyWatchedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => CarouselSlider.builder(
                    options: CarouselOptions(
                      height: getVerticalSize(
                        297,
                      ),
                      initialPage: 0,
                      autoPlay: true,
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        controller.silderIndex.value = index;
                      },
                    ),
                    itemCount: controller.homeRecentlyWatchedModelObj.value
                        .sliderrectangletenItemList.value.length,
                    itemBuilder: (context, index, realIndex) {
                      SliderrectangletenItemModel model = controller
                          .homeRecentlyWatchedModelObj
                          .value
                          .sliderrectangletenItemList
                          .value[index];
                      return SliderrectangletenItemWidget(
                        model,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 10,
                  ),
                  child: Text(
                    "lbl_last_watched".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium14WhiteA700,
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    171,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      padding: getPadding(
                        left: 16,
                        top: 11,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            10,
                          ),
                        );
                      },
                      itemCount: controller.homeRecentlyWatchedModelObj.value
                          .listrectanglesixItemList.value.length,
                      itemBuilder: (context, index) {
                        ListrectanglesixItemModel model = controller
                            .homeRecentlyWatchedModelObj
                            .value
                            .listrectanglesixItemList
                            .value[index];
                        return ListrectanglesixItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 24,
                  ),
                  child: Text(
                    "lbl_categories".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsSemiBold16,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: getVerticalSize(
                      41,
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
                              8,
                            ),
                          );
                        },
                        itemCount: controller.homeRecentlyWatchedModelObj.value
                            .listall1ItemList.value.length,
                        itemBuilder: (context, index) {
                          Listall1ItemModel model = controller
                              .homeRecentlyWatchedModelObj
                              .value
                              .listall1ItemList
                              .value[index];
                          return Listall1ItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 17,
                      right: 17,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_most_popular".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold16,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_see_all".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular12WhiteA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: getVerticalSize(
                      185,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        padding: getPadding(
                          left: 16,
                          top: 7,
                        ),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              15,
                            ),
                          );
                        },
                        itemCount: controller.homeRecentlyWatchedModelObj.value
                            .listrectangle1ItemList.value.length,
                        itemBuilder: (context, index) {
                          Listrectangle1ItemModel model = controller
                              .homeRecentlyWatchedModelObj
                              .value
                              .listrectangle1ItemList
                              .value[index];
                          return Listrectangle1ItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
