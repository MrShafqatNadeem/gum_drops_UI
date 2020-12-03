import 'package:flutter/material.dart';
import 'package:gum_drops/UI/login_screen.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class Verify_Number extends StatefulWidget {
  @override
  _Verify_NumberState createState() => _Verify_NumberState();
}

class _Verify_NumberState extends State<Verify_Number> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(width: MediaQuery.of(context).size.width,
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
                        "Confirm Number",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),

            Expanded(child: Text(" "),),
            Column(children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(.4),
                ),
                child: Icon(
                  Icons.smartphone,size: 40,
                  color: Colors.white,
                ),
              ),
              Text("We sent you a code",style: TextStyle(color: Colors.white, fontSize: 24),),
              Text("Enter the OTP code sent to your email address.",textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 16),),
              Container(width: 20,child: Divider(thickness: 2,color: Colors.white,),),
              SizedBox(
                height: 10,
              ),
              OTPTextField(
                length: 5,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 60,
                fieldStyle: FieldStyle.box,
                style: TextStyle(
                  fontSize: 17,color: Colors.white,
                ),
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
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
                        Login_Screen()), (Route<dynamic> route) => false);

                  },
                  child: Icon(Icons.check,color: Colors.red,),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(width: 120,
                child: FlatButton(
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.refresh,color: Colors.white),
                      Text("  Resend",style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              ),
            ],),

            Expanded(child: Text(" "),),





          ],),),),
    ));
  }
}
