import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text('PORTFOLIO', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/ip2.jpg'),
              ),
              Container(
                height: 30,
              ),
              const Text('Rajat Kuntal',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone_android,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '+91 8448688580',
                  ),
                ],
              ),
              Container(
                height: 8,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email_rounded,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'rajat23169069@akgec.ac.in',
                  ),
                ],
              ),
              Container(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed:() {

                    },
                    icon: Image.network('https://d12mivgeuoigbq.cloudfront.net/magento-media/icons/twitter/logo-twitter-x-square.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                  IconButton(
                    onPressed:() {

                    },
                    icon: Image.network('https://flooidpower.com/wp-content/uploads/2023/04/174857-150x150.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                  IconButton(
                    onPressed:() {

                    },
                    icon: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/1200px-Instagram_icon.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
              Container(
                height: 30,
              ),
              const Padding(padding: EdgeInsets.all(12.0),
                child: Text('I am a student of Bachelor of Technology 2nd year at Ajay Kumar Garg Engineering College, Ghaziabad. I am currently pursuing App Development in Google Developer Groups on Campus at my college. I am interested in competitive programming and currently enhancing my DSA concepts. I am very good at Athletics besides my academics.',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
