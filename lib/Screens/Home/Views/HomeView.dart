import 'package:cemp/styles.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        tx400("Hello",
            size: 10, color: Colors.black, textAlign: TextAlign.center)
        // type you home page code
      ],
    );
  }
}
