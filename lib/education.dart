import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';
 class EducationCard extends StatelessWidget{
   final String course;
   final String institute;
   final String year;
   final String percentage;

   const EducationCard({super.key,
     required this.course,
     required this.institute,
     required this.year,
     required this.percentage,
   });
   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,bottom: 8),
      child: Card(
        elevation: 5,
        color: const Color(0xff374151),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(course, style: const TextStyle(fontSize: 26,
              fontWeight: FontWeight.w500,
              color: Color(0xffFFFFFF)),),
              const SizedBox(height: 8,),
              Text(institute,style: const TextStyle(fontSize: 23,
                fontWeight: FontWeight.w400,
                  color: Color(0xffFFFFFF)
              ),),
              const SizedBox(height: 8,),
              Text('Completion Year: $year',style: const TextStyle(
                color:  Color(0xffFFFFFF),
                fontSize: 21
              ),),
              const SizedBox(height: 4),
              Text('Percentage: $percentage',
              style: const TextStyle(
                  color: Color(0xffFFFFFF),
                fontSize: 20
              ),),
            ],

          ),
        ),
      ),
    );
  }

 }

class EducationPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        backgroundColor:const Color(0xff374151) ,
        title: const Text('Educational Details',style: TextStyle(
          fontSize: 35,
          fontFamily: 'Content'
        ),),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors:[
              Color(0xff000025),Color(0xff000002)
            ],
                begin:Alignment.topLeft,
                end:Alignment.bottomRight
            )
        ),
        child: ListView(
          children: const [
            EducationCard(
             course: '10th Grade',
             institute: 'Paradise Children Academy, Lalapur, Bihar',
             year: '2020',
             percentage: '83%',
                            ),
            EducationCard(
             course: '12th Grade',
             institute: 'Paradise Children Academy, Lalapur, Bihar',
             year: '2022',
             percentage: '82%',
                            ),
            EducationCard(
             course: 'JEE Mains',
             institute: 'Allen Kota, Rajasthan',
             year: '2023',
             percentage: '93.3 Percentile',
                            ),
            EducationCard(
             course: 'B.Tech in CSE',
             institute: 'Ajay Kumar Garg Engineering College, Ghaziabad',
             year: '2023 - Present',
             percentage: 'Pursuing',
                            ),
          ],
        ),
      ),
    );
  }
}
