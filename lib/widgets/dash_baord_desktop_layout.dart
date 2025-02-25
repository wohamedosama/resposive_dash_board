import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/all_expensess.dart';
import 'package:resposive_dash_board/widgets/custom_drawer.dart';
import 'package:resposive_dash_board/widgets/quick_invoice.dart';

class DashBaordDesktopLayout extends StatelessWidget {
  const DashBaordDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                AllExpenses(),
                SizedBox(height: 24),
                QuickInvoice(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
