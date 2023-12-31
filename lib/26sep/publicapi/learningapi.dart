import 'package:flutter/material.dart';
import 'package:learningapi/26sep/publicapi/apiii.dart';

class Apigetlearn extends StatefulWidget {
  const Apigetlearn({super.key});

  @override
  State<Apigetlearn> createState() => _ApigetlearnState();
}

class _ApigetlearnState extends State<Apigetlearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: jpi().FetchDataIN(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Text(snapshot.data['entries'][index]['API']);
            },
          );
        },
      ),
    );
  }
}
