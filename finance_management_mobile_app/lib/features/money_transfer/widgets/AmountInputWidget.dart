// AmountInputWidget.dart

import 'package:flutter/material.dart';
import 'package:finance_management_mobile_app/core/global_component/Typography.dart';

class AmountInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("\$5.00", style: AppTypography.headline),
        Divider(color: Colors.grey),
        // Numeric keypad can be added here or use a separate widget if required
      ],
    );
  }
}
