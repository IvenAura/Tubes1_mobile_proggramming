// OnboardingIllustrationWidget.dart

import 'package:flutter/material.dart';

class OnboardingIllustrationWidget extends StatelessWidget {
  final String imagePath;

  OnboardingIllustrationWidget({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        imagePath,
        width: 200,
        height: 200,
        fit: BoxFit.contain,
      ),
    );
  }
}
