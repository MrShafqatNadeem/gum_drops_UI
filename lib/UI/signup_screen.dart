import 'package:flutter/material.dart';
import 'package:gum_drops/UI/login_screen.dart';

class Signup_Screen extends StatefulWidget {
  @override
  _Signup_ScreenState createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {


  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Container(

          width: MediaQuery
              .of(context)
              .size
              .width,
          height: MediaQuery
              .of(context)
              .size
              .height,
          decoration: new BoxDecoration(
            color: Colors.black,
            gradient: new LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.red, Colors.purple]),
          ),
          child: SingleChildScrollView(
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
                              "Sign up",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),

                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Register",
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
                              hintText: "Nick name",
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
                              hintText: "Phone number",
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
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding:
                              EdgeInsets.only(left: 15, right: 15),
                              hintText: "Location",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 150,
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
                              hintText: "Few words about me..",
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
                                  Icons.radio_button_unchecked,
                                  size: 30.0,
                                  color: Colors.white,
                                )
                                    : Icon(
                                  Icons.check_circle,
                                  size: 30.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            InkWell(

                              onTap: (){
                                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                                    Login_Screen()), (Route<dynamic> route) => false);
                              },

                              child: Text(
                                "  Agree to terms and conditions",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ],
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
