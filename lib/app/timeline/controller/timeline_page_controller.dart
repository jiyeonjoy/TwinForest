import 'package:get/get.dart';
import 'package:twin_forest/app/timeline/data/models/pregnancy_entry.dart';
import 'package:twin_forest/app/timeline/data/pregnancy_entries.dart';

class TimelinePageController extends GetxController {
  static TimelinePageController get to => Get.find();

  final RxnInt selectedWeek = RxnInt();    // null = 전체
  final RxnInt selectedMonth = RxnInt();   // null = 전체
  final RxBool descending = true.obs;      // true: 최신순

  List<int> get availableWeeks {
    final set = sampleEntries.map((e) => e.week).toSet().toList()..sort();
    return set;
  }

  List<int> get availableMonths {
    final set = sampleEntries.map((e) => e.date.month).toSet().toList()..sort();
    return set;
  }

  List<PregnancyEntry> get filteredEntries {
    var list = [...sampleEntries];

    // 주차 필터
    if (selectedWeek.value != null) {
      list = list.where((e) => e.week == selectedWeek.value).toList();
    }

    // 월 필터
    if (selectedMonth.value != null) {
      list = list.where((e) => e.date.month == selectedMonth.value).toList();
    }

    // 정렬
    list.sort((a, b) =>
    descending.value ? b.date.compareTo(a.date) : a.date.compareTo(b.date));

    return list;
  }

  String currentFilterLabel() {
    final weekLabel =
    selectedWeek.value == null ? '전체 주차' : '${selectedWeek.value}주차만';
    final monthLabel = selectedMonth.value == null
        ? '전체 달'
        : '${selectedMonth.value}월만';
    final sortLabel = descending.value ? '최신순' : '오래된순';

    return '$weekLabel · $monthLabel · $sortLabel';
  }

  String monthText(int month) {
    return '$month월';
  }
}
