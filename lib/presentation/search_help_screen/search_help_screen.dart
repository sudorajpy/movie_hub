import 'controller/search_help_controller.dart';import 'package:flutter/material.dart';import 'package:raj_singh_s_application3/core/app_export.dart';import 'package:raj_singh_s_application3/widgets/app_bar/appbar_iconbutton_1.dart';import 'package:raj_singh_s_application3/widgets/app_bar/appbar_title.dart';import 'package:raj_singh_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:raj_singh_s_application3/widgets/custom_search_view.dart';class SearchHelpScreen extends GetWidget<SearchHelpController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.black900, body: Container(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(141), width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgGroup427318996, height: getVerticalSize(141), width: getHorizontalSize(375), alignment: Alignment.center), Align(alignment: Alignment.topCenter, child: Padding(padding: getPadding(left: 25, top: 8, right: 25), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [CustomAppBar(height: getVerticalSize(35), leadingWidth: 60, leading: AppbarIconbutton1(svgPath: ImageConstant.imgArrowleftWhiteA700, margin: getMargin(left: 25), onTap: () {onTapArrowleft9();}), centerTitle: true, title: AppbarTitle(text: "lbl_help".tr)), CustomSearchView(focusNode: FocusNode(), controller: controller.groupController, hintText: "msg_how_to_subscrib2".tr, margin: getMargin(top: 23), variant: SearchViewVariant.FillWhiteA7004c, fontStyle: SearchViewFontStyle.PoppinsMedium12WhiteA700, prefix: Container(margin: getMargin(left: 18, top: 15, right: 14, bottom: 15), child: CustomImageView(svgPath: ImageConstant.imgSearch)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(50)), suffix: Padding(padding: EdgeInsets.only(right: getHorizontalSize(15)), child: IconButton(onPressed: () {controller.groupController.clear();}, icon: Icon(Icons.clear, color: Colors.grey.shade600))))])))])), Padding(padding: getPadding(left: 25, top: 34), child: Text("lbl_4_answers_found".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium14WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.14)))), Align(alignment: Alignment.center, child: Container(margin: getMargin(left: 25, top: 20, right: 25, bottom: 5), padding: getPadding(left: 20, top: 23, right: 20, bottom: 23), decoration: AppDecoration.cardBg.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [RichText(text: TextSpan(children: [TextSpan(text: "lbl_how_to".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(12), fontFamily: 'Poppins', fontWeight: FontWeight.w500, letterSpacing: getHorizontalSize(0.12))), TextSpan(text: "msg_use_voucher_cod".tr, style: TextStyle(color: ColorConstant.blueGray100, fontSize: getFontSize(12), fontFamily: 'Poppins', fontWeight: FontWeight.w300, letterSpacing: getHorizontalSize(0.12)))]), textAlign: TextAlign.left), CustomImageView(svgPath: ImageConstant.imgArrowrightWhiteA700, height: getSize(9), width: getSize(9), margin: getMargin(left: 121, top: 4, bottom: 3))]), Padding(padding: getPadding(top: 25), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.whiteA70063)), Padding(padding: getPadding(top: 23), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [RichText(text: TextSpan(children: [TextSpan(text: "lbl_how_to".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(12), fontFamily: 'Poppins', fontWeight: FontWeight.w500, letterSpacing: getHorizontalSize(0.12))), TextSpan(text: "msg_unsubscribe_fro".tr, style: TextStyle(color: ColorConstant.blueGray100, fontSize: getFontSize(12), fontFamily: 'Poppins', fontWeight: FontWeight.w300, letterSpacing: getHorizontalSize(0.12)))]), textAlign: TextAlign.left), CustomImageView(svgPath: ImageConstant.imgArrowrightWhiteA700, height: getSize(9), width: getSize(9), margin: getMargin(left: 62, top: 4, bottom: 3))])), Padding(padding: getPadding(top: 25), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.whiteA70063)), Padding(padding: getPadding(top: 22), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [RichText(text: TextSpan(children: [TextSpan(text: "msg_how_to_subscrib3".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(12), fontFamily: 'Poppins', fontWeight: FontWeight.w500, letterSpacing: getHorizontalSize(0.12))), TextSpan(text: "lbl_to_movistart".tr, style: TextStyle(color: ColorConstant.blueGray100, fontSize: getFontSize(12), fontFamily: 'Poppins', fontWeight: FontWeight.w300, letterSpacing: getHorizontalSize(0.12)))]), textAlign: TextAlign.left), CustomImageView(svgPath: ImageConstant.imgArrowrightWhiteA700, height: getSize(9), width: getSize(9), margin: getMargin(left: 93, top: 4, bottom: 3))])), Padding(padding: getPadding(top: 25), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.whiteA70063)), Padding(padding: getPadding(top: 24), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(width: getHorizontalSize(204), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_how_to".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(12), fontFamily: 'Poppins', fontWeight: FontWeight.w500, letterSpacing: getHorizontalSize(0.12))), TextSpan(text: "msg_contact_custome".tr, style: TextStyle(color: ColorConstant.blueGray100, fontSize: getFontSize(12), fontFamily: 'Poppins', fontWeight: FontWeight.w300, letterSpacing: getHorizontalSize(0.12)))]), textAlign: TextAlign.left))), CustomImageView(svgPath: ImageConstant.imgArrowrightWhiteA700, height: getSize(9), width: getSize(9), margin: getMargin(left: 70, top: 12, bottom: 11))])), Padding(padding: getPadding(top: 17), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.whiteA70063))])))])))); } 
onTapArrowleft9() { Get.back(); } 
 }
