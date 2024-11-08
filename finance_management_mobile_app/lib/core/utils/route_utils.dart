// utils/route_utils.dart

import 'package:flutter/material.dart';
import 'package:finance_management_mobile_app/features/account_onboarding/screen/OnboardingScreen.dart';
import 'package:finance_management_mobile_app/features/account_balance/screen/AccountBalanceScreen.dart';
import 'package:finance_management_mobile_app/features/money_transfer/screen/TransferScreen.dart';

class RouteUtils {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case '/balance':
        return MaterialPageRoute(builder: (_) => AccountBalanceScreen());
      case '/transfer':
        return MaterialPageRoute(builder: (_) => TransferScreen());
      default:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
    }
  }
}
