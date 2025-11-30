import 'package:get/get.dart';
import 'package:twin_forest/app/timeline/controller/timeline_page_controller.dart';

class TimelinePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TimelinePageController());
  }
}
