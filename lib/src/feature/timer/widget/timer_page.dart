import 'package:flutter/material.dart';

import '../models/timer_data.dart';
import 'custom_timer.dart';
import 'section_maker.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({
    required this.data,
    required this.pageCount,
    required this.indicatorValue,
    required this.isTimerStarted,
    required this.timerPageController,
    required this.onSectionChanged,
    super.key,
  });

  final ValueNotifier<double> indicatorValue;
  final PageController timerPageController;
  final ValueNotifier<int> pageCount;
  final bool isTimerStarted;
  final List<TimerData> data;
  final void Function()? Function(int, int) onSectionChanged;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Expanded(
            child: CustomTimerView(
              indicatorValue: indicatorValue,
              timerPageController: timerPageController,
              data: data,
            ),
          ),
          Expanded(
            child: SectionMaker(
              data: data,
              pageCount: pageCount,
              timerPageController: timerPageController,
              indicatorValue: indicatorValue,
              onPressed: onSectionChanged,
            ),
          ),
        ],
      );
}
