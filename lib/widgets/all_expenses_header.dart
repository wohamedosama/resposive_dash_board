import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'All Expenses',
            style: AppStyles.styleSemiBold20,
          ),
        ),
        Expanded(
          child: Text(
            'Monthly',
            style: AppStyles.styleBold16.copyWith(
              color: Color(0XFF064061),
            ),
          ),
        ),
      ],
    );
  }
}
