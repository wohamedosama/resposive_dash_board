import 'package:flutter/material.dart';

import 'package:resposive_dash_board/widgets/custom_backgorund_container.dart';
import 'package:resposive_dash_board/widgets/lateast_transaction.dart';
import 'package:resposive_dash_board/widgets/quick_invoice_form.dart';
import 'package:resposive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LateastTransactions(),
          Divider(height: 48, color: Color(0XFFF1F1F1)),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
