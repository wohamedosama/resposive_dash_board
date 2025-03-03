import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/custom_backgorund_container.dart';
import 'package:resposive_dash_board/widgets/my_cards.dart';
import 'package:resposive_dash_board/widgets/my_cards_section.dart';
import 'package:resposive_dash_board/widgets/transaction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(height: 40, color: Color(0xffF1F1F1)),
          TransactionHistory(),
        ],
      ),
    );
  }
}
