import 'package:fireapp/FireHelper.dart';
import 'package:flutter/material.dart';

class Firelog extends StatefulWidget {
  @override
  State<Firelog> createState() => _FirelogState();
}

class _FirelogState extends State<Firelog> {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller: email),
          TextField(controller: pass),
          ElevatedButton(
              onPressed: () {
                String eemail = email.text.trim();
                String pwd = pass.text.trim();
                AuthHelper().signIn(email:eemail,password:pwd);
              },
              child: Text('Login'))
        ],
      ),
    );
  }
}
