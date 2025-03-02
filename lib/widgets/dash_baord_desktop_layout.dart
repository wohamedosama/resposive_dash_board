import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:resposive_dash_board/widgets/custom_dot_indicator.dart';
import 'package:resposive_dash_board/widgets/custom_drawer.dart';
import 'package:resposive_dash_board/widgets/dots_indicator.dart';
import 'package:resposive_dash_board/widgets/income_section.dart';
import 'package:resposive_dash_board/widgets/my_cards.dart';
import 'package:resposive_dash_board/widgets/my_cards_and_transaction_history_section.dart';
import 'package:resposive_dash_board/widgets/my_cards_page_view.dart';
import 'package:resposive_dash_board/widgets/my_cards_section.dart';
import 'package:resposive_dash_board/widgets/transaction_history.dart';

class DashBaordDesktopLayout extends StatelessWidget {
  const DashBaordDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: AllExpenseeAndQuickInvoiceSection()),
        SizedBox(width: 24),
        Expanded(
            child: Column(
          children: [
            SizedBox(height: 40),
            MyCardsAndTransactionHistorySection(),
            SizedBox(height: 24),
            Expanded(child: IncomeSection()),
          ],
        ))
      ],
    );
  }
}
