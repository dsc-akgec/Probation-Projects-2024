import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:portfolio_app/achievementpage.dart';
import 'package:portfolio_app/educationpage.dart';

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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  var nameText = TextEditingController();
  var emailText = TextEditingController();
  var numberText = TextEditingController();
  var handleText = TextEditingController();
  var bioText = TextEditingController();

  File? _image;
  final picker = ImagePicker();

  Future<void> Imagegallery() async{
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if(pickedFile != null){
        _image = File(pickedFile.path);
      }
    });
  }

  Future<void> Imagecamera() async{
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      if(pickedFile != null){
        _image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
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
                color: Colors.deepPurple,
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
               backgroundColor: Colors.grey[300],
                backgroundImage: _image != null ? FileImage(_image!) : null,
                child: _image == null ? Icon(Icons.person, size: 150, color: Colors.grey[700]) : null,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: Imagegallery,
                    icon: Icon(Icons.photo),
                    label: Text('Gallery'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                    onPressed: Imagecamera,
                    icon: Icon(Icons.camera),
                    label: Text('Camera'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                controller: nameText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  hintText: "Enter your name",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              Container(height: 11,),
              TextField(
                controller: emailText,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                  hintText: "Enter your email",
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              Container(height: 11,),
              TextField(
                controller: numberText,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                  hintText: "Enter your number",
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              Container(height: 11,),
              TextField(
                controller: handleText,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                  hintText: "Enter your handle",
                  prefixIcon: Icon(Icons.account_circle_rounded),
                ),
              ),
              Container(height: 11,),
              TextField(
                controller: bioText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  hintText: "bio",
                  prefixIcon: Icon(Icons.create)
                ),
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
