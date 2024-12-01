import 'package:flutter/material.dart';

class achievements extends StatefulWidget {
  const achievements({super.key});

  @override
  State<achievements> createState() => _achievementsState();
}

class _achievementsState extends State<achievements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('ACHIEVEMENTS', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(

      ),
    );
  }
}
