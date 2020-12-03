import 'package:flutter/material.dart';
import 'package:gum_drops/UI/confirm_screen.dart';

class Forgot_Password extends StatefulWidget {
  @override
  _Forgot_PasswordState createState() => _Forgot_PasswordState();
}

class _Forgot_PasswordState extends State<Forgot_Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding : false,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: new BoxDecoration(
            color: Colors.black,
            gradient: new LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.red, Colors.purple]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
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
                        "Forgot Password",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      )),
                    ],
                  ),
                ),
                Expanded(child: Text(""),),
                Padding(
                  padding: const EdgeInsets.only(bottom:35.0),
                  child: Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(.4),
                        ),
                        child: Icon(
                          Icons.mood_bad,size: 40,
                          color: Colors.white,
                        ),
                      ),

                      Text("Forgot Password?",style: TextStyle(color: Colors.white, fontSize: 24),),
                      Text("Enter your email address associated with your account.",textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 16),),
                      Container(width: 20,child: Divider(thickness: 2,color: Colors.white,),),
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
                            hintText: "Email Address",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: new BoxDecoration(
                          color: Colors.white.withOpacity(.9),
                          border: Border.all(
                            width: .1,
                            color: Colors.white.withOpacity(.4), //this has no effect
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(
                              15.0) //         <--- border radius here
                          ),
                        ),
                        child: FlatButton(
                          onPressed: (){

                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                                Verify_Number()), (Route<dynamic> route) => false);

                          },
                          child: Icon(Icons.check,color: Colors.red,),
                        ),
                      ),


                    ],
                  ),
                ),
                Expanded(child: Text(""),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
