import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader(
      {super.key,
      required this.image,
      this.imageBackgroundColor,
      this.imageColor});
  final String image;
  final Color? imageBackgroundColor, imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: imageBackgroundColor ?? const Color(0XFFFAFAFA),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0XFF4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: 2 * 4.71238898,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor == null ? const Color(0XFF064061) : Colors.white,
          ),
        ),
      ],
    );
  }
}
