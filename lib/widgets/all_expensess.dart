import 'package:flutter/material.dart';
import 'package:resposive_dash_board/model/all_expensess_item_model.dart';
import 'package:resposive_dash_board/utils/app_images.dart';
import 'package:resposive_dash_board/widgets/all_expensess_header.dart';
import 'package:resposive_dash_board/widgets/all_expensess_item.dart';
import 'package:resposive_dash_board/widgets/all_expensess_items_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
