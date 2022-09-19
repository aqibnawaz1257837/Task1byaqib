import 'dart:async';

import 'package:demoprojectbyaqib/Screen/LoginPage.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    Timer(
        Duration(seconds: 5),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => LoginPage())));


  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Image(image: AssetImage("images/tass.jpg")),
      ),

    );
  }
}
