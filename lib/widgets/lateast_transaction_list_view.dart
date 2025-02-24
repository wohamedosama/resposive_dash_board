import 'package:flutter/material.dart';
import 'package:resposive_dash_board/model/user_info_model.dart';
import 'package:resposive_dash_board/utils/app_images.dart';
import 'package:resposive_dash_board/widgets/user_info_list_tile.dart';

class LateastTransactionListView extends StatelessWidget {
  const LateastTransactionListView({super.key});

  static const model = [
    UserInfoModel(
        title: 'Madrani Andi',
        image: Assets.imagesAvatar1,
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        title: 'Josua Nunito',
        image: Assets.imagesAvatar2,
        subTitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        title: 'Madrani Andi ',
        image: Assets.imagesAvatar3,
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        title: 'Madrani Andi',
        image: Assets.imagesAvatar1,
        subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: model
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTile(
                  model: e,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
/**return SizedBox(
      height: 82,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: model.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              model: model[index],
            ),
          );
        },
      ),
    ); */
