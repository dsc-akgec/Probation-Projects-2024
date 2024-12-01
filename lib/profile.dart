import 'package:flutter/material.dart';
class ZoomPage extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff374151),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors:[
              Color(0xff111827),Color(0xff000012)
            ],
                begin:Alignment.topLeft,
                end:Alignment.bottomRight
            )
        ),
        child: Center(
          child: Hero(tag:'zoom',
            child: CircleAvatar(
              radius: 200,
              backgroundImage:AssetImage('assets/Images/IMG_20231023_231858.jpg'),
            ),
             ),
        ),
      ),

    );
  }
}