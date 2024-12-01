import'package:flutter/material.dart';
class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
        decoration: BoxDecoration(color: Colors.pink),
                child: Text('Menu',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),

            ListTile(
              title: const Text('Skills'),
              onTap: () {
                Navigator.pushNamed(context, '/skills');
              },
            ),
            ListTile(
                title: const Text('Projects'),
                onTap: () {
                  Navigator.pushNamed(context, '/project');
                },
            ),
          ],
        ),
      ),
        body: Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/vanshika_pp.jpg')
                ),
                const SizedBox(height: 20),
                const Text('Vanshika Pandey',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),

                const Text('Flutter Developer'),
                const SizedBox(height: 20),
                const Text('Contact no: 9453565623'),
                const SizedBox(height: 20),
                const Text('Email: vanshikapandey14@gmail.com'),
                const SizedBox(height: 20),


              ],
            )
        )
    );
  }
}