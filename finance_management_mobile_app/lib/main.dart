// main.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:finance_management_mobile_app/features/account_onboarding/controller/OnboardingController.dart';
import 'package:finance_management_mobile_app/core/config/main_app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => OnboardingController()),
      ],
      child: BankingApp(),
    ),
  );
}
