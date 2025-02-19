import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/custom_drawer.dart';

class DashBaordDesktopLayout extends StatelessWidget {
  const DashBaordDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
      ],
    );
  }
}
