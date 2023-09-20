import 'package:cemp/Screens/Components/messageCard.dart';
import 'package:cemp/TestData/messageData.dart';
import 'package:cemp/styles.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  final String username;
  const MessageScreen({super.key,required this.username});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
                      appBar:AppBar(
                      titleSpacing:5,
                      title:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        tx700(widget.username),
                        tx400("online")
                      ],
                      ),
                      leadingWidth:100,
                      leading:Row(
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children: [
                      IconButton(onPressed:()=>Navigator.pop(context), icon:Icon(Icons.arrow_back_ios_new),),
                      CircleAvatar(
                      radius: 22,
                      )
                      ],
                      ),
                      ),

          

            body: Column(
                children: [
            // type your code here
            
                
          
            //---------------------------- code to generate message list







            for (var data in mlist)
              (data["is_from"])
                  ? FromMessageCard(
                      data: data,
                    )
                  : ToMessageCard(
                      data: data,
                    )

            //--------------------------------------- don't try to delete code
          ],
        ),
      ),
    );
  }
}
