// ContactAvatarWidget.dart

import 'package:flutter/material.dart';
import 'package:finance_management_mobile_app/core/global_component/AvatarComponent.dart';

class ContactAvatarWidget extends StatelessWidget {
  final String name;

  ContactAvatarWidget({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AvatarComponent(
            imageUrl:
                'https://via.placeholder.com/150'), // Replace with actual URL
        SizedBox(height: 8),
        Text(name, style: TextStyle(fontSize: 12, color: Colors.black)),
      ],
    );
  }
}
