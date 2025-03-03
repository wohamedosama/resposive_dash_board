import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:resposive_dash_board/widgets/custom_drawer.dart';
import 'package:resposive_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:resposive_dash_board/widgets/income_section.dart';
import 'package:resposive_dash_board/widgets/my_cards_and_transaction_history_section.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: DashBoardMobielLayout(),
            )),
        SizedBox(width: 24),
      ],
    );
  }
}
