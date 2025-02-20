import 'package:flutter/material.dart';
import 'package:resposive_dash_board/model/drawer_item_model.dart';
import 'package:resposive_dash_board/utils/app_images.dart';
import 'package:resposive_dash_board/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

final List<DrawerItemModel> drawerItemModelList = [
  DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
  DrawerItemModel(title: 'Messages', image: Assets.imagesMyTrasnactions),
  DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
  DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet2),
  DrawerItemModel(title: 'My Invetments', image: Assets.imagesMyInvetments),
];
int activeIndex = 0;

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              if (activeIndex != index) {
                activeIndex = index;
              }
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
              drawerItemModel: drawerItemModelList[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
      itemCount: drawerItemModelList.length,
    );
  }
}
