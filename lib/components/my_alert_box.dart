// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyAlertBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const MyAlertBox({super.key, this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[900],
      content: TextField(
        controller: controller,
        style: const TextStyle(color: Colors.white),
        decoration:  const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white) 
          ),
        ),
      ),
      actions: [
        MaterialButton(
          onPressed: onSave,
          color: Colors.black,
          child: const Text("Save", style: TextStyle(color: Colors.white),),
        ),
        MaterialButton(
          onPressed: onCancel,
          color: Colors.black,
          child: const Text("Cancel", style: TextStyle(color: Colors.white),),
        ),
      ],
    );
  }
}