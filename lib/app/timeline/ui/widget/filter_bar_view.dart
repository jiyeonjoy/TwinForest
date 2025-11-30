import 'package:flutter/material.dart';

class FilterBarView extends StatelessWidget {
  final List<int> availableWeeks;
  final List<int> availableMonths;
  final int? selectedWeek;
  final int? selectedMonth;
  final bool descending;
  final void Function(int?) onWeekChanged;
  final void Function(int?) onMonthChanged;
  final VoidCallback onSortToggle;
  final VoidCallback onReset;
  final String Function(int) monthLabelBuilder;

  const FilterBarView({super.key,
    required this.availableWeeks,
    required this.availableMonths,
    required this.selectedWeek,
    required this.selectedMonth,
    required this.descending,
    required this.onWeekChanged,
    required this.onMonthChanged,
    required this.onSortToggle,
    required this.onReset,
    required this.monthLabelBuilder,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        // 주차 필터
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(999),
            border: Border.all(
              color: Colors.black12,
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<int?>(
              value: selectedWeek,
              hint: const Text(
                '전체 주차',
                style: TextStyle(fontSize: 13),
              ),
              icon: const Icon(Icons.keyboard_arrow_down, size: 18),
              items: [
                const DropdownMenuItem<int?>(
                  value: null,
                  child: Text('전체 주차', style: TextStyle(fontSize: 13)),
                ),
                ...availableWeeks.map(
                      (w) => DropdownMenuItem<int?>(
                    value: w,
                    child: Text('$w주차', style: const TextStyle(fontSize: 13)),
                  ),
                )
              ],
              onChanged: onWeekChanged,
            ),
          ),
        ),

        // 월 필터
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(999),
            border: Border.all(
              color: Colors.black12,
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<int?>(
              value: selectedMonth,
              hint: const Text(
                '전체 달',
                style: TextStyle(fontSize: 13),
              ),
              icon: const Icon(Icons.keyboard_arrow_down, size: 18),
              items: [
                const DropdownMenuItem<int?>(
                  value: null,
                  child: Text('전체 달', style: TextStyle(fontSize: 13)),
                ),
                ...availableMonths.map(
                      (m) => DropdownMenuItem<int?>(
                    value: m,
                    child: Text(
                      monthLabelBuilder(m),
                      style: const TextStyle(fontSize: 13),
                    ),
                  ),
                ),
              ],
              onChanged: onMonthChanged,
            ),
          ),
        ),

        // 정렬 버튼
        TextButton.icon(
          onPressed: onSortToggle,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            foregroundColor: theme.colorScheme.primary,
          ),
          icon: Icon(
            descending ? Icons.south_rounded : Icons.north_rounded,
            size: 16,
          ),
          label: Text(
            descending ? '최신순' : '오래된순',
            style: const TextStyle(fontSize: 13),
          ),
        ),

        // 초기화
        TextButton(
          onPressed: onReset,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            foregroundColor: Colors.black54,
          ),
          child: const Text(
            '필터 초기화',
            style: TextStyle(fontSize: 12, decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
