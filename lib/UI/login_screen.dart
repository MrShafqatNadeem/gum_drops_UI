import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gum_drops/UI/bio_photos_Screen.dart';
import 'package:gum_drops/UI/forgot_password_screen.dart';
import 'package:gum_drops/UI/signup_screen.dart';

class Login_Screen extends StatefulWidget {
  @override
  _Login_ScreenState createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding : false,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: new BoxDecoration(
            color: Colors.black,
            gradient: new LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.red, Colors.purple]),
          ),
          child: Padding(
            padding: EdgeInsets.all(18),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(1),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      Expanded(
                          child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      )),
                    ],
                  ),
                ),
              //  Expanded(child: SizedBox(height: 1,),),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          decoration: new BoxDecoration(
                            color: Colors.white.withOpacity(.4),
                            border: Border.all(
                              width: .1,
                              color: Colors.white
                                  .withOpacity(.4), //this has no effect
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(
                                    15.0) //         <--- border radius here
                                ),
                          ),
                          child: TextField(
                            cursorColor: Colors.white,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.only(left: 15, right: 15),
                              hintText: "Email",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          decoration: new BoxDecoration(
                            color: Colors.white.withOpacity(.4),
                            border: Border.all(
                              width: .1,
                              color: Colors.white
                                  .withOpacity(.4), //this has no effect
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(
                                    15.0) //         <--- border radius here
                                ),
                          ),
                          child: TextField(
                            cursorColor: Colors.white,
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.only(left: 15, right: 15),
                              hintText: "Password",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _value = !_value;
                                });
                              },
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(.4),
                                ),
                                child: _value
                                    ? Icon(
                                        Icons.radio_button_checked,
                                        size: 30.0,
                                        color: Colors.white,
                                      )
                                    : Icon(
                                        Icons.radio_button_unchecked,
                                        size: 30.0,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return Profile_info_update();
                                    }));
                              },
                              child: Text(
                                "  Remember this account?",
                                style: TextStyle(color: Colors.white, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
               // Expanded(child: SizedBox(height: 1,),),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Column(

                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return Forgot_Password();
                                }));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.vpn_key,color: Colors.white),
                              Text("  Forgot Password?",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * .80,
                            child: Divider(
                              height: 1,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return Signup_Screen();
                                }));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.person_add,color: Colors.white,),
                              Text("  Sign up",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
