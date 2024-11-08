// BalanceDisplayWidget.dart

import 'package:flutter/material.dart';
import 'package:finance_management_mobile_app/core/global_component/Typography.dart';
import 'package:finance_management_mobile_app/core/global_component/ButtonComponent.dart';

class BalanceDisplayWidget extends StatelessWidget {
  final double balance;
  final VoidCallback onAddMoney;

  BalanceDisplayWidget({required this.balance, required this.onAddMoney});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Balance", style: AppTypography.bodyText),
        SizedBox(height: 8),
        Text("\$${balance.toStringAsFixed(2)}", style: AppTypography.headline),
        SizedBox(height: 20),
        ButtonComponent(
          label: "Add Money",
          onPressed: onAddMoney,
        ),
      ],
    );
  }
}
