import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/all_expensess.dart';
import 'package:resposive_dash_board/widgets/quick_invoice.dart';

class AllExpenseeAndQuickInvoiceSection extends StatelessWidget {
  const AllExpenseeAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40),
          AllExpenses(),
          SizedBox(height: 24),
          QuickInvoice(),
        ],
      ),
    );
  }
}
