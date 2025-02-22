import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0XFFFAFAFA),
          ),
          child: Center(child: SvgPicture.asset(image)),
        ),
        Expanded(child: SizedBox()),
        Transform.rotate(
          angle: 2 * 4.71238898,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0XFF064061),
          ),
        ),
      ],
    );
  }
}
