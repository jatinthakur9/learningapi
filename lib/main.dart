import 'package:flutter/material.dart';
import 'package:learningapi/27sep/navigator.dart';
import 'package:learningapi/threescreen/18sep.dart';
import 'package:learningapi/26sep/bored/boredscreen.dart';
import 'package:learningapi/26sep/catfatcs/carfactsshow.dart';
import 'package:learningapi/26sep/coindesk/coindesks.dart';
import 'package:learningapi/26sep/dogs/dogsscreen.dart';
import 'package:learningapi/26sep/oldtask.dart';
import 'package:learningapi/26sep/publicapi/learningapi.dart';
import 'package:learningapi/26sep/task/taskscreen.dart';
import 'package:learningapi/5sep/movedata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Navvigatorr(),
    );
  }
}
