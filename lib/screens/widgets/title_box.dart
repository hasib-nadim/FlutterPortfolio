import 'package:flutter/material.dart';

class TitleBox extends StatelessWidget {
  const TitleBox({
    super.key,
    required this.title,
  });

  final String title;

  @override

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.black87,
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
  
}