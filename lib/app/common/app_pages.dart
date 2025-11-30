import 'package:get/get.dart';
import 'package:twin_forest/app/timeline/binding/timeline_page_binding.dart';
import 'package:twin_forest/app/timeline/ui/timeline_page.dart';

part 'app_routes.dart';

abstract class AppPages {
  static const initialPage = AppRoutes.rootPage;

  static final pages = [
    GetPage(
      name: AppRoutes.rootPage,
      page: () => const TimelinePage(),
      bindings: [
        TimelinePageBinding(),
      ],
      transition: Transition.fadeIn,
    ),
  ];
}
