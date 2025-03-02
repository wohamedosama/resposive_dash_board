import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<PieChartSectionData> sectionList(int activeIndex) {
  return [
    PieChartSectionData(
        value: 30,
        color: const Color(0xff208bc7),
        showTitle: false,
        radius: activeIndex == 0 ? 30 : 20),
    PieChartSectionData(
        value: 25,
        color: const Color(0xff4EB7F2),
        showTitle: false,
        radius: activeIndex == 1 ? 30 : 20),
    PieChartSectionData(
        value: 20,
        color: const Color(0xff4EB7F2),
        showTitle: false,
        radius: activeIndex == 2 ? 30 : 20),
    PieChartSectionData(
        value: 22,
        color: const Color(0xffE2DECD),
        showTitle: false,
        radius: activeIndex == 3 ? 30 : 20),
  ];
}
