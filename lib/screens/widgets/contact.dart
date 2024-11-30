import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  
  @override

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        Text(text, style: const TextStyle(fontSize: 15)),
      ],
    );
  }
}
