import 'package:flutter/material.dart';
import 'package:resposive_dash_board/model/all_expensess_item_model.dart';
import 'package:resposive_dash_board/widgets/active_expensess_item.dart';
import 'package:resposive_dash_board/widgets/in_active_expensess_item.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensessItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActieExpensessItem(itemModel: itemModel)
        : InActieExpensessItem(itemModel: itemModel);
  }
}
