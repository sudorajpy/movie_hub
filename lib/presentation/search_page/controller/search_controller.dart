import 'package:raj_singh_s_application3/core/app_export.dart';import 'package:raj_singh_s_application3/presentation/search_page/models/search_model.dart';import 'package:flutter/material.dart';class SearchController extends GetxController {SearchController(this.searchModelObj);

TextEditingController searchController = TextEditingController();

Rx<SearchModel> searchModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
