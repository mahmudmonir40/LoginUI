import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_of_sign_in_all_proces/LoginByGoogle.dart';
import 'package:ui_of_sign_in_all_proces/LoginFacebook.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Card(
          elevation: 60,
          shadowColor: Colors.black,
          child: Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),

            ),
            child: IconButton(onPressed: (){

              Navigator.pop(context);

            }, icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),),
          ),
        )
      ),


      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [



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
                elevation: 120,
                shadowColor: Colors.black,

                child: Container(
                  height: 490,
                  width: 300,

                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Login account",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.black),),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Form(



                          child: Column(
                          children: [

                            TextFormField(
                              keyboardType: TextInputType.emailAddress,


                              decoration: InputDecoration(
                                  labelText: "Email or mobile phone number",
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
                                SizedBox(
                                  height: 25,
                                ),


                                FlatButton(onPressed: (){}, child: Text("Forget Password",style: TextStyle(fontSize: 8,color: Colors.blue),))
                              ],
                            ),

                          ],
                        ),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        RaisedButton(onPressed: (){},child: Text("Login",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.white),),color: Colors.blue,),

                        Row(
                          children: [
                            SizedBox(
                              width: 70,
                            ),
                            Icon(Icons.check_box_outline_blank,color: Colors.pink,size: 10,),
                            Text("Keep me signed in.",style: TextStyle(fontSize: 8,color: Colors.blue),),
                            Text("Details",style: TextStyle(fontSize: 8,color: Colors.blue),),
                           Icon(Icons.arrow_drop_down_outlined,color: Colors.pink,size: 10,)
                          ],
                        ),
                       SizedBox(
                         height: 5,
                       ),


                       Text("Or",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),

                        SizedBox(
                          height: 5,
                        ),

                      Container(
                       margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                       height: 35,width: double.infinity,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue[100],
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 28,
                              width: 28,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(55),
                                image: DecorationImage(image: AssetImage("assets/k6.jpg"),

                                fit: BoxFit.cover,
                                ),

                              ),

                            ),
                            SizedBox(
                              width: 10,
                            ),

                            Text("Login with Facebook",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),),
                            SizedBox(
                              width: 15,
                            ),

                            IconButton(onPressed: (){

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginFacebook()));

                            }, icon: Icon(Icons.arrow_forward,color: Colors.white,size: 15,),)
                          ],
                        ),

                      ),

                        SizedBox(
                          height: 9,
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          height: 35,width: double.infinity,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.brown[100],
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 28,
                                width: 28,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(55),
                                  image: DecorationImage(image: AssetImage("assets/k7.png"),

                                    fit: BoxFit.cover,
                                  ),

                                ),

                              ),
                              SizedBox(
                                width: 10,
                              ),

                              Text("Login with Google",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),),
                              SizedBox(
                                width: 15,
                              ),

                              IconButton(onPressed: (){

                                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginByGoogle()));


                              }, icon: Icon(Icons.arrow_forward,color: Colors.white,size: 15,),)
                            ],
                          ),

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
    );
  }
}
