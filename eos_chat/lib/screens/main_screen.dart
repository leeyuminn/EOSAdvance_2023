/*import 'dart:html';*/

import 'package:flutter/material.dart';
import '../config/palette.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);
  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen>{
  // isSignupScreen 변수 선언
  bool isSignupScreen = true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child:Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/background.png"),
                        fit: BoxFit.fill
                    ),
                  ),

              child: Container(
                padding: EdgeInsets.fromLTRB(20, 90, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Welcome ',
                            style: TextStyle(letterSpacing: 1.0,fontSize: 25, color: Colors.white),
                            children: [
                              TextSpan(
                                text: isSignupScreen ? 'to EOS chat' : 'back',
                                style: TextStyle(letterSpacing: 1.0,fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                              )
                            ]
                        )
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      isSignupScreen ? 'Signup to continue' : 'Signin to continue',
                      style: TextStyle(letterSpacing: 1.0, color: Colors.white),
                    )],),),),),
          AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeIn,
              top: 180,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                height: isSignupScreen ? 280.0 : 250.0,
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width - 40, //핸드폰 가로길이 - 40
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3), blurRadius: 15, spreadRadius: 5,
                    )
                  ]
                ),
                child: Column(
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
                              Text(
                                'LOGIN',
                                style: TextStyle(
                                  color: !isSignupScreen ? Palette.activeColor : Palette.textColor1,
                                  fontSize: 16,
                                  fontWeight: !isSignupScreen ? FontWeight.bold : FontWeight.normal
                                )
                              ),
                              if(isSignupScreen == false)
                                Container(//밑줄
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.green,)],),),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                'SIGNUP',
                                  style: TextStyle(
                                      color: isSignupScreen ? Palette.activeColor : Palette.textColor1,
                                      fontSize: 16,
                                      fontWeight: isSignupScreen ? FontWeight.bold : FontWeight.normal
                                  )
                              ),
                              if(isSignupScreen == true)
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.green,)],),)],),
                    if(isSignupScreen)
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Form(
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person_rounded),
                                prefixIconColor: Palette.iconColor,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Palette.textColor1),
                                  borderRadius: BorderRadius.all(Radius.circular(35))
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Palette.textColor1),
                                    borderRadius: BorderRadius.all(Radius.circular(35))
                                ),
                              hintText: "User name",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: Palette.textColor1
                              ),),),
                            SizedBox(height: 8,),
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email),
                                prefixIconColor: Palette.iconColor,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Palette.textColor1),
                                    borderRadius: BorderRadius.all(Radius.circular(35))
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Palette.textColor1),
                                    borderRadius: BorderRadius.all(Radius.circular(35))
                                ),
                                hintText: "email",
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Palette.textColor1),),),
                            SizedBox(height: 8,),
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                prefixIconColor: Palette.iconColor,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Palette.textColor1),
                                    borderRadius: BorderRadius.all(Radius.circular(35))
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Palette.textColor1),
                                    borderRadius: BorderRadius.all(Radius.circular(35))
                                ),
                                hintText: "password",
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Palette.textColor1),),),
                          ],
                        ),),),
                    if(!isSignupScreen)
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Form(
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email),
                                prefixIconColor: Palette.iconColor,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Palette.textColor1),
                                    borderRadius: BorderRadius.all(Radius.circular(35))
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Palette.textColor1),
                                    borderRadius: BorderRadius.all(Radius.circular(35))
                                ),
                                hintText: "email",
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Palette.textColor1),),),
                            SizedBox(height: 8,),
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                prefixIconColor: Palette.iconColor,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Palette.textColor1),
                                    borderRadius: BorderRadius.all(Radius.circular(35))
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Palette.textColor1),
                                    borderRadius: BorderRadius.all(Radius.circular(35))
                                ),
                                hintText: "password",
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Palette.textColor1),),),
                          ],
                        ),
                      ),
                    )
                  ],),),),
          AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeIn,
              top: isSignupScreen ? 430 : 390,
              right:0,
              left:0,
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(15),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.lightGreen, Colors.green],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight
                      ),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1)
                        )
                      ]
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),),),)),
          Positioned(
            top: MediaQuery.of(context).size.height - 125,
            right: 0,
            left: 0,
              child: Column(
                children: [
                  isSignupScreen ? Text('or Signup with') : Text('or Signin with'),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton.icon(
                      onPressed: () {},
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: Size(155, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      backgroundColor: Palette.googleColor
                    ),
                    icon: Icon(Icons.add),
                    label: Text('Google'),
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}