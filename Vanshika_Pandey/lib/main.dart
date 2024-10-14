import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/skills.dart';
import 'screens/project.dart';

void main() => runApp(portfolioApp());
class portfolioApp extends StatelessWidget
{@override
 Widget build(BuildContext context)
  {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(background: Colors.white)),
      title: 'My Portfolio',
      routes: {
        '/home': (context) => Home(),
        '/': (context) => Home(),
        //'/skills': (context) => SkillScreen(),
        '/project': (context) => project()

      },

  );
  }

  }
