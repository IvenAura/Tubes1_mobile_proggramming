// NetworkImageLoader.dart

import 'package:flutter/material.dart';

class NetworkImageLoader extends StatelessWidget {
  final String url;
  final double width;
  final double height;

  NetworkImageLoader(
      {required this.url, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      width: width,
      height: height,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
    );
  }
}
