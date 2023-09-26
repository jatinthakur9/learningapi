import 'package:flutter/material.dart';

class oldtask extends StatefulWidget {
  const oldtask({super.key});

  @override
  State<oldtask> createState() => _oldtaskState();
}

class _oldtaskState extends State<oldtask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 420,
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Color.fromARGB(255, 38, 146, 36),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Color.fromARGB(255, 14, 170, 167),
                ),
              ],
            ),
          ),

          //for second
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 420,
            child: Row(
              children: [
                SizedBox(
                  width: 100,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Color.fromARGB(255, 38, 146, 36),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Color.fromARGB(255, 14, 170, 167),
                ),
              ],
            ),
          ),

          // for third
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 420,
            child: Row(
              children: [
                SizedBox(
                  width: 200,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Color.fromARGB(255, 38, 146, 36),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Color.fromARGB(255, 14, 170, 167),
                ),
              ],
            ),
          ),

          //for fourth

          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 420,
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Center(child: Text('a')),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Color.fromARGB(255, 38, 146, 36),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Center(child: Text('a')),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Color.fromARGB(255, 14, 170, 167),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
