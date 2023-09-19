import 'package:get/get.dart';import 'sliderrectangleten_item_model.dart';import 'listrectanglesix_item_model.dart';import 'listall1_item_model.dart';import 'listrectangle1_item_model.dart';class HomeRecentlyWatchedModel {Rx<List<SliderrectangletenItemModel>> sliderrectangletenItemList = Rx(List.generate(3,(index) => SliderrectangletenItemModel()));

Rx<List<ListrectanglesixItemModel>> listrectanglesixItemList = Rx(List.generate(2,(index) => ListrectanglesixItemModel()));

Rx<List<Listall1ItemModel>> listall1ItemList = Rx(List.generate(5,(index) => Listall1ItemModel()));

Rx<List<Listrectangle1ItemModel>> listrectangle1ItemList = Rx(List.generate(3,(index) => Listrectangle1ItemModel()));

 }
