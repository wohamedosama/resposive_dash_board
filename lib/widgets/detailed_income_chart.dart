import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/detailed_section_list.dart';
import 'package:resposive_dash_board/widgets/drawer_items_list_view.dart';
import 'package:resposive_dash_board/widgets/section_list.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

int activeIndex = -1;

class _IncomeChartState extends State<DetailedIncomeChart> {
  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (flTouchEvent, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          }),
      sections: detailedSectionList(activeIndex),
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
