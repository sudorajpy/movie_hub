import '../controller/empty_state_downloaded_tab_container_controller.dart';
import 'package:get/get.dart';

class EmptyStateDownloadedTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmptyStateDownloadedTabContainerController());
  }
}
