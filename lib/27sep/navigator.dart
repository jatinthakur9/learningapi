import 'package:flutter/material.dart';
import 'package:learningapi/27sep/simple.dart';

class Navvigatorr extends StatefulWidget {
  const Navvigatorr({super.key});

  @override
  State<Navvigatorr> createState() => _NavvigatorrState();
}

class _NavvigatorrState extends State<Navvigatorr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
        ),
        body: InkWell(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.black12,
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Simplee();
              },
            ));
          },
        ));
  }
}
