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

class Symptoms {
  final int nausea; // 입덧 레벨 0~5
  final int fatigue; // 피로도 0~5
  final int mood; // 기분 0(우울)~5(행복)

  const Symptoms({
    required this.nausea,
    required this.fatigue,
    required this.mood,
  });
}

class TwinNote {
  final String tree; // 나무
  final String fruit; // 열매

  const TwinNote({
    required this.tree,
    required this.fruit,
  });
}
