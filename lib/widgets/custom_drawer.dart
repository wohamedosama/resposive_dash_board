import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/app_images.dart';
import 'package:resposive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ),
        ],
      ),
    );
  }
}
