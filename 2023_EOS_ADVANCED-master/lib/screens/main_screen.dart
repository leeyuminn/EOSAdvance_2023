import 'dart:ui';

import 'package:flutter/material.dart';
import '../config/palette.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);
  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  bool isSignupScreen = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Container(
                        padding: EdgeInsets.fromLTRB(20, 90, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                                    text: 'Welcome',
                                    style: TextStyle(
                                        letterSpacing: 1.0,
                                        fontSize: 25,
                                        color: Colors.white),
                                    children: [
                                      TextSpan(
                                          text: isSignupScreen
                                              ? ' to EOS Chat'
                                              : ' back',
                                          style: TextStyle(
                                              letterSpacing: 1.0,
                                              fontSize: 25,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold))
                                    ])),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                                isSignupScreen
                                    ? 'Signup to continue'
                                    : 'Siginin to continue',
                                style: TextStyle(
                                    letterSpacing: 1.0, color: Colors.white)),
                          ],
                        )))),
            Positioned(
              // 가운데 하얀 바탕이 되는 container
                top: 180,
                child: AnimatedContainer(
                  height: isSignupScreen ? 320.0 : 290.0,
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width - 40,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 15,
                            spreadRadius: 5)
                      ]),
                  duration: Duration(milliseconds: 500), //지속시간
                  curve: Curves.easeIn, //애니메이션 효과
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            //로그인 텍스트에 대한
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
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: isSignupScreen
                                          ? Palette.textColor1
                                          : Palette.activeColor),
                                ),
                                if (!isSignupScreen) //SignupScreen이 false 일때
                                  Container(
                                      margin: EdgeInsets.only(top: 3),
                                      height: 2,
                                      width: 55,
                                      color: Colors.green)
                              ],
                            ),
                          ),
                          GestureDetector(
                            //회원가입 텍스트에 대한
                            onTap: () {
                              setState(() {
                                isSignupScreen = true;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: isSignupScreen
                                          ? Palette.activeColor
                                          : Palette.textColor1),
                                ),
                                if (isSignupScreen) //SignupScreen이 true 일때
                                  Container(
                                      margin: EdgeInsets.only(top: 3),
                                      height: 2,
                                      width: 55,
                                      color: Colors.green)
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Form(
                          child: Column(
                            children: [
                              if (isSignupScreen)
                                TextFormField(
                                    decoration: InputDecoration(
                                        hintText: 'User name',
                                        hintStyle: TextStyle(
                                            color: Palette.textColor1),
                                        prefixIcon:
                                        Icon(Icons.account_circle_rounded),
                                        prefixIconColor: Palette.iconColor,
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Palette.textColor1),
                                            borderRadius:
                                            BorderRadius.circular(35.0)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Palette.textColor1),
                                            borderRadius:
                                            BorderRadius.circular(35.0)))),
                              const SizedBox(
                                height: 8,
                              ),
                              TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'email',
                                      hintStyle:
                                      TextStyle(color: Palette.textColor1),
                                      prefixIcon: Icon(Icons.mail),
                                      prefixIconColor: Palette.iconColor,
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Palette.textColor1),
                                          borderRadius:
                                          BorderRadius.circular(35.0)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Palette.textColor1),
                                          borderRadius:
                                          BorderRadius.circular(35.0)))),
                              const SizedBox(
                                height: 8,
                              ),
                              TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'password',
                                      hintStyle:
                                      TextStyle(color: Palette.textColor1),
                                      prefixIcon: Icon(Icons.lock),
                                      prefixIconColor: Palette.iconColor,
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Palette.textColor1),
                                          borderRadius:
                                          BorderRadius.circular(35.0)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Palette.textColor1),
                                          borderRadius:
                                          BorderRadius.circular(35.0)))),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            AnimatedPositioned(
                top: isSignupScreen ? 450 : 410,
                right: 0,
                left: 0,
                duration: Duration(milliseconds: 500),
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
                                  end: Alignment.bottomRight),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(0, 1))
                              ]),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        )))),
            Positioned(
              //구글 로그인 or 회원가입 버튼
              top: MediaQuery.of(context).size.height - 125, right: 0, left: 0,
              child: Column(
                children: [
                  if (isSignupScreen)
                    Text('Or Siginup with') //Tap signup
                  else if (!isSignupScreen)
                    Text('Or Signin with'),
                  SizedBox(height: 10),
                  TextButton.icon(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: Size(155, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Palette.googleColor,
                    ),
                    icon: Icon(Icons.add),
                    label: Text('Google'),
                  )
                ],
              ),
            )
          ],
        ));
  }
}