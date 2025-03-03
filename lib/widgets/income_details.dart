import 'package:flutter/material.dart';
import 'package:resposive_dash_board/model/item_details_model.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';
import 'package:resposive_dash_board/widgets/dots_indicator.dart';
import 'package:resposive_dash_board/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<ItemDetailsModel> items = [
    ItemDetailsModel(
        title: 'Design service', value: '40%', color: Color(0xff208CC8)),
    ItemDetailsModel(
        title: 'Design product', value: '25%', color: Color(0xff4EB7F2)),
    ItemDetailsModel(
        title: 'Product royalti', value: '20%', color: Color(0xff064061)),
    ItemDetailsModel(title: 'Other', value: '22%', color: Color(0xffE2DECD)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          items.map((itemsList) => ItemDetails(model: itemsList)).toList(),
    );
  }
}
