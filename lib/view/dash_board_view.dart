import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/size_config.dart';
import 'package:resposive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:resposive_dash_board/widgets/custom_drawer.dart';
import 'package:resposive_dash_board/widgets/dash_baord_desktop_layout.dart';
import 'package:resposive_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:resposive_dash_board/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class _DashBoardViewState extends State<DashBoardView> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0XFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0XFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const DashBoardMobielLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
