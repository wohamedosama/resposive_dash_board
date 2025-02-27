import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/my_cards.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      children: List.generate(3, (index) => const MyCards()),
    );
  }
}
