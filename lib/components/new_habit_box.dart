import 'package:flutter/material.dart';

class EnterNewHabitBox extends StatelessWidget {
  const EnterNewHabitBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[900],
      content: const TextField(
        style: TextStyle(color: Colors.white),
        decoration:  InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white) 
          ),
        ),
      ),
      actions: [
        MaterialButton(
          onPressed: () {},
          child: const Text("Save", style: TextStyle(color: Colors.white),),
          color: Colors.black,
        ),
        MaterialButton(
          onPressed: () {},
          child: const Text("Cancel", style: TextStyle(color: Colors.white),),
          color: Colors.black,
        ),
      ],
    );
  }
}