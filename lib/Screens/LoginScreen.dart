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
          Container(
            width:MediaQuery.of(context).size.width,
            height: 300,
            color: Colors.white,
          ),
          Text("Login for account",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.black),),
           Text("kindly make account to meet new friends and date in your favourite location",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey),textAlign: TextAlign.center,),
          SizedBox(height: 5,),
            Align(
              child:Padding(padding: EdgeInsets.only(left: 3),
               child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: ("PRP Code"),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),)
                      ),
              )
             
              ),
            ),
            SizedBox(height: 3,),
             Align(
              child:Padding(padding: EdgeInsets.only(left: 3),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: ("Password"),
                        border: OutlineInputBorder()
                      ),
                         ),
              )
               
             ),
            Align(
                        alignment: Alignment.centerRight,
                        child: Padding(padding: EdgeInsets.only(right: 1.0),
                        child: Text("Forgot password?",style: TextStyle(fontSize: 13,color: Colors.grey),),)
                      ),
                      SizedBox(height: 5,),
                      Expanded(child: Container()),
          InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomeMain()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height:50,
                padding: EdgeInsets.only(left: 3),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.pink,),
                
                alignment: Alignment.center,
                child: Text("Sign in",style:TextStyle(fontSize: 17,color: Colors.white),),
                
              )),
              SizedBox(height: 5,),
               Container( 
                        alignment: Alignment.center,
                        child:
                            Text("By signing up you agree to our Terms and Conditions and Privacy Policy",style: TextStyle(fontSize: 13,color:Colors.black),),
                          ),
                           SizedBox(height: 5,),
                          
                     
// type login page code here
        ],
      ),
    ));
  }
}
