import 'package:first_session/screens/widgets/education.dart';
import 'package:first_session/screens/widgets/contact.dart';
import 'package:first_session/screens/widgets/skill.dart';
import 'package:first_session/screens/widgets/title_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(7),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 5,
                shadowColor: Colors.grey.shade900,
                child: personalComponent(),
              ),
              const SizedBox(height: 15),
              professionalComponent(),
              const SizedBox(height: 15),
              skillComponent(),
              const SizedBox(height: 15),
              educationComponent(),
              const Divider(
                color: Colors.black12,
                thickness: 2,
              ),
              const SizedBox(height: 15),
              const Text(
                '© 2025 MD Hasib Nadim. All rights reserved.',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget educationComponent() {
    return const Column(
      children: [
        TitleBox(title: 'EDUCATION'),
        SizedBox(height: 10),
        Education(
            title: 'BSc in CSE | 2026',
            subtitle: 'Varendra University',
            gpa: 'CGAP 5 out of 4',
            textAlign: TextAlign.left),
        Education(
            title: 'HSC (Science) | 2020',
            subtitle: 'XYZ Collage',
            gpa: 'GPA 6 out of 5',
            textAlign: TextAlign.right),
        Education(
            title: 'SSC in Science | 2018',
            subtitle: 'ABC School',
            gpa: 'GPA 6 out of 5',
            textAlign: TextAlign.left),
      ],
    );
  }

  Widget skillComponent() {
    return const Column(
      children: [
        TitleBox(title: 'SKILLS'),
        Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: [
            Skill(skillName: 'Flutter'),
            Skill(skillName: 'Dart'),
            Skill(skillName: 'Java'),
            Skill(skillName: 'Firebase'),
            Skill(skillName: 'SQLite'),
            Skill(skillName: 'State Management'),
            Skill(skillName: 'UI/UX Design'),
          ],
        ),
      ],
    );
  }

  Widget professionalComponent() {
    String professionalStatement =
        "I am a dedicated Flutter developer with hands-on experience in designing, developing, and implementing mobile applications. I have a solid understanding of the full mobile development life cycle. I am well-versed in numerous programming languages including Dart, Java, and Kotlin.";
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const TitleBox(title: 'PROFESSIONAL STATEMENT'),
        const SizedBox(height: 10),
        Text(professionalStatement,
            textAlign: TextAlign.justify,
            style: GoogleFonts.lobster(fontSize: 20)),
      ],
    );
  }

  Widget personalComponent() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(8),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('assets/images/me.jpg'),
          ),
          Text('MD Hasib Nadim',
              style: TextStyle(fontSize: 35, fontFamily: 'Bokor')),
          Text('Flutter Developer', style: TextStyle(fontSize: 20)),
          Contact(
              text: "Rajshahi, Bangladesh", icon: Icons.location_on_outlined),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Contact(text: '+880 178 765 4321', icon: Icons.phone),
              SizedBox(width: 10),
              Contact(text: 'hasibnadim0@gmail.com', icon: Icons.email),
            ],
          )
        ],
      ),
    );
  }
}
