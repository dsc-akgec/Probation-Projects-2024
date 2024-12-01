import 'package:flutter/material.dart';

class education extends StatefulWidget {
  const education({super.key});

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('EDUCATION', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,

          children: [
            Padding(padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.blueGrey,
                width: 350,
                child: Column(
                  children: [
                    Container(
                      height: 20,
                    ),
                    const Text(
                      '10th Grade',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    const Text(
                      'Baba Kadhera Singh Vidya Mandir, Mathura',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    const Text(
                      'Completed in: 2020',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    const Text(
                      'Percentage: 97.8%',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    const Text(
                      'Board: CBSE',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJOC_Fjp6vmumbcrEMK0PoFABc4mpqAcU9lw&s",
                      width: 300,
                      height: 200,
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.blueGrey,
                width: 350,
                child: Column(
                  children: [
                    Container(
                      height: 20,
                    ),
                    const Text(
                      '12th Grade',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    const Text(
                      'Shriji Baba Saraswati Vidya Mandir, Mathura',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    const Text(
                      'Completed in: 2022',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    const Text(
                      'Percentage: 90.2%',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    const Text(
                      'Board: CBSE',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    Image.network("https://thumbs.dreamstime.com/b/high-school-building-26880366.jpg",
                      width: 300,
                      height: 200,
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.blueGrey,
                width: 350,
                child: Column(
                  children: [
                    Container(
                      height: 20,
                    ),
                    const Text(
                      'B. Tech.',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    const Text(
                      'Ajay Kumar Garg Engineering College, Ghaziabad',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    const Text(
                      'To Completed in: 2027',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    const Text(
                      'Percentage: __',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    const Text(
                      'University: AKTU',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBYWBgm6bb9ODJHYNWdnoco4ojOPhQvsXViWMGR-shVhSzVXehTTvoWgyl_8mXVXxKmU4&usqp=CAU",
                      width: 300,
                      height: 200,
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
