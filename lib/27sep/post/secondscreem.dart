import 'package:flutter/material.dart';
import 'package:learningapi/27sep/post/loginmodeapi2.dart';
import 'package:learningapi/27sep/post/postapi.dart';

class Sendscreen extends StatefulWidget {
  String j;
  Sendscreen({
    super.key,
    required this.j,
  });

  @override
  State<Sendscreen> createState() => _SendscreenState();
}

class _SendscreenState extends State<Sendscreen> {
  twoapimode? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.j);
    postapi().Mergetwoapi(widget.j).then((value) {
      setState(() {
        data = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(data!.details!.length.toString()),
      ),
    );
  }
}
