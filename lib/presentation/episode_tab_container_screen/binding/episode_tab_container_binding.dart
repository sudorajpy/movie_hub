import '../controller/episode_tab_container_controller.dart';
import 'package:get/get.dart';

class EpisodeTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EpisodeTabContainerController());
  }
}
