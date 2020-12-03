import 'package:flutter/material.dart';
import 'package:gum_drops/UI/bio_photos_Screen.dart';
import 'package:gum_drops/UI/confirm_screen.dart';
import 'package:gum_drops/UI/done_screen.dart';
import 'package:gum_drops/UI/forgot_password_screen.dart';
import 'package:gum_drops/UI/login_screen.dart';
import 'package:gum_drops/UI/select_images.dart';
import 'package:gum_drops/UI/signup_screen.dart';
import 'package:gum_drops/UI/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Splash_Screen(),
    );
  }
}


