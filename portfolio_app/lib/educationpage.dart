import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget{
  var degreeText = TextEditingController();
  var instituteText = TextEditingController();
  var startText = TextEditingController();
  var endText = TextEditingController();
  var descriptionText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text('Education'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.grey[300],
                child: Icon(Icons.school_rounded, size: 150, color: Colors.grey[700],),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: degreeText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  hintText: "degree/program (e.g.,B.Tech, M.Sc, etc.).",
                  prefixIcon: Icon(Icons.book)
                ),
              ),
              SizedBox(height: 11,),
              TextField(
                controller: instituteText,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    hintText: "Institute name",
                    prefixIcon: Icon(Icons.business)
                ),
              ),
              SizedBox(height: 11,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: TextField(
                      controller: startText,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        hintText: "Start Date",
                        prefixIcon: IconButton(onPressed: () async{
                          DateTime? datepicked = await showDatePicker(
                              context: context,
                              firstDate: DateTime(1000),
                              lastDate: DateTime(2030),
                          );
                          if(datepicked != null){
                            startText.text = '${datepicked.day}/${datepicked.month}/${datepicked.year}';
                          }
                        }, icon: Icon(Icons.calendar_month)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Flexible(
                      child: TextField(
                        controller: endText,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          hintText: "End Date",
                          prefixIcon: IconButton(onPressed: () async{
                            DateTime? datepicked = await showDatePicker(
                              context: context,
                              firstDate: DateTime(1000),
                              lastDate: DateTime(2030),
                            );
                            if(datepicked != null){
                              startText.text = '${datepicked.day}/${datepicked.month}/${datepicked.year}';
                            }
                          }, icon: Icon(Icons.calendar_month)
                        ),
                      ),
                      )
                  ),
                ],
              ),
                  SizedBox(height: 11,),
              TextField(
                controller: descriptionText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Description(Optional)",
                  prefixIcon: Icon(Icons.description_outlined)
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