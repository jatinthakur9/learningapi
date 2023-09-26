import 'package:flutter/material.dart';
import 'package:learningapi/5sep/movedata2screen.dart';

class Movedata extends StatefulWidget {
  const Movedata({super.key});

  @override
  State<Movedata> createState() => _MovedataState();
}

class _MovedataState extends State<Movedata> {
  TextEditingController jatin = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('jatin'),
        ),
        body: Column(
          children: [
            TextField(
              controller: jatin,
            ),
            InkWell(
              child: Container(child: Text('Submit')),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Movedata2screen(
                        jatin: jatin.text,
                      ),
                    ));
              },
            ),
          ],
        ));
  }
}
