// core/Typography.dart

import 'package:flutter/material.dart';

class AppTypography {
  static const TextStyle headline = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    height: 1.2,
    fontFamily: 'PlayfairDisplay', // Custom font if needed
  );

  static const TextStyle subheadline = TextStyle(
    fontSize: 16,
    color: Colors.white70,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static var bodyText;
}
