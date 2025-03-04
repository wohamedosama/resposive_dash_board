import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';

List<PieChartSectionData> detailedSectionList(int activeIndex, context) {
  return [
    PieChartSectionData(
        titlePositionPercentageOffset: activeIndex == 0 ? 1.45 : null,
        title: activeIndex == 0 ? 'Design service' : '40%',
        value: 40,
        titleStyle: AppStyles.styleMedium16(context)
            .copyWith(color: activeIndex == 0 ? null : Colors.white),
        color: const Color(0xff208CC8),
        radius: activeIndex == 0 ? 50 : 40),
    PieChartSectionData(
        titlePositionPercentageOffset: activeIndex == 1 ? 2 : null,
        title: activeIndex == 1 ? 'Design product' : '25%',
        titleStyle: AppStyles.styleMedium16(context)
            .copyWith(color: activeIndex == 1 ? null : Colors.white),
        value: 25,
        color: const Color(0xff4EB7F2),
        radius: activeIndex == 1 ? 50 : 40),
    PieChartSectionData(
        titlePositionPercentageOffset: activeIndex == 2 ? 1.35 : null,
        title: activeIndex == 2 ? 'Product royalti' : '20%',
        titleStyle: AppStyles.styleMedium16(context)
            .copyWith(color: activeIndex == 2 ? null : Colors.white),
        value: 20,
        color: const Color(0xff064061),
        radius: activeIndex == 2 ? 50 : 40),
    PieChartSectionData(
        titlePositionPercentageOffset: activeIndex == 3 ? 1.45 : null,
        title: activeIndex == 3 ? 'Other' : '22',
        titleStyle: AppStyles.styleMedium16(context)
            .copyWith(color: activeIndex == 3 ? null : Colors.white),
        value: 22,
        color: const Color(0xffE2DECD),
        radius: activeIndex == 3 ? 50 : 40),
  ];
}
