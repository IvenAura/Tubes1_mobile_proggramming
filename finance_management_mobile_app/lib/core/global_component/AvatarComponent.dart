// AvatarComponent.dart

import 'package:flutter/material.dart';

class AvatarComponent extends StatelessWidget {
  final String imageUrl;

  AvatarComponent({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(imageUrl),
      radius: 28,
    );
  }
}
