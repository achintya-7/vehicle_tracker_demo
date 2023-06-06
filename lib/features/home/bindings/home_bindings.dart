import 'package:get/get.dart';
import 'package:vehicle_tracker_demo/features/home/controllers/map_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MapController>(() => MapController());
  }
}
