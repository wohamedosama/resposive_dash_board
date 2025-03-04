import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:resposive_dash_board/widgets/income_section.dart';
import 'package:resposive_dash_board/widgets/my_cards_and_transaction_history_section.dart';

class DashBoardMobielLayout extends StatelessWidget {
  const DashBoardMobielLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpenseeAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardsAndTransactionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
