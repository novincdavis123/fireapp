import 'package:fireapp/FireHelper.dart';
import 'package:fireapp/log.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('welcome'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AuthHelper().signOut().then((_) => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Firelog())));
        },
        child: Text('Logout'),
      ),
    );
  }
}
