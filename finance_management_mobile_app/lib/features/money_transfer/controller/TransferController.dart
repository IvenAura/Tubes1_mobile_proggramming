// TransferController.dart

import 'package:flutter/material.dart';

class TransferController extends ChangeNotifier {
  double _amount = 0.0;

  double get amount => _amount;

  void setAmount(double newAmount) {
    _amount = newAmount;
    notifyListeners();
  }

  void resetAmount() {
    _amount = 0.0;
    notifyListeners();
  }

  void initiateTransfer() {
    // Logic for transferring money
    notifyListeners();
  }
}
