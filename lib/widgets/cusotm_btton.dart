import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.backgroundColor, this.textColor, required this.title});
  final Color? backgroundColor, textColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: SizedBox(
        height: 62,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            backgroundColor: backgroundColor ?? const Color(0xFF4EB7F2),
            elevation: 0,
          ),
          onPressed: () {},
          child: Text(
            title,
            style: AppStyles.styleSemiBold18.copyWith(
              color: textColor ?? const Color(0XFFFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}
