import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Income",
          style: AppStyles.styleSemiBold20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Color(0xffF1F1F1)),
                borderRadius: BorderRadius.all(Radius.circular(12))),
          ),
          child: Row(
            children: [
              const Text(
                'Monthly',
                style: AppStyles.styleMedium16,
              ),
              const SizedBox(width: 16),
              Transform.rotate(
                angle: 4.71238898,
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0XFF064061),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
