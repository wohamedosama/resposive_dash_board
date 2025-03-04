import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/size_config.dart';
import 'package:resposive_dash_board/widgets/detailed_income_chart.dart';
import 'package:resposive_dash_board/widgets/income_chart.dart';
import 'package:resposive_dash_board/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1480
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16.0),
            child: DetailedIncomeChart(),
          ))
        : const Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(
                flex: 3,
                child: IncomeDetails(),
              )
            ],
          );
  }
}
