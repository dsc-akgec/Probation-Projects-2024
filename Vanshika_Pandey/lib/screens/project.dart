import 'package:flutter/material.dart';

class project extends StatelessWidget {
  final List<String> projects = [
    'Facial Recognition Attendance System',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Projects'),
      ),
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.folder),
            title: Text(projects[index]),

                              );
            },
          )

      );

  }
}
