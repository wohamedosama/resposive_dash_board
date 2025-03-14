import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';
import 'package:resposive_dash_board/widgets/lateast_transaction_list_view.dart';

class LateastTransactions extends StatelessWidget {
  const LateastTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Lateast Transactions', style: AppStyles.styleMedium16(context)),
        const SizedBox(height: 16),
        const LateastTransactionListView(),
      ],
    );
  }
}
