import 'package:flutter/material.dart';

class Movedata2screen extends StatefulWidget {
  var jatin;
  Movedata2screen({
    super.key,
    required this.jatin,
  });

  @override
  State<Movedata2screen> createState() => _Movedata2screenState();
}

class _Movedata2screenState extends State<Movedata2screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('jatin'),
        ),
        body: Column(children: [
          Text(widget.jatin),
        ]));
    ;
  }
}
