import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:resposive_dash_board/widgets/dash_baord_desktop_layout.dart';
import 'package:resposive_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:resposive_dash_board/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF7F9FA),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const DashBoardMobielLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
