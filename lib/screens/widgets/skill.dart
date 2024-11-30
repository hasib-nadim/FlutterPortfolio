import 'package:flutter/material.dart';

class Skill extends StatelessWidget {
  const Skill({super.key, required this.skillName});
  final String skillName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(3, 2, 3, 2),
      margin: const EdgeInsets.only(top: 10, right: 5, left: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black87, width: 2),
      ),
      child: Text(skillName, style: const TextStyle(fontSize: 20)),
    );
  }
}
