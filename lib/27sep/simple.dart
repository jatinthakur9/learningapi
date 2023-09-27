import 'package:flutter/material.dart';
import 'package:learningapi/27sep/navigator.dart';

class Simplee extends StatefulWidget {
  const Simplee({super.key});

  @override
  State<Simplee> createState() => _SimpleeState();
}

class _SimpleeState extends State<Simplee> {
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
            Navigator.pop(context, MaterialPageRoute(
              builder: (context) {
                return Navvigatorr();
              },
            ));
          },
        ));
  }
}
