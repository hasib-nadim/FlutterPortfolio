import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({
    super.key,
    required this.title,
    required this.subtitle,
    required this.gpa,
    required this.textAlign,
  });

  final String title;
  final String subtitle;
  final String gpa;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:
          textAlign == TextAlign.left ? Alignment.topLeft : Alignment.topRight,
      padding: const EdgeInsets.all(5),
      child: Column(
          crossAxisAlignment: textAlign == TextAlign.left
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.end,
          children: [
            Text(title,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text(subtitle, style: const TextStyle(fontSize: 17)),
            Text(gpa,
                style:
                    const TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
          ]),
    );
  }
}
