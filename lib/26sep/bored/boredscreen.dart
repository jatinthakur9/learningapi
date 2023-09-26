import 'package:flutter/material.dart';
import 'package:learningapi/26sep/bored/borderapi.dart';

class Boredscreen extends StatefulWidget {
  const Boredscreen({super.key});

  @override
  State<Boredscreen> createState() => _BoredscreenState();
}

class _BoredscreenState extends State<Boredscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: FutureBuilder(
            future: boredapi().BoredGet(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else {
                return Text(snapshot.data['activity']);
              }
            },
          ),
        ),
      ),
    );
  }
}
