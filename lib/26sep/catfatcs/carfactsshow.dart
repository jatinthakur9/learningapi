import 'package:flutter/material.dart';
import 'package:learningapi/26sep/catfatcs/catafactsapi.dart';

class Catfactss extends StatefulWidget {
  const Catfactss({super.key});

  @override
  State<Catfactss> createState() => _CatfactssState();
}

class _CatfactssState extends State<Catfactss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: FutureBuilder(
            future: Api().GetData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasData == false) {
                return Text('Empty');
              } else {
                return Text(snapshot.data['length'].toString());
              }
            },
          ),
        ),
      ),
    );
  }
}
