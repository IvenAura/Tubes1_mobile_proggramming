// QuickAmountButtonsWidget.dart

import 'package:flutter/material.dart';
import 'package:finance_management_mobile_app/core/global_component/Typography.dart';

class QuickAmountButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [5, 10, 20, 50, 100].map((amount) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[200],
          ),
          onPressed: () {
            // Define the action for selecting a quick amount
          },
          child: Text("\$$amount", style: AppTypography.bodyText),
        );
      }).toList(),
    );
  }
}
