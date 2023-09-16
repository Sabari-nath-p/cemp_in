import 'package:cemp/Screens/Components/messageCard.dart';
import 'package:cemp/TestData/messageData.dart';
import 'package:cemp/styles.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

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
              tx700("Sabari Momo",size:20),
              tx400("online",size: 15)
              ],
            ),
           leadingWidth:100,
           leading:Row(
           mainAxisAlignment:MainAxisAlignment.spaceEvenly,
           children: [
            Icon(Icons.arrow_back_ios,size: 20),
            CircleAvatar(
              radius: 22,  
                     
            )
          ],
        ),
      ),



        body: Column(
          
          children: [
            Expanded(
                child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Card(      
                      margin: EdgeInsets.only(left: 8,right: 8,bottom: 5),
                      color: Colors.blueGrey,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child:
                      TextFormField(
                      decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type a message",
                      contentPadding:EdgeInsets.all(15),
                      ),
                      ),
                      ),
                      ),
                      ),
          




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
