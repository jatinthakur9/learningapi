import 'package:flutter/material.dart';
import 'package:learningapi/28sep/task1api.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  TextEditingController namee = TextEditingController();
  TextEditingController jobb = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: namee,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  hintText: 'Enter your name '),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: jobb,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  hintText: 'What job do you do '),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              await api().Sendname(namee.text, jobb.text);
            },
            child: Text('Create user'),
          ),
        ],
      ),
    );
  }
}
