import 'package:flutter/material.dart';
import 'package:resposive_dash_board/model/all_expensess_item_model.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';
import 'package:resposive_dash_board/widgets/all_expensess_item_header.dart';

class ActieExpensessItem extends StatelessWidget {
  const ActieExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: itemModel.iamge,
            imageBackground: Colors.white.withValues(alpha: 0.1000000049011612),
            imageColor: Colors.white,
          ),
          const SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(itemModel.title,
                style: AppStyles.styleMedium16(context)
                    .copyWith(color: Colors.white)),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(itemModel.date,
                style: AppStyles.styleRegular14(context)
                    .copyWith(color: const Color(0XFFFAFAFA)),
                overflow: TextOverflow.ellipsis),
          ),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(itemModel.price,
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
