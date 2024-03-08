import 'package:flutter/material.dart';
import 'package:habit_tracker/components/habit_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // checkbox was tapped
  bool habitCompleted = false;

  void checkBoxTapped(bool? value) {
    setState(() {
      habitCompleted = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          //habit tiles
          HabitTile(
            habitCompleted: true,
            habitName: '',
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}