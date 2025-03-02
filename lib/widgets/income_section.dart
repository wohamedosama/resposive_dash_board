import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/app_images.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';
import 'package:resposive_dash_board/widgets/custom_backgorund_container.dart';
import 'package:resposive_dash_board/widgets/income_chart.dart';
import 'package:resposive_dash_board/widgets/income_details.dart';
import 'package:resposive_dash_board/widgets/income_sction_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: IncomeChart()),
                Expanded(child: IncomeDetails())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
