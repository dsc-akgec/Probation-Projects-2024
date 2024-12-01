import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';

class SkillCard extends StatelessWidget {
  final String skill;
  final double level;

  const SkillCard({Key? key,
    required this.skill,
    required this.level
  }
  )
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              skill,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0, end: level),
              duration: const Duration(seconds:3),
              builder: (context, value, _) => LinearProgressIndicator(
                value: value,
                backgroundColor: Colors.black54,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '${(level * 100).toInt()}%',
              style: const TextStyle(fontSize: 17, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff374151),
        title: const Text(
          'Skills',
          style: TextStyle(fontSize: 40, fontFamily: 'Content',
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff000025), Color(0xff000002)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            const Text(
              'Technical Skills',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff818CF8)),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: const [
                SkillCard(skill: 'C', level: 0.9),
                SkillCard(skill: 'CPP', level: 0.7),
                SkillCard(skill: 'HTML', level: 0.7),
                SkillCard(skill: 'CSS', level: 0.7),
                SkillCard(skill: 'DART', level: 0.6),
                SkillCard(skill: 'FLUTTER', level: 0.4),
              ],
            ),
            const SizedBox(height: 32),
            const Text(
              'Non-Technical Skills',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff818CF8)),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: const [
                SkillCard(skill: 'Self Motivation', level: 0.9),
                SkillCard(skill: 'Patience', level: 0.85),
                SkillCard(skill: 'Problem Solving', level: 0.8),
                SkillCard(skill: 'Time Management', level: 0.75),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffF3F4F6),
                foregroundColor: Color(0xff000000),
                // shadowColor: Colors.blueGrey,
                elevation: 3,
              ),
              child: const Text(
                'Go Back',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
