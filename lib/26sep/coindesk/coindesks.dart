import 'package:flutter/material.dart';
import 'package:learningapi/26sep/coindesk/coindeskapi.dart';

class Coindesks extends StatefulWidget {
  const Coindesks({super.key});

  @override
  State<Coindesks> createState() => _CoindesksState();
}

class _CoindesksState extends State<Coindesks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Apicoin().GetData(),
        builder: (context, snapshot) {
          print(snapshot.data.runtimeType);
          return Text(snapshot.data["disclaimer"]);
        },
      ),
    );
  }
}
