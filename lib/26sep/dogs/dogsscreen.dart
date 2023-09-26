import 'package:flutter/material.dart';
import 'package:learningapi/26sep/bored/borderapi.dart';
import 'package:learningapi/26sep/dogs/dogsapi.dart';

class DogsScreen extends StatefulWidget {
  const DogsScreen({super.key});

  @override
  State<DogsScreen> createState() => _DogsScreenState();
}

class _DogsScreenState extends State<DogsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: FutureBuilder(
            future: dogapi().fetchimage(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else {
                return Image.network(snapshot.data['message']);
              }
            },
          ),
        ),
      ),
    );
  }
}
