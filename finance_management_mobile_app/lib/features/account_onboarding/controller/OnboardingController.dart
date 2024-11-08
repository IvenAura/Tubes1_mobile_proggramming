// features/account_onboarding/controller/OnboardingController.dart

import 'package:flutter/material.dart';
import '../../account_balance/screen/AccountBalanceScreen.dart';

class OnboardingController extends ChangeNotifier {
  void goToNextScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AccountBalanceScreen()),
    );
  }
}
