import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ui_of_sign_in_all_proces/AccoutPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
   Timer(Duration(seconds: 3), ()=>Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>AccountPage()), (route) => false));
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      body: Center(
        child: Column(

          children: [
            SizedBox(height: 350,
            ),
            Text("Wellcome",style: TextStyle(fontSize: 55,fontWeight: FontWeight.normal,color: Colors.blueGrey,fontFamily: "authorization"),),

        SizedBox(
          height: 35,
        ),
            SpinKitThreeInOut(color: Colors.blueGrey,size: 55,)

          ],
        ),
      ),

    );
  }
}
