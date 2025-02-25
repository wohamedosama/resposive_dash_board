import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/all_expensess_header.dart';
import 'package:resposive_dash_board/widgets/all_expensess_items_list_view.dart';
import 'package:resposive_dash_board/widgets/custom_backgorund_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 12),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
