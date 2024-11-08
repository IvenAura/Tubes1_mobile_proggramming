// ButtonComponent.dart

import 'package:flutter/material.dart';
import '../constants/color.dart';
import '../global_component/Typography.dart';

class ButtonComponent extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  ButtonComponent({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryGreen,
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      ),
      onPressed: onPressed,
      child: Text(label, style: AppTypography.buttonText),
    );
  }
}
