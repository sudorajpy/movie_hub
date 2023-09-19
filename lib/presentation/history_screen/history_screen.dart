import '../history_screen/widgets/history_item_widget.dart';import 'controller/history_controller.dart';import 'models/history_item_model.dart';import 'package:flutter/material.dart';import 'package:raj_singh_s_application3/core/app_export.dart';import 'package:raj_singh_s_application3/widgets/app_bar/appbar_iconbutton_1.dart';import 'package:raj_singh_s_application3/widgets/app_bar/appbar_title.dart';import 'package:raj_singh_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:raj_singh_s_application3/presentation/history_delete_dialog/history_delete_dialog.dart';import 'package:raj_singh_s_application3/presentation/history_delete_dialog/controller/history_delete_controller.dart';class HistoryScreen extends GetWidget<HistoryController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.black900, appBar: CustomAppBar(height: getVerticalSize(51), leadingWidth: 60, leading: AppbarIconbutton1(svgPath: ImageConstant.imgArrowleftWhiteA700, margin: getMargin(left: 25, top: 8, bottom: 8), onTap: () {onTapArrowleft4();}), centerTitle: true, title: AppbarTitle(text: "lbl_history".tr)), body: Padding(padding: getPadding(left: 25, top: 23, right: 25), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(16));}, itemCount: controller.historyModelObj.value.historyItemList.value.length, itemBuilder: (context, index) {HistoryItemModel model = controller.historyModelObj.value.historyItemList.value[index]; return HistoryItemWidget(model, onTapImgOverflowmenu: () {onTapImgOverflowmenu();});}))))); } 
onTapImgOverflowmenu() { Get.dialog(AlertDialog(backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: EdgeInsets.only(left: 0), content: HistoryDeleteDialog(Get.put(HistoryDeleteController())))); } 
onTapArrowleft4() { Get.back(); } 
 }
