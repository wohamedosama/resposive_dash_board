import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/income_chart.dart';
import 'package:resposive_dash_board/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return width >= 1750 && width < 1200
        ? const SizedBox()
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
