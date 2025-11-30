import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twin_forest/app/common/config/r.dart';
import 'package:twin_forest/app/common/ui/base_container.dart';
import 'package:twin_forest/app/timeline/controller/timeline_page_controller.dart';
import 'package:twin_forest/app/timeline/ui/widget/timeline_card_view.dart';

class TimelinePage extends GetView<TimelinePageController> {
  const TimelinePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 최신 날짜가 위로 오게 정렬
    final entries = [...controller.sampleEntries]
      ..sort((a, b) => b.date.compareTo(a.date));

    return Scaffold(
      appBar: AppBar(
        title: const Text('나무 & 열매 성장일기'),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
            itemCount: entries.length,
            itemBuilder: (context, index) {
              final entry = entries[index];
              return TimelineCardView(entry: entry);
            },
          ),
        ),
      ),
    );
  }
}
