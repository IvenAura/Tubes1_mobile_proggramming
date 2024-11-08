// CardInfoWidget.dart

import 'package:flutter/material.dart';
import 'package:finance_management_mobile_app/core/global_component/Typography.dart';

class CardInfoWidget extends StatelessWidget {
  final String cardType;
  final String cardNumber;
  final double balance;

  CardInfoWidget(
      {required this.cardType,
      required this.cardNumber,
      required this.balance});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(cardType, style: AppTypography.bodyText),
        Text("**** **** **** $cardNumber",
            style: TextStyle(color: Colors.grey)),
        Text("\$${balance.toStringAsFixed(2)}",
            style: AppTypography.subheadline),
        Divider(color: Colors.grey[300]),
      ],
    );
  }
}
