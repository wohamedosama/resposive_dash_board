import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resposive_dash_board/model/drawer_item_model.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(drawerItemModel.title,
              style: AppStyles.styleBold16(context))),
      trailing: Container(
        width: 3.27,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
