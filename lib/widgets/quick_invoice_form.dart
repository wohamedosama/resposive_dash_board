import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/cusotm_btton.dart';
import 'package:resposive_dash_board/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: 'Customer name', hintText: 'Type Customer Name'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                  title: 'Customer Email', hintText: 'Type Customer Email'),
            ),
          ],
        ),
        SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: 'Item Name', hintText: 'Type Customer Name'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(title: 'Item Mount', hintText: 'USD'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(children: [
          Expanded(
            child: CustomButton(
              title: 'Add more details',
              backgroundColor: Color(0XFFFAFAFA),
              textColor: Color(0XFF4EB7F2),
            ),
          ),
          SizedBox(width: 24),
          Expanded(
            child: CustomButton(
              title: 'Send Money',
            ),
          ),
        ]),
      ],
    );
  }
}
