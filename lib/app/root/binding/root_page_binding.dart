import 'package:get/get.dart';
import 'package:twin_forest/app/root/controller/root_page_controller.dart';

class RootPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RootPageController());
  }
}
