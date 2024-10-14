import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/achievementpage.dart';
import 'package:portfolio_app/darkpage.dart';
import 'package:portfolio_app/educationpage.dart';
import 'package:portfolio_app/main.dart';

class DrawerPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                  Navigator.pop(context)
                  )
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
                  trailing: Icon(Icons.arrow_right),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DarkPage())
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}