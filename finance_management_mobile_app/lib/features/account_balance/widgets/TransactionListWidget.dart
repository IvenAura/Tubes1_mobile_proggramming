// TransactionListWidget.dart

import 'package:flutter/material.dart';
import 'package:finance_management_mobile_app/core/global_component/Typography.dart';

class TransactionListWidget extends StatelessWidget {
  final List<Map<String, dynamic>> transactions;

  TransactionListWidget({required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: transactions.map((transaction) {
        return ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 4),
          title:
              Text(transaction['description'], style: AppTypography.bodyText),
          subtitle:
              Text(transaction['date'], style: TextStyle(color: Colors.grey)),
          trailing: Text(
            "${transaction['type'] == 'debit' ? '-' : '+'}\$${transaction['amount'].toStringAsFixed(2)}",
            style: TextStyle(
              color: transaction['type'] == 'debit' ? Colors.red : Colors.green,
            ),
          ),
        );
      }).toList(),
    );
  }
}
