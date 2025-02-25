import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:resposive_dash_board/widgets/dash_baord_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF7F9FA),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) {
          return const SizedBox();
        },
        tabletLayout: (context) {
          return const SizedBox();
        },
        desktopLayout: (context) {
          return const DashBaordDesktopLayout();
        },
      ),
    );
  }
}
