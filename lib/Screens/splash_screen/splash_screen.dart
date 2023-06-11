


import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../onboard screen/onboard_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {



  @override
  void initState() {
   Timer(
        Duration(seconds: 3),
            ()async{
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboardScreen()));

              // if(await ser.auth.currentUser != null)
              // {
              //   Get.offAll(Home());
              // }else
              // {
              //   Get.offAll(LogInScreen());
              // }
        }
    );



    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image:AssetImage("lib/assets/images/Blur.png"),
                fit: BoxFit.cover),
          ),
          child: Center(child: Image.asset("lib/assets/images/Logo.png"))),
    );
  }
}
