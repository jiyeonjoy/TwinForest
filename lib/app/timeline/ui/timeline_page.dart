import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twin_forest/app/timeline/controller/timeline_page_controller.dart';
import 'package:twin_forest/app/timeline/data/pregnancy_entries.dart';
import 'package:twin_forest/app/timeline/ui/widget/filter_bar_view.dart';
import 'package:twin_forest/app/timeline/ui/widget/timeline_card_view.dart';

class TimelinePage extends GetView<TimelinePageController> {
  const TimelinePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('나무 & 열매 성장일기'),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Obx(() {
            final filtered = controller.filteredEntries;
            final totalCount = sampleEntries.length;
            final minWeek = sampleEntries
                .map((e) => e.week)
                .reduce((a, b) => a < b ? a : b);
            final maxWeek = sampleEntries
                .map((e) => e.week)
                .reduce((a, b) => a > b ? a : b);

            return Column(
              children: [
                const SizedBox(height: 16),
                // 상단 요약 카드
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.04),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '나무 🌳 & 열매 🍎 성장 기록',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '총 $totalCount개의 기록 · $minWeek주차 ~ $maxWeek주차',
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          controller.currentFilterLabel(),
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // 필터 바
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: FilterBarView(
                    availableWeeks: controller.availableWeeks,
                    availableMonths: controller.availableMonths,
                    selectedWeek: controller.selectedWeek.value,
                    selectedMonth: controller.selectedMonth.value,
                    descending: controller.descending.value,
                    onWeekChanged: (value) {
                      controller.selectedWeek.value = value;
                    },
                    onMonthChanged: (value) {
                      controller.selectedMonth.value = value;
                    },
                    onSortToggle: () {
                      controller.descending.value = !controller.descending.value;
                    },
                    onReset: () {
                      controller.selectedWeek.value = null;
                      controller.selectedMonth.value = null;
                      controller.descending.value = true;
                    },
                    monthLabelBuilder: controller.monthText,
                  ),
                ),
                const SizedBox(height: 8),

                const Divider(height: 1),

                // 리스트
                Expanded(
                  child: filtered.isEmpty
                      ? const Center(
                    child: Text(
                      '선택한 조건에 해당하는 기록이 아직 없어요 🥺',
                      style: TextStyle(color: Colors.black54),
                    ),
                  )
                      : ListView.builder(
                    padding:
                    const EdgeInsets.fromLTRB(16, 16, 16, 24),
                    itemCount: filtered.length,
                    itemBuilder: (context, index) {
                      final entry = filtered[index];
                      return TimelineCardView(entry: entry);
                    },
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
