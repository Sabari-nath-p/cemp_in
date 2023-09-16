import 'package:bottom_bar/bottom_bar.dart';
import 'package:cemp/Screens/Home/Views/MessageListView.dart';
import 'package:cemp/Screens/Home/Views/ProfileView.dart';
import 'package:flutter/material.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int HomeController = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
              children: [
                if (HomeController == 1) MessageListView(),
                if (HomeController == 3) ProfileScreen()
              ],
            ),
            bottomNavigationBar: BottomBar(
              selectedIndex: HomeController,
              onTap: (int index) {
                setState(() => HomeController = index);
              },
              items: <BottomBarItem>[
                BottomBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                  activeColor: Colors.blue,
                ),
                BottomBarItem(
                  icon: Icon(Icons.message),
                  title: Text('Messages'),
                  activeColor: Colors.red,
                ),
                BottomBarItem(
                  icon: Icon(Icons.notifications_none_rounded),
                  title: Text('Notification'),
                  activeColor: Colors.greenAccent.shade700,
                ),
                BottomBarItem(
                  icon: Icon(Icons.person),
                  title: Text('Profiles'),
                  activeColor: Colors.orange,
                ),
              ],
            )));
  }
}
