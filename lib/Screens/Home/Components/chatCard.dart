import 'package:cemp/Screens/MessageScreen.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  var data;
  ChatCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => MessageScreen()));
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        color: Colors.red,
        height: 10,
        child: Column(
          children: [
            //  use your code here to make chat card
          ],
        ),
      ),
    );
  }
}
