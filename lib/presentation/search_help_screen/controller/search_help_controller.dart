import 'package:raj_singh_s_application3/core/app_export.dart';import 'package:raj_singh_s_application3/presentation/search_help_screen/models/search_help_model.dart';import 'package:flutter/material.dart';class SearchHelpController extends GetxController {TextEditingController groupController = TextEditingController();

Rx<SearchHelpModel> searchHelpModelObj = SearchHelpModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); groupController.dispose(); } 
 }
