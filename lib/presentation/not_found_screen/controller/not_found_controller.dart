import 'package:raj_singh_s_application3/core/app_export.dart';
import 'package:raj_singh_s_application3/presentation/not_found_screen/models/not_found_model.dart';
import 'package:raj_singh_s_application3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class NotFoundController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<NotFoundModel> notFoundModelObj = NotFoundModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
