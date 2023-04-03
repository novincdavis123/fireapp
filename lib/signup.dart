import 'package:fireapp/FireHelper.dart';
import 'package:fireapp/log.dart';
import 'package:flutter/material.dart';

class Log extends StatefulWidget {
  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(controller: email),
          TextField(controller: pass),
          ElevatedButton(
              onPressed: () {
                String mail = email.text.toString();
                String pwd = pass.text.toString();
                AuthHelper().signup(email: mail, password: pwd).then((result) {
                  if (result == null) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Firelog()));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(result)));
                  }
                });
              },
              child: Text('Login'))
        ],
      ),
    );
  }
}
