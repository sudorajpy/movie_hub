import 'package:raj_singh_s_application3/core/app_export.dart';import 'package:raj_singh_s_application3/presentation/choose_plan_screen/models/choose_plan_model.dart';import 'package:flutter/material.dart';class ChoosePlanController extends GetxController {TextEditingController haveavouchercodeController = TextEditingController();

Rx<ChoosePlanModel> choosePlanModelObj = ChoosePlanModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); haveavouchercodeController.dispose(); } 
 }
