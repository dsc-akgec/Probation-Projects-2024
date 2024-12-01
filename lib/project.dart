import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';
// import 'package:url_launcher/url_launcher.dart';


class ProjectCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String projectLink;

  const ProjectCard({Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.projectLink
  })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: const Color(0xff374151),
        elevation: 4,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
               height:250,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(13),
                 image: DecorationImage(image:AssetImage(imageUrl),
                 fit: BoxFit.cover)
               ),
             ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style:
                    const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)
                    ),),
                  const SizedBox(height: 12,),
                  Text(description,style: const TextStyle(
                    fontSize: 19,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w500
                  ),),
                     Text(projectLink,style: const TextStyle(
                      fontSize: 20,
                      color: Color(0xff000000)
                    ),),

                ],
              ),
            ],
          ),
        ),

      ),
    );
  }
}

class ProjectPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor:const Color(0xff374151) ,
       title: const Text('Project',style: TextStyle(
         fontSize: 35,
         fontFamily: 'Content'
       ),),
     ),

     body: Container(
       decoration: BoxDecoration(
         color: Color(0xff000023)
       ),
       child: const SingleChildScrollView(
         child: Column(
           children: [
             ProjectCard(
               imageUrl:'assets/Images/bmi.jpg',
               title: 'BMI Calculator',
               description: 'I created a BMI calculator using '
                   'HTML, CSS, and basic JavaScript to help users'
                   ' calculate their Body Mass Index. Users input '
                   'their height and weight, and the JavaScript logic'
                   ' instantly calculates their BMI and provides feedback'
                   ' (underweight, normal, overweight, obese). This '
                   'project'' enhanced my skills in form handling,'
                   ' styling, and basic JavaScript functionality.',
               projectLink: 'https://nutan-kum12.github.io/bmi/',
             ),
             ProjectCard(
               imageUrl:'assets/Images/sensorproject.jpg',
               title: 'Heartbeat Sensor using Arduino',
               description: 'In 2023, I built a heartbeat sensor'
                   ' project with the help of Arduino at the Oorja'
                   ' Society of Ajay Kumar Garg Engineering College.'
                   ' The sensor detects heartbeats using photoplet'
                   'hysmography and sends the data to the Arduino, '
                   'which processes it to calculate heart rate. '
                   'The project provided real-time monitoring of'
                   ' pulse data and was an excellent learning '
                   'experience in using sensors, microcontrollers, '
                   'and coding to create a functional health-monitoring device',
               projectLink: 'No link',
             ),
             ProjectCard(
               imageUrl:'assets/Images/job.png',
               title: 'Job Application',
               description: 'This project is a simple, responsive website'
                   ' for job applications built with HTML and CSS. It '
                   'features a home page and an application form where '
                   'users can submit personal details, education, and'
                   ' work experience. The website is styled using CSS'
                   ' to create a clean and professional layout, ensuring '
                   'a seamless experience across devices.',
               projectLink: 'https://nutan-kum12.github.io/PROJECT2/',
             ),
             ProjectCard(
               imageUrl:'assets/Images/portfolio.jpg',
               title: 'Flutter Portfolio Project',
               description: 'A Flutter application that showcases'
                   ' a developers skills, education, and projects.'
                   ' It features an animated skills page with progress'
                   ' bars, an education page detailing academic background'
                   ', and smooth navigation, providing an interactive '
                   'and responsive user experience.',
               projectLink: 'Project Link',
             ),
           ],
         ),
       ),
     )
   );
  }
}