import 'package:raj_singh_s_application3/core/app_export.dart';
import 'package:raj_singh_s_application3/presentation/downloaded_tab_container_page/models/downloaded_tab_container_model.dart';
import 'package:flutter/material.dart';

class DownloadedTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  DownloadedTabContainerController(this.downloadedTabContainerModelObj);

  Rx<DownloadedTabContainerModel> downloadedTabContainerModelObj;

  late TabController tabController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
