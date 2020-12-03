import 'package:flutter/material.dart';
import 'package:gum_drops/UI/splash_screen.dart';

class All_Done extends StatefulWidget {
  @override
  _All_DoneState createState() => _All_DoneState();
}

class _All_DoneState extends State<All_Done> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Expanded(child: Text(" "),),
                Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(.4),
                      ),
                      child: Icon(
                        Icons.mood_bad,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "All done!",
                      style:
                          TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    Text(
                      "Your profile has been submitted and we will send you a reference number and instructions so that your profile can be activated.",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Container(
                      width: 20,
                      child: Divider(
                        thickness: 2,
                        color: Colors.white,
                      ),
                    ),

                  ],
                ),
                Expanded(child: Text(" "),),
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                          Splash_Screen()), (Route<dynamic> route) => false);
                    },
                    child: Text(
                      "Sign out",
                      style:
                      TextStyle(color: Colors.white, fontSize: 16),
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
