import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle:
            AppStyles.styleRegular16.copyWith(color: const Color(0xFFA1A1A1)),
        border: buildBordar(),
        enabledBorder: buildBordar(),
        focusedBorder: buildBordar(),
        fillColor: const Color(0xFFFAFAFA),
        filled: true,
      ),
    );
  }

  OutlineInputBorder buildBordar() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xFFFAFAFA),
      ),
    );
  }
}
