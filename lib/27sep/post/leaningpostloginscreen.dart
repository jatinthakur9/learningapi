import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  loginModel? data;
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
                onPressed: () {
                  ApiData().login(email.text, pass.text).then((value) {
                    data = value;
                  
                  });
                },
                child: const Center(child: Text('Login')))
          ],
        ),
      ),
    );
  }
}