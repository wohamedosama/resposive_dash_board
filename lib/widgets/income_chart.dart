import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/drawer_items_list_view.dart';
import 'package:resposive_dash_board/widgets/section_list.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

int activeIndex = -1;

class _IncomeChartState extends State<IncomeChart> {
  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (flTouchEvent, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          }),
      sections: sectionList(activeIndex),
      sectionsSpace: 0,
      centerSpaceColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }
}
