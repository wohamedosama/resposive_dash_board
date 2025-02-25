import 'package:flutter/material.dart';
import 'package:resposive_dash_board/model/drawer_item_model.dart';
import 'package:resposive_dash_board/model/user_info_model.dart';
import 'package:resposive_dash_board/utils/app_images.dart';
import 'package:resposive_dash_board/widgets/drawer_items_list_view.dart';
import 'package:resposive_dash_board/widgets/inactive_drawer_item.dart';
import 'package:resposive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              model: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(height: 20),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    image: Assets.imagesSetting,
                    title: 'Settings System',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 48.0),
                  child: InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      image: Assets.imagesLogout,
                      title: 'Logout Account',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
