import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AchievementPage extends StatelessWidget{
  // var academicText = TextEditingController();
  // var sportsText = TextEditingController();
  // var TechnText = TextEditingController();
  // var LeaderText = TextEditingController();
  // var artText = TextEditingController();
  // var scholarText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[200],
        title: Text('Achievements and Awards'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Colors.lightBlue[200]?.withOpacity(.50),
                shadowColor: Colors.lightBlue[200]?.withOpacity(.50),
                elevation: 12,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('Academic Achievements:', style: TextStyle(fontWeight: FontWeight.bold),),
                    leading: FaIcon(FontAwesomeIcons.school),
                    subtitle: Text('Successfully completed both high school and intermediate education with excellent academic performance'),
                  ),
                ),
              ),
              Card(
                  color: Colors.lightBlue[200]?.withOpacity(.50),
                  shadowColor: Colors.lightBlue[200]?.withOpacity(.50),
                  elevation: 12,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text('Extracurricular Activities:', style: TextStyle(fontWeight: FontWeight.bold),),
                        leading: FaIcon(FontAwesomeIcons.star),
                        subtitle: Text('Contributed as an active member of the Photography and Media Club '),
                      )

                  )
              ),
              Card(
                color: Colors.lightBlue[200]?.withOpacity(.50),
                shadowColor: Colors.lightBlue[200]?.withOpacity(.50),
                elevation: 12,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('Volunteering:', style: TextStyle(fontWeight: FontWeight.bold),),
                    leading: FaIcon(FontAwesomeIcons.handHoldingHeart),
                    subtitle: Text(' Actively volunteered in organizing and managing various school events, contributing to the smooth execution of activities and fostering a sense of community involvement and teamwork.'),
                  ),
                ),
              ),
              Card(
                color: Colors.lightBlue[200]?.withOpacity(.50),
                shadowColor: Colors.lightBlue[200]?.withOpacity(.50),
                elevation: 12,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('Technical Skills:', style: TextStyle(fontWeight: FontWeight.bold),),
                    leading: FaIcon(FontAwesomeIcons.laptopCode),
                    subtitle: Text('Developed a portfolio app using Flutter, demonstrating expertise in mobile app development and UI/UX design. Additionally, proficient in C programming, with a strong foundation in problem-solving and algorithmic thinking.'),
                  ),
                ),
              ),

              //     CircleAvatar(
              //       radius: 100,
              //       backgroundColor: Colors.grey[300],
              //       child: Icon(Icons.workspace_premium_sharp, size: 150, color: Colors.grey[700],),
              //     ),
              //     SizedBox(height: 20,),
              //     TextField(
              //       controller: academicText,
              //       decoration: InputDecoration(
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(20)
              //         ),
              //         hintText: "Academic Achievements",
              //         prefixIcon: Icon(Icons.school)
              //       ),
              //     ),
              //     SizedBox(height: 11,),
              //     TextField(
              //       controller: sportsText,
              //       decoration: InputDecoration(
              //           border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(20)
              //           ),
              //           hintText: "Sports Achievements",
              //           prefixIcon: Icon(Icons.emoji_events)
              //       ),
              //     ),
              //     SizedBox(height: 11,),
              //     TextField(
              //       controller: TechnText,
              //       decoration: InputDecoration(
              //           border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(20)
              //           ),
              //           hintText: "Techincal & Professional Awards",
              //           prefixIcon: Icon(Icons.business_center)
              //       ),
              //     ),
              //     SizedBox(height: 11,),
              //     TextField(
              //       controller: LeaderText,
              //       decoration: InputDecoration(
              //           border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(20)
              //           ),
              //           hintText: "Social Service & Leadership",
              //           prefixIcon: Icon(Icons.people_alt)
              //       ),
              //     ),
              //     SizedBox(height: 11,),
              //     TextField(
              //       controller: artText,
              //       decoration: InputDecoration(
              //           border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(20)
              //           ),
              //           hintText: "Cultural & Artistic Achievements",
              //           prefixIcon: Icon(Icons.star)
              //       ),
              //     ),
              //     SizedBox(height: 11,),
              //     TextField(
              //       controller: scholarText,
              //       decoration: InputDecoration(
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(20)
              //         ),
              //         hintText: "Scholarships",
              //         prefixIcon: Icon(Icons.receipt_long_rounded)
              //       ),
              //     )
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}