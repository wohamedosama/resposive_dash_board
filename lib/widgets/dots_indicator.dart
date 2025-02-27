import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndicator});
  final int currentPageIndicator;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: CustomDotIndicator(isActive: index == currentPageIndicator),
        ),
      ),
    );
  }
}
