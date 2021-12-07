import 'package:flutter/material.dart';

class LoginByGoogle extends StatefulWidget {
  const LoginByGoogle({Key? key}) : super(key: key);

  @override
  _LoginByGoogleState createState() => _LoginByGoogleState();
}

class _LoginByGoogleState extends State<LoginByGoogle> {
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


              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                height: 35,width: double.infinity,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),


                  color: Color.fromRGBO(255, 5, 5, 0.3),
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
                      width: 85,
                    ),

                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,color: Colors.white,size: 15,),)
                  ],
                ),

              ),

              Text("Or",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),

              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 120,
                shadowColor: Colors.black,

                child: Container(
                  height: 390,
                  width: 300,

                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [

                        Form(child: Column(
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
                          height: 5,
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          height: 35,width: double.infinity,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),

                            color: Colors.blue,
                          ),
                          child: FlatButton(onPressed: (){}, child: Text("Login",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),),)
                          ,
                        ),



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
