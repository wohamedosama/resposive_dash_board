import 'package:flutter/material.dart';
import 'package:resposive_dash_board/model/all_expensess_item_model.dart';
import 'package:resposive_dash_board/utils/app_images.dart';
import 'package:resposive_dash_board/widgets/all_expensess_item.dart';

class AllExpensessItemsListView extends StatelessWidget {
  const AllExpensessItemsListView({super.key});
  static List items = [
    AllExpensessItemModel(
        iamge: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensessItemModel(
        iamge: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensessItemModel(
        iamge: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
        children: items.asMap().entries.map((item) {
      int index = item.key;
      var items = item.value;
      if (index == 1) {
        return Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: AllExpensessItem(itemModel: items),
        ));
      } else {
        return Expanded(
          child: AllExpensessItem(itemModel: items),
        );
      }
    }).toList());
  }
}
