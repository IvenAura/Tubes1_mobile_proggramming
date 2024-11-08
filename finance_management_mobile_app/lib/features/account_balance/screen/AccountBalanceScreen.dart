// features/account_balance/screen/AccountBalanceScreen.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/BalanceController.dart';

class AccountBalanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final balanceController = Provider.of<BalanceController>(context);

    return Scaffold(
      backgroundColor: Color(0xFFE8EAEF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Account Balance",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.qr_code, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Balance
            Center(
              child: Column(
                children: [
                  Text("Balance",
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                  SizedBox(height: 8),
                  Text(
                    "\$${balanceController.balance.toStringAsFixed(2)}",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  // Tombol ADD MONEY dan TRANSFER
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          balanceController.addMoney(500.0);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                        ),
                        child: Text("ADD MONEY",
                            style: TextStyle(color: Colors.black)),
                      ),
                      SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/transfer_money');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                        ),
                        child: Text("TRANSFER",
                            style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            // Informasi Kartu
            Divider(color: Colors.grey[300]),
            _buildCardInfo("Primary Card", "7289", balanceController.balance),
            Divider(color: Colors.grey[300]),
            _buildCardInfo("Secondary Debit Card", "8633", 4298.00),
            Divider(color: Colors.grey[300]),
            SizedBox(height: 24),
            // Daftar Transaksi
            Text("Transactions",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
            SizedBox(height: 16),
            _buildTransaction("Figma", "Today, 12:30 pm", -120.0),
            _buildTransaction("Patrick Smithson", "Today, 10:22 am", 20.0),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/account_balance');
              break;
            case 1:
              Navigator.pushNamed(context, '/transfer_money');
              break;
            case 2:
              Navigator.pushNamed(context, '/messages');
              break;
            case 3:
              Navigator.pushNamed(context, '/settings');
              break;
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black), // Ikon untuk Home
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz,
                color: Colors.black), // Ikon untuk Transfer
            label: "Transfer",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Colors.black), // Ikon untuk Pesan
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,
                color: Colors.black), // Ikon untuk Pengaturan
            label: "Settings",
          ),
        ],
        selectedItemColor: Colors.green, // Warna untuk item yang dipilih
        unselectedItemColor:
            Colors.black54, // Warna untuk item yang tidak dipilih
      ),
    );
  }

  Widget _buildCardInfo(String cardName, String lastDigits, double amount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(cardName,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
              Text("• $lastDigits",
                  style: TextStyle(color: Colors.grey, fontSize: 12)),
            ],
          ),
          Text(
            "\$${amount.toStringAsFixed(2)}",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildTransaction(String name, String time, double amount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.account_circle, size: 32, color: Colors.grey),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                  Text(time,
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ],
          ),
          Text(
            "${amount < 0 ? '-' : '+'}\$${amount.abs().toStringAsFixed(2)}",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: amount < 0 ? Colors.red : Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
