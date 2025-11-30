import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twin_forest/app/common/app_pages.dart';

class TwinForestApp extends StatefulWidget {
  const TwinForestApp({super.key});

  @override
  State<TwinForestApp> createState() => _TwinForestAppState();
}

class _TwinForestAppState extends State<TwinForestApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '신영우 ♥ 최지연 결혼합니다.',
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: AppPages.initialPage,
      getPages: AppPages.pages,
      defaultTransition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 200),
      theme: ThemeData(
        fontFamily: 'defaultFont',
      ),
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: NoEffectBehavior(),
          child: child ?? const SizedBox.shrink(),
        );
      },
    );
  }
}

class NoEffectBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
