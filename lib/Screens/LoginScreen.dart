import 'package:cemp/Screens/Home/HomeMain.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomeMain()));
              },
              child: Container(
                width: 100,
                color: Colors.amber,
                height: 100,
              ))
// type login page code here
        ],
      ),
    ));
  }
}
