import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/achievementpage.dart';
import 'package:portfolio/educationpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.lightBlue[200]!,
          secondary: Colors.pink[200]!,
        ),
        scaffoldBackgroundColor: Colors.grey[100],
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black),
        ),

        useMaterial3: true,

      ),
      darkTheme: ThemeData.dark(),
      themeMode: _isDarkMode ? ThemeMode.dark:ThemeMode.light,

      home: MyHomePage(
        title: 'Flutter Demo Home Page',
        isDarkMode: _isDarkMode,
        onThemeChanged: (bool value) {
          setState(() {
            _isDarkMode = value;
          });
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
    required this.onThemeChanged,
    required this.isDarkMode,
  });

  final String title;
  final Function(bool) onThemeChanged;
  final bool isDarkMode;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // var nameText = TextEditingController();
  // var emailText = TextEditingController();
  // var numberText = TextEditingController();
  // var handleText = TextEditingController();
  // var bioText = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.lightBlue[200],
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Portfolio'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const[BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Educations',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.workspace_premium_sharp),
              label: 'Achievements and Awards',
            ),
          ]),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlue[200],
              ),
              child: Column(
                children: [

                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                  trailing: Icon(Icons.arrow_right),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Education'),
                  leading: Icon(Icons.school),
                  trailing: Icon(Icons.arrow_right),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EducationPage())
                    );
                  },
                ),
                ListTile(
                  title: Text('Achievements & Awards'),
                  leading: Icon(Icons.workspace_premium_sharp),
                  trailing: Icon(Icons.arrow_right),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AchievementPage())
                    );
                  },
                ),
                ListTile(
                    title: Text('Dark Mode'),
                    leading: Icon(Icons.dark_mode),
                    trailing: Switch(
                        value: widget.isDarkMode,
                        onChanged: (value){
                          setState(() {
                            widget.onThemeChanged(value);
                          });
                        })
                )
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/IMG_20241001_120605.png'),
                    backgroundColor: Colors.grey[300],
          
                  ),
                  SizedBox(height: 20),
                  Text('Hello! I’m Riddhima Gupta.', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                  Text('I am currently a B.Tech student specializing in Information Technology. My passion for technology drives me to explore various aspects of software development and innovative solutions that can impact our daily lives.', textAlign: TextAlign.center,),
                  SizedBox(height: 20,),
                  Column(
                    children: [
                            Row(
                              children: [
                                FaIcon(FontAwesomeIcons.instagram, size: 24,),
                                SizedBox(width: 4,),
                                Text('_justt.riddhima'),
                              ],
                            ),
                            SizedBox(height: 4,),
                            Row(
                              children: [
                                FaIcon(FontAwesomeIcons.phone, size: 24,),
                                SizedBox(width: 4,),
                                Text('8467089856'),
                              ],
                            ),
                            SizedBox(height: 4,),
                            Row(
                              children: [
                                FaIcon(FontAwesomeIcons.envelope),
                                SizedBox(width: 4,),
                                Text('riddhima2313137@akgec.ac.in'),
                              ],
                            ),
                          ],
                        ),

                  // TextField(
                  //   controller: nameText,
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(20)
                  //     ),
                  //     hintText: "Enter your name",
                  //     prefixIcon: Icon(Icons.person),
                  //   ),
                  // ),
                  // Container(height: 11,),
                  // TextField(
                  //   controller: emailText,
                  //   decoration: InputDecoration(
                  //       border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(20)
                  //       ),
                  //     hintText: "Enter your email",
                  //     prefixIcon: Icon(Icons.email),
                  //   ),
                  // ),
                  // Container(height: 11,),
                  // TextField(
                  //   controller: numberText,
                  //   decoration: InputDecoration(
                  //       border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(20)
                  //       ),
                  //     hintText: "Enter your number",
                  //     prefixIcon: Icon(Icons.phone),
                  //   ),
                  // ),
                  // Container(height: 11,),
                  // TextField(
                  //   controller: handleText,
                  //   decoration: InputDecoration(
                  //       border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(20)
                  //       ),
                  //     hintText: "Enter your handle",
                  //     prefixIcon: Icon(Icons.account_circle_rounded),
                  //   ),
                  // ),
                  // Container(height: 11,),
                  // TextField(
                  //   controller: bioText,
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(20)
                  //     ),
                  //     hintText: "bio",
                  //     prefixIcon: Icon(Icons.create)
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
