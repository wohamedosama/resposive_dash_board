import 'package:flutter/material.dart';
import 'package:resposive_dash_board/model/item_details_model.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.model});
  final ItemDetailsModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration:
            ShapeDecoration(shape: const OvalBorder(), color: model.color),
      ),
      title: Text(model.title, style: AppStyles.styleRegular16(context)),
      trailing: Text(model.value, style: AppStyles.styleMedium16(context)),
    );
  }
}
