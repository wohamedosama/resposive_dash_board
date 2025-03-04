import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resposive_dash_board/model/drawer_item_model.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title:
          Text(drawerItemModel.title, style: AppStyles.styleRegular16(context)),
    );
  }
}
