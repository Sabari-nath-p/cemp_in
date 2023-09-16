import 'package:cemp/Screens/Home/HomeMain.dart';
import 'package:cemp/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CEMP());
}

class CEMP extends StatelessWidget {
  const CEMP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
