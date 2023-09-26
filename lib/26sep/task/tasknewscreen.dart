import 'package:flutter/material.dart';

class Newscreen extends StatefulWidget {
  String value;
  Newscreen({
    super.key,
    required this.value,
  });

  @override
  State<Newscreen> createState() => _NewscreenState();
}

class _NewscreenState extends State<Newscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(widget.value),
    );
  }
}
