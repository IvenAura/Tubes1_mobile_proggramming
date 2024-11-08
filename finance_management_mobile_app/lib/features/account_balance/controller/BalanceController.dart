// features/account_balance/controller/BalanceController.dart

import 'package:flutter/material.dart';

class BalanceController extends ChangeNotifier {
  double _balance = 7172.85; // Saldo awal
  List<Map<String, dynamic>> _transactions = []; // Daftar transaksi

  // Getter untuk saldo
  double get balance => _balance;

  // Getter untuk daftar transaksi
  List<Map<String, dynamic>> get transactions => _transactions;

  // Menambah uang ke saldo
  void addMoney(double amount) {
    _balance += amount;
    _transactions.add({
      'title': 'Deposit',
      'amount': '+\$${amount.toStringAsFixed(2)}',
      'isDebit': false,
      'date': DateTime.now(),
    });
    notifyListeners();
  }

  // Melakukan transfer (mengurangi saldo)
  void transfer(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
      _transactions.add({
        'title': 'Transfer',
        'amount': '-\$${amount.toStringAsFixed(2)}',
        'isDebit': true,
        'date': DateTime.now(),
      });
      notifyListeners();
    } else {
      // Tampilkan pesan kesalahan jika saldo tidak cukup
      print("Saldo tidak cukup untuk melakukan transfer.");
    }
  }

  String? transferMoney(int i, String s) {
    return null;
  }
}
