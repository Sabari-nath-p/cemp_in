import 'package:cemp/Screens/Home/Components/chatCard.dart';
import 'package:cemp/TestData/messageData.dart';
import 'package:flutter/material.dart';

class MessageListView extends StatefulWidget {
  const MessageListView({super.key});

  @override
  State<MessageListView> createState() => _MessageListViewState();
}

class _MessageListViewState extends State<MessageListView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


// --------------------------------------
        for (var data in ChatList)
          ChatCard(
            data: data,
          )
// --------------------------------------
//don't delete above line  it will display chat card 
      ],
    );
  }
}
