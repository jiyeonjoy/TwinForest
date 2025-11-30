import 'package:twin_forest/app/timeline/data/models/symptoms.dart';
import 'package:twin_forest/app/timeline/data/models/twin_note.dart';

class PregnancyEntry {
  final int week;
  final String dayLabel; // 예: "15주 3일"
  final DateTime date; // 실제 날짜도 같이 저장해도 좋음
  final String title; // 리스트에 보여줄 한 줄 제목
  final String summary; // 상세 상단 요약 문구
  final Symptoms symptoms;
  final TwinNote twinNote;
  final String memo;
  final String? ultrasoundImagePath; // 웹에선 asset 쓰면 됨 (선택)

  PregnancyEntry({
    required this.week,
    required this.dayLabel,
    required this.date,
    required this.title,
    required this.summary,
    required this.symptoms,
    required this.twinNote,
    required this.memo,
    this.ultrasoundImagePath,
  });
}
