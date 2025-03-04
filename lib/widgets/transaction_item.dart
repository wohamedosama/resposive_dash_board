import 'package:flutter/material.dart';
import 'package:resposive_dash_board/model/trasnaction_model.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.model});
  final TrasnactionModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          model.title,
          style: AppStyles.styleMedium16(context),
        ),
        subtitle: Text(
          model.subTitle,
          style: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0XFFAAAAAA)),
        ),
        trailing: Text(
          model.price,
          style: AppStyles.styleMedium20(context).copyWith(
            color: model.isWithdrawal
                ? const Color(0XFFF3735E)
                : const Color(0XFF7DD97B),
          ),
        ),
      ),
    );
  }
}
