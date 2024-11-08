// features/account_onboarding/screen/OnboardingScreen.dart

import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gambar latar belakang
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/background.jpg'), // Sesuaikan path gambar
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Konten teks di atas latar belakang
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Tombol "SKIP" di pojok kanan atas
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context,
                            '/account_balance'); // Langsung ke halaman berikutnya
                      },
                      child: Text(
                        "SKIP",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  // Judul
                  Text(
                    "Step into\nthe banking\nfuture now",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.2,
                      fontFamily: 'Roboto', // Font bawaan Flutter
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  // Subjudul
                  Text(
                    "We will do everything but count coins.\nFaster, easier, and more convenient.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontFamily: 'Roboto', // Font bawaan Flutter
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  // Tombol "Open an Account"
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,
                          '/account_balance'); // Arahkan ke halaman berikutnya
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.white, // Warna latar belakang tombol
                      foregroundColor:
                          Colors.black, // Warna teks tombol menjadi hitam
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "OPEN AN ACCOUNT",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.arrow_forward, size: 18),
                      ],
                    ),
                  ),
                  SizedBox(height: 32), // Spasi untuk tombol
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
