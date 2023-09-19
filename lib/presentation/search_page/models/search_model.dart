import 'package:get/get.dart';import 'chipviewmarvel_item_model.dart';import 'listrectangle2_item_model.dart';import 'list_item_model.dart';class SearchModel {Rx<List<ChipviewmarvelItemModel>> chipviewmarvelItemList = Rx(List.generate(4,(index) =>ChipviewmarvelItemModel()));

Rx<List<Listrectangle2ItemModel>> listrectangle2ItemList = Rx(List.generate(4,(index) => Listrectangle2ItemModel()));

Rx<List<ListItemModel>> listItemList = Rx(List.generate(4,(index) => ListItemModel()));

 }
