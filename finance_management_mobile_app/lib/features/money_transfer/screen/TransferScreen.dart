// features/money_transfer/screen/TransferScreen.dart

import 'package:flutter/material.dart';

class TransferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Transfer Money",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Bagian Kontak yang Dipilih
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildContact("Avery Smithson", 'assets/images/avatar1.png'),
                _buildSelectedContact(
                    "James Anderson", 'assets/images/avatar2.png'),
                _buildContact("Matthew Taylor", 'assets/images/avatar3.png'),
                _buildContact("Michael Johnson", 'assets/images/avatar4.png'),
              ],
            ),
          ),
          // Input Jumlah Transfer
          Text(
            "\$5.00",
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          // Pilihan Jumlah Cepat
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [5, 10, 20, 50, 100].map((amount) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ChoiceChip(
                  label: Text("\$$amount"),
                  selected: false,
                  onSelected: (selected) {},
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 16),
          // Keypad
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.5,
                ),
                itemBuilder: (context, index) {
                  if (index < 9) {
                    return _buildKeypadButton((index + 1).toString());
                  } else if (index == 9) {
                    return _buildKeypadButton(".");
                  } else if (index == 10) {
                    return _buildKeypadButton("0");
                  } else {
                    return Icon(Icons.backspace);
                  }
                },
              ),
            ),
          ),
          // Tombol "Send Money"
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: EdgeInsets.symmetric(vertical: 16),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                "SEND \$5.00",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk Menampilkan Kontak yang Tidak Dipilih
  Widget _buildContact(String name, String imagePath) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 24,
        ),
        SizedBox(height: 4),
        Text(
          name,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  // Fungsi untuk Menampilkan Kontak yang Dipilih
  Widget _buildSelectedContact(String name, String imagePath) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 28,
          backgroundColor: Colors.green,
        ),
        SizedBox(height: 4),
        Text(
          name,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  // Fungsi untuk Membuat Tombol Keypad
  Widget _buildKeypadButton(String text) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(fontSize: 24, color: Colors.black),
      ),
    );
  }
}
