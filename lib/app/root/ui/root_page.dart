import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twin_forest/app/common/config/r.dart';
import 'package:twin_forest/app/common/ui/base_container.dart';
import 'package:twin_forest/app/root/controller/root_page_controller.dart';

class RootPage extends GetView<RootPageController> {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.color.color_333333,
      body: const SafeArea(
        bottom: false,
        child: CustomScrollView(
          physics: ClampingScrollPhysics(),
          slivers: [
            BaseContainer(
              child: Column(
                children: [
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
