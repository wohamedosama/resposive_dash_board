import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:resposive_dash_board/widgets/custom_drawer.dart';

class DashBaordDesktopLayout extends StatelessWidget {
  const DashBaordDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: AllExpenseeAndQuickInvoiceSection(),
        ),
      ],
    );
  }
}
