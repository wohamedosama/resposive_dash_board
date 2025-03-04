import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Color(0XFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(width: 18),
          Transform.rotate(
            angle: 4.71238898,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0XFF064061),
            ),
          ),
        ],
      ),
    );
  }
}
