// core/config/main_app.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../features/account_onboarding/screen/OnboardingScreen.dart';
import '../../features/account_balance/screen/AccountBalanceScreen.dart';
import '../../features/money_transfer/screen/TransferScreen.dart';
import '../../features/account_balance/controller/BalanceController.dart';

class BankingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BalanceController()),
      ],
      child: MaterialApp(
        title: 'Finance Management App',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => OnboardingScreen(),
          '/account_balance': (context) => AccountBalanceScreen(),
          '/transfer_money': (context) => TransferScreen(),
        },
      ),
    );
  }
}
