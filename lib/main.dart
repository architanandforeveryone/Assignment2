import 'package:assignment2/View/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:assignment2/splash_screen.dart';
//import 'package:skiaverse/view/home.dart'

//import 'view/splashscreen.dart';

void main() {
  runApp(const NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SkiaVerse',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.blueGrey
      ),
      home: SplashScreen()
    );
  }
}