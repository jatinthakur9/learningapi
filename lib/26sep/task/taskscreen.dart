import 'package:flutter/material.dart';
import 'package:learningapi/26sep/task/taskapi.dart';
import 'package:learningapi/26sep/task/tasknewscreen.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: FutureBuilder(
        future: taskapi().gETDATA(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemBuilder: (context, index) {
              Color j;
              if (snapshot.data[index]["completed"] == false) {
                j = const Color.fromARGB(255, 171, 42, 42);
              } else {
                j = Colors.grey;
              }
              return InkWell(
                child: Container(
                  color: j,
                  //height: 10,
                  width: 10,
                  child: Column(
                    children: [
                      Text(snapshot.data[index]["userId"].toString()),
                      Text(snapshot.data[index]["id"].toString()),
                      Text(snapshot.data[index]["title"]),
                    ],
                  ),
                ),
                onTap: () {
                  String a = snapshot.data[index]["completed"].toString();
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Newscreen(value: a);
                    },
                  ));
                },
              );
            },
            itemCount: 50,
          );
        },
      ),
    );
  }
}
