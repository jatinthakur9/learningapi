import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learningapi/27sep/post/loginmodeapi2.dart';
import 'package:learningapi/27sep/post/loginmodel.dart';
import 'package:learningapi/27sep/post/postapi.dart';
import 'package:learningapi/27sep/post/secondscreem.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();

  TextEditingController pass = TextEditingController();

  Loginmode? data;

  //twoapimode? data1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all()),
              child: TextField(
                controller: email,
                decoration: const InputDecoration.collapsed(hintText: 'Email'),
              ),
            ),
            const Gap(10),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all()),
              child: TextField(
                controller: pass,
                decoration:
                    const InputDecoration.collapsed(hintText: 'Password'),
              ),
            ),
            const Gap(10),
            ElevatedButton(
                onPressed: () async {
                  await postapi()
                      .logindata(email.text, pass.text)
                      .then((value) {
                    setState(() {
                      data = value;
                    });
                    print(data!.details!.name);
                  });
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Sendscreen(j: data!.details!.id!);
                    },
                  ));
                },
                child: const Center(child: Text('Login')))
          ],
        ),
      ),
    );
  }
}
