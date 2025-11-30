import 'package:get/get.dart';
import 'package:twin_forest/app/root/binding/root_page_binding.dart';
import 'package:twin_forest/app/root/ui/root_page.dart';

part 'app_routes.dart';

abstract class AppPages {
  static const initialPage = AppRoutes.rootPage;

  static final pages = [
    GetPage(
      name: AppRoutes.rootPage,
      page: () => const RootPage(),
      bindings: [
        RootPageBinding(),
      ],
      transition: Transition.fadeIn,
    ),
  ];
}
