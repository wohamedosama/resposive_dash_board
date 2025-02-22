import 'package:flutter/material.dart';
import 'package:resposive_dash_board/model/all_expensess_item_model.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';
import 'package:resposive_dash_board/widgets/all_expensess_item_header.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem({super.key, required this.itemModel});
  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0XFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(image: itemModel.iamge),
          SizedBox(height: 34),
          Text(itemModel.title, style: AppStyles.styleMedium16),
          SizedBox(height: 8),
          Text(itemModel.date,
              style: AppStyles.styleRegular14, overflow: TextOverflow.ellipsis),
          SizedBox(height: 16),
          Text(itemModel.price, style: AppStyles.styleSemiBold24),
        ],
      ),
    );
  }
}
