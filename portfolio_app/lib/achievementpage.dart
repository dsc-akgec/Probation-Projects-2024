import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AchievementPage extends StatelessWidget{
  var academicText = TextEditingController();
  var sportsText = TextEditingController();
  var TechnText = TextEditingController();
  var LeaderText = TextEditingController();
  var artText = TextEditingController();
  var scholarText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text('Achievements and Awards'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.grey[300],
                child: Icon(Icons.workspace_premium_sharp, size: 150, color: Colors.grey[700],),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: academicText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  hintText: "Academic Achievements",
                  prefixIcon: Icon(Icons.school)
                ),
              ),
              SizedBox(height: 11,),
              TextField(
                controller: sportsText,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    hintText: "Sports Achievements",
                    prefixIcon: Icon(Icons.emoji_events)
                ),
              ),
              SizedBox(height: 11,),
              TextField(
                controller: TechnText,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    hintText: "Techincal & Professional Awards",
                    prefixIcon: Icon(Icons.business_center)
                ),
              ),
              SizedBox(height: 11,),
              TextField(
                controller: LeaderText,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    hintText: "Social Service & Leadership",
                    prefixIcon: Icon(Icons.people_alt)
                ),
              ),
              SizedBox(height: 11,),
              TextField(
                controller: artText,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    hintText: "Cultural & Artistic Achievements",
                    prefixIcon: Icon(Icons.star)
                ),
              ),
              SizedBox(height: 11,),
              TextField(
                controller: scholarText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  hintText: "Scholarships",
                  prefixIcon: Icon(Icons.receipt_long_rounded)
                ),
              )
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}