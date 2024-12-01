import 'package:flutter/material.dart';
import 'package:portfolio/education.dart';
import 'package:portfolio/experience.dart';
import 'package:portfolio/profile.dart';
import 'package:portfolio/project.dart';
import 'package:portfolio/skills.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
// import 'package:http/http.dart' as http;
// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:url_launcher/link.dart';
// ignore: unused_import
// import 'dart:async';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:portfolio/toggle.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(
          backgroundColor: const Color(0xff374151),
          title:  const Text('Portfolio',style: TextStyle(
            fontSize: 20,
            fontFamily: 'Heading',
          )),
        ),
        drawer: Drawer(
          child: AnimatedContainer(
            duration: const Duration(seconds: 3),
            curve: Curves.fastEaseInToSlowEaseOut,
            color: const Color(0xff1a1a2e),
            child: ListView(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xff111827),
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/Images/IMG_20231023_231858.jpg'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Nutan Kumar',
                        style: TextStyle(color: Color(0xffFFFFFF),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'nutan9135kr@gmail.com',
                        style: TextStyle(color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListTile(
                      leading: const Icon(Icons.star,color: Colors.white,),
                      title: const Text(
                        'Skills',
                        style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFFFFF)),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SkillsPage()));
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.save_as_rounded,color: Colors.white,),
                      title: const Text(
                        'Project',
                        style: TextStyle(fontSize: 21,
                          fontWeight: FontWeight.w600,
                        color: Color(0xffFFFFFF)),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectPage()));
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.border_color_outlined,color: Colors.white,),
                      title: const Text(
                        'Education',
                        style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFFFFF)),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EducationPage()));
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.work,color: Colors.white,),
                      title: const Text(
                        'Experience',
                        style: TextStyle(fontSize: 21,
                          fontWeight: FontWeight.w600,
                        color: Color(0xffFFFFFF)),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ExperiencePage()));
                      },
                    ),
                  ],
                ),
                SizedBox( height: 420),
              ],
            ),

          ),
         ),

        body:Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors:[
                Color(0xff000025),Color(0xff000002)
              ],
                  begin:Alignment.topLeft,
                  end:Alignment.bottomRight
              )
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      onTap: ()
                      {
                        Navigator.push(context,
                            MaterialPageRoute(builder:(context)=>ZoomPage() )
                        );
                      },
                      child: const Hero(
                        tag: 'zoom',
                        child: CircleAvatar(
                          radius: 80,
                          backgroundImage:AssetImage('assets/Images/IMG_20231023_231858.jpg'),

                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('Nutan Kumar',style: TextStyle(fontSize:30,fontFamily: 'Name',
                      color: Color(0xffFFFFFF),fontWeight: FontWeight.w700),),
                  const SizedBox(height: 14),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text('My name is Nutan Kumar. I am a second-year B.Tech CSE student'
                        ' at Ajay Kumar Garg College in Ghaziabad. I have a keen interest in DSA,'
                        ' Flutter app development, and I am actively improving my communication skills.'
                        ' .'
                      ,style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 25,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(

                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone, color: Colors.white),
                          SizedBox(width: 7),
                          Text(
                            '9135045355',
                            style: TextStyle(color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.email_outlined,color: Colors.white),
                              SizedBox(width: 7),
                              Text('nutan2310092@akgec.ac.in',
                                style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 40),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: IconButton(onPressed:(){
                          //   async {
                          // const link="https://www.instagram.com/raushan_ydv124/?hl=en";
                          // await (
                          // Uri.parse(link),
                          // mode: LaunchMode.inAppWebView
                          // );
                          //
                          }, icon:Image.asset('assets/Images/instagram.png',
                            width: 45,
                            height: 40,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(onPressed:()
                          {
                            // getRequest();
                          }, icon:Image.asset('assets/Images/github.png',
                            width: 45,
                            height: 40,
                            color: Colors.white,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(onPressed:  ()async
                          {
                          //   final Uri url=Uri.parse('https://www.linkedin.com/in/nutan-kumar-7b9b05329/');
                          //   if (await canLaunchUrl(url))
                          //     {
                          //       await launchUrl(url);
                          //     }
                          //   else{
                          //     throw 'can not launch';
                          // }
                          }, icon:Image.asset('assets/Images/linkedin.png',
                            width: 45,
                            height: 40,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(onPressed:()
                          {
                            // onPressed: _launchURL;
                          }, icon:Image.asset('assets/Images/twitter.png',
                            width: 45,
                            height: 40,)),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Made with Flutter',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
