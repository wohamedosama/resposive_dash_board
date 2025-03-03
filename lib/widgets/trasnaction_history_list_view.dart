import 'package:flutter/material.dart';
import 'package:resposive_dash_board/model/trasnaction_model.dart';
import 'package:resposive_dash_board/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TrasnactionModel(
      title: 'Cash Withdrawal',
      subTitle: '13 Apr, 2022 ',
      price: r'$20,129',
      isWithdrawal: true,
    ),
    TrasnactionModel(
      title: 'Landing Page project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
      price: r'$2,000',
      isWithdrawal: false,
    ),
    TrasnactionModel(
      title: 'Juni Mobile App project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
      price: r'$20,129',
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((itemsModel) => TransactionItem(model: itemsModel))
          .toList(),
    );
  }
}
