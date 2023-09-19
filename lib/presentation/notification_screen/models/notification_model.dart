import 'package:get/get.dart';import 'notification_item_model.dart';class NotificationModel {Rx<List<NotificationItemModel>> notificationItemList = Rx(List.generate(6,(index) => NotificationItemModel()));

 }
