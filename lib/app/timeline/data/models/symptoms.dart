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
