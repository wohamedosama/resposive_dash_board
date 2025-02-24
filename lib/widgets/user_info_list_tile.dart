import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resposive_dash_board/model/user_info_model.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.model});

  final UserInfoModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0XFFFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(model.image),
          title: Text(
            model.title,
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            model.subTitle,
            style: AppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
