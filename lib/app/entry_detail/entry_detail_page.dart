import 'package:flutter/material.dart';
import 'package:twin_forest/app/timeline/data/models/pregnancy_entry.dart';

class EntryDetailPage extends StatelessWidget {
  final PregnancyEntry entry;

  const EntryDetailPage({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('${entry.dayLabel} 기록'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 상단 요약 카드
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.95),
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        entry.dayLabel,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        entry.title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        entry.summary,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                // 증상 섹션
                Text(
                  '오늘의 컨디션',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 12,
                  runSpacing: 8,
                  children: [
                    _symptomChip(
                      label: '입덧',
                      level: entry.symptoms.nausea,
                      icon: '🤢',
                    ),
                    _symptomChip(
                      label: '피로',
                      level: entry.symptoms.fatigue,
                      icon: '🥱',
                    ),
                    _symptomChip(
                      label: '기분',
                      level: entry.symptoms.mood,
                      icon: '😊',
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // 나무 & 열매 노트
                Text(
                  '나무 & 열매 노트',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: _twinNoteCard(
                        title: '나무 🌳',
                        text: entry.twinNote.tree,
                        color: theme.colorScheme.primary.withOpacity(0.1),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _twinNoteCard(
                        title: '열매 🍎',
                        text: entry.twinNote.fruit,
                        color: theme.colorScheme.secondary.withOpacity(0.1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // 엄마 메모
                Text(
                  '엄마의 메모',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.95),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: theme.colorScheme.primary.withOpacity(0.2),
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    entry.memo,
                    style: const TextStyle(fontSize: 14, height: 1.5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _symptomChip({
    required String label,
    required int level,
    required String icon,
  }) {
    // level 개수만큼 동그라미/잎사귀처럼 표현
    final dots = List.generate(
      level,
          (index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.5),
        child: Icon(
          Icons.circle,
          size: 8,
        ),
      ),
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(999),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(icon),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(fontSize: 13),
          ),
          const SizedBox(width: 6),
          Row(mainAxisSize: MainAxisSize.min, children: dots),
        ],
      ),
    );
  }

  Widget _twinNoteCard({
    required String title,
    required String text,
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: const TextStyle(fontSize: 13, height: 1.5),
          ),
        ],
      ),
    );
  }
}
