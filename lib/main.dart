import 'package:flutter/material.dart';
import 'package:learningapi/18sep.dart';
import 'package:learningapi/26sep/learningapi.dart';
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
      home: Apigetlearn(),
    );
  }
}
