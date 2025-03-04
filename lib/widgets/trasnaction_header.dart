import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Transaction History', style: AppStyles.styleSemiBold20(context)),
        const Expanded(child: SizedBox()),
        Text(
          'See all ',
          style: AppStyles.styleMedium16(context)
              .copyWith(color: const Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
