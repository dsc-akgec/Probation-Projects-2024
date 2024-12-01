import 'package:flutter/material.dart';

class skills extends StatefulWidget {
  const skills({super.key});

  @override
  State<skills> createState() => _skillsState();
}

class _skillsState extends State<skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('SKILLS', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
        body: Center(
          child: Column(
            children: [
              const Text(
                'Programming Languages:',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Container(
                height: 20,
              ),
              Row(
                children: [
                  Padding(padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      color: Colors.blueGrey[200],
                      child: const Text('Python',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  Padding(padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      color: Colors.blueGrey[200],
                      child: const Text('C',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Container(
                height: 30,
              ),
              const Text(
                'Web Development:',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Container(
                height: 20,
              ),
              Row(
                children: [
                  Padding(padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      color: Colors.blueGrey[200],
                      child: const Text('HTML',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  Padding(padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      color: Colors.blueGrey[200],
                      child: const Text('CSS',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  Padding(padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      color: Colors.blueGrey[200],
                      child: const Text('JS',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Container(
                height: 20,
              ),
              const Text(
                'Other Tech Skills:',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Container(
                height: 20,
              ),
              Row(
                children: [
                  Padding(padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      color: Colors.blueGrey[200],
                      child: const Text('SQL',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  Padding(padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      color: Colors.blueGrey[200],
                      child: const Text('Flutter',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Container(
                height: 30,
              ),
              const Text(
                'Others:',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Container(
                height: 20,
              ),
              Row(
                children: [
                  Padding(padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      color: Colors.blueGrey[200],
                      child: const Text('Cricket',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  Padding(padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 40,
                      width: 110,
                      color: Colors.blueGrey[200],
                      child: const Text('Athletics',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  Padding(padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      color: Colors.blueGrey[200],
                      child: const Text('Writing',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                ],
              ),

            ],
          ),
        )
    );
  }
}
