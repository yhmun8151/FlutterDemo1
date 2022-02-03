import 'package:flutter/material.dart';
import 'package:trunk/config/palette.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  _LoginSignupScreenState createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  bool isSignupScreen = true;
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              left : 0,
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage (
                    image: AssetImage("image/red.jpg"),
                    fit: BoxFit.fill
                  )
                ),
                child: Container (
                  padding: EdgeInsets.only(top: 90, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                            text:'Welcome',
                            style: TextStyle(
                              letterSpacing: 1.0,
                              fontSize: 25,
                              color: Colors.white
                            ),
                            children: [
                              TextSpan(
                                  text:' to Yummy chat!',
                                  style: TextStyle(
                                    letterSpacing: 1.0,
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  )
                              )
                            ]
                          ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Signup to continue',
                          style: TextStyle(
                            letterSpacing: 1.0,
                            color: Colors.white,
                          )
                      )
                    ],
                  ),
                ),
              )
          ),
          Positioned(
            top: 180,
              child: Container(
                padding: EdgeInsets.all(20.0),
                height: 280.0,
                width: MediaQuery.of(context).size.width - 40, // get device real width
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5,
                    )
                  ]
                ),
                child: Column (
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text('Login',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: !isSignupScreen ? Palette.activeColor : Palette.textColor1
                                ),
                              ),
                              if(!isSignupScreen)
                                Container(
                                  margin: EdgeInsets.only(top:3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.orange,
                                )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text('SIGNUP',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: isSignupScreen ? Palette.activeColor : Palette.textColor1
                                ),
                              ),
                              if(isSignupScreen)
                                Container(
                                  margin: EdgeInsets.only(top:3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.orange,
                                )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Form(
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.account_circle,
                                color: Palette.textColor1,),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Palette.textColor1,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(35.0),),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Palette.textColor1,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(35.0),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
          )
        ],
      )
    );
  }
}