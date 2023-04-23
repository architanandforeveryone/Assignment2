import 'dart:async';

import 'package:assignment2/View/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Colors.black,
              Colors.black54
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/duck.jpg",
              height: 300,
              width: 300,
            ),
            Text("App is Opening",style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
            CircularProgressIndicator()

          ],
        ),
      ),
    );
  }
}
