import 'package:get/get.dart';import 'slidergroup427319005_item_model.dart';import 'listall_item_model.dart';import 'listrectangle_item_model.dart';import 'listrectanglefive_item_model.dart';class HomeModel {Rx<List<Slidergroup427319005ItemModel>> slidergroup427319005ItemList = Rx(List.generate(4,(index) => Slidergroup427319005ItemModel()));

Rx<List<ListallItemModel>> listallItemList = Rx(List.generate(5,(index) => ListallItemModel()));

Rx<List<ListrectangleItemModel>> listrectangleItemList = Rx(List.generate(3,(index) => ListrectangleItemModel()));

Rx<List<ListrectanglefiveItemModel>> listrectanglefiveItemList = Rx(List.generate(3,(index) => ListrectanglefiveItemModel()));

 }
