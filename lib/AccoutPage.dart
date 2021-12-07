
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_of_sign_in_all_proces/LoginPage.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {


  @override
  Widget build(BuildContext context) {
    return Container(

      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/k2.jpg"),
          fit: BoxFit.cover,

        )
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [

            Colors.white38.withOpacity(0.6),
            Colors.white38.withOpacity(0.3),
          ],

          begin: Alignment.center
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(55),
                      image: DecorationImage(image:AssetImage("assets/k5.png"),
                      fit: BoxFit.cover,
                      )
                    ),
                  ),
                  Text("Doctor's app",style: TextStyle(fontSize: 25,fontWeight: FontWeight.normal,color: Colors.blueGrey,fontFamily: "authorization"),),

                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 500,
                    shadowColor: Colors.black,

                    child: Container(
                      height: 530,
                      width: 300,

                     child: Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: Column(
                         children: [
                           Row(
                             children: [
                               Text("Create account",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.black),),
                             ],
                           ),
                           SizedBox(
                             height: 15,
                           ),
                           Form(

                             child: Column(
                             children: [
                               TextFormField(
                                 keyboardType: TextInputType.name,


                                 decoration: InputDecoration(
                                   labelText: "Your name",
                                   enabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.only(
                                     topRight: Radius.circular(25),
                                     bottomLeft: Radius.circular(25),

                                   ),
                                     borderSide: BorderSide(color: Colors.blueGrey)
                                   )
                                 ),

                               ),
                               SizedBox(
                                 height: 8,
                               ),
                               TextFormField(
                                 keyboardType: TextInputType.emailAddress,

                                 decoration: InputDecoration(
                                     labelText: "Email",
                                     enabledBorder: OutlineInputBorder(
                                         borderRadius: BorderRadius.only(
                                           topRight: Radius.circular(25),
                                           bottomLeft: Radius.circular(25),

                                         ),
                                         borderSide: BorderSide(color: Colors.blueGrey)
                                     )
                                 ),

                               ),
                               SizedBox(
                                 height: 8,
                               ),
                               TextFormField(
                                 keyboardType: TextInputType.visiblePassword,
                                 obscureText: true,

                                 decoration: InputDecoration(
                                     labelText: "Password",
                                     enabledBorder: OutlineInputBorder(
                                         borderRadius: BorderRadius.only(
                                           topRight: Radius.circular(25),
                                           bottomLeft: Radius.circular(25),

                                         ),
                                         borderSide: BorderSide(color: Colors.blueGrey)
                                     )
                                 ),

                               ),
                               Row(
                                 children: [
                                   Text("i",style: TextStyle(fontWeight: FontWeight.w100,color: Colors.pink,fontSize: 25,fontFamily: "authorization"),),
                                   SizedBox(
                                     width: 5,
                                   ),
                                   Text("Passwords must be at least 6 characters",style: TextStyle(fontSize: 8),),

                                 ],
                               ),
                               SizedBox(
                                 height: 8,
                               ),
                               TextFormField(
                                 keyboardType: TextInputType.visiblePassword,
                                 obscureText: true,


                                 decoration: InputDecoration(
                                     labelText: "Re_enter password",
                                     enabledBorder: OutlineInputBorder(
                                         borderRadius: BorderRadius.only(
                                           topRight: Radius.circular(25),
                                           bottomLeft: Radius.circular(25),

                                         ),
                                         borderSide: BorderSide(color: Colors.blueGrey)
                                     )
                                 ),

                               ),
                             ],
                           ),
                           ),
                           SizedBox(
                             height: 15,
                           ),

                           RaisedButton(onPressed: (){},child: Text("Continue",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.white),),color: Colors.blue),



                        Text("By creating an account you agree to Doctor's app",style: TextStyle(fontSize: 8,),),

                           Row(
                             children: [
                               SizedBox(
                                 width: 70,
                               ),
                               Text("Conditions of use",style: TextStyle(fontSize: 8,color: Colors.blue),),
                               Text("and",style: TextStyle(fontSize: 8),),
                               Text("Privacy notice",style: TextStyle(fontSize: 8,color: Colors.blue),),
                             ],
                           ),


                           SizedBox(
                             height: 25,
                           ),



                           Row(
                             children: [
                               Text("Already have an account?",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w100),),


                               Text("Login here",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w100,color: Colors.blue),),
                               IconButton(onPressed: (){

                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));

                               }, icon: Icon(Icons.arrow_right,color: Colors.blue,size: 30,))

                             ],
                           )
                         ],
                       ),
                     ),


                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
