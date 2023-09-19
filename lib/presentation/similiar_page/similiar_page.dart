import '../similiar_page/widgets/similiar_item_widget.dart';import 'controller/similiar_controller.dart';import 'models/similiar_item_model.dart';import 'models/similiar_model.dart';import 'package:flutter/material.dart';import 'package:raj_singh_s_application3/core/app_export.dart';
// ignore_for_file: must_be_immutable
class SimiliarPage extends StatelessWidget {SimiliarController controller = Get.put(SimiliarController(SimiliarModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: Colors.transparent, body: Container(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(181), child: Obx(() => ListView.separated(padding: getPadding(left: 9, top: 27, right: 10), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(12));}, itemCount: controller.similiarModelObj.value.similiarItemList.value.length, itemBuilder: (context, index) {SimiliarItemModel model = controller.similiarModelObj.value.similiarItemList.value[index]; return SimiliarItemWidget(model);})))])))); } 
 }
