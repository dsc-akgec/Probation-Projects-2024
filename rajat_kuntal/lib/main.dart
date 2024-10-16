import 'package:flutter/material.dart';
import 'package:potrfolio/skills.dart';
import 'package:potrfolio/education.dart';
import 'package:potrfolio/home.dart';
import 'package:potrfolio/projects.dart';
import 'package:potrfolio/achievements.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  int myIndex=0;
  List<Widget> widgetList = const [
    home(),
    skills(),
    education(),
    projects(),
    achievements(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //title: Text(widget.title),
      //),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        onTap: (index){
          setState(() {
            myIndex=index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box_rounded),
            label: 'Skills',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_rounded),
            label: 'Education',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_repair_service),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_purple500_rounded),
            label: 'Achievements',
          ),
        ],
      ),
      body: Center(
        child: widgetList[myIndex],
      ),

    );
  }
}
