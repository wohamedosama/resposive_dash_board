import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:resposive_dash_board/widgets/dash_baord_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) {
          return SizedBox();
        },
        tabletLayout: (context) {
          return SizedBox();
        },
        desktopLayout: (context) {
          return DashBaordDesktopLayout();
        },
      ),
    );
  }
}
