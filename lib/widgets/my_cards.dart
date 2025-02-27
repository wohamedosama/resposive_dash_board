import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resposive_dash_board/utils/app_images.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';

class MyCards extends StatelessWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: const ShapeDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(Assets.imagesCard)),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          color: Color(0XFF4EB7F2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text('Card Name',
                  style:
                      AppStyles.styleRegular16.copyWith(color: Colors.white)),
              subtitle:
                  const Text('Syhi Bandi', style: AppStyles.styleMedium20),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style:
                        AppStyles.styleSemiBold24.copyWith(color: Colors.white),
                  ),
                  Text(
                    '12/20 - 124',
                    style:
                        AppStyles.styleRegular16.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 26)
          ],
        ),
      ),
    );
  }
}
