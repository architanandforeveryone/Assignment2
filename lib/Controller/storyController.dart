import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:assignment2/models/story.dart';

class StoryController extends GetxController {
  var storyItems = List<Story>.empty(growable: true).obs;

  @override
  void onInit() {
    fetchgamedetails();
    super.onInit();
  }

  void fetchgamedetails() async {
    // await Future.delayed(const Duration(seconds: 1));
    var serverresponse = [
     Story(
         image: "images/story1.jpg",
         name: "Savannah",
         view: "2.5k",
         live: true),
      Story(
          image: "images/story2.jpg",
          name: "Alex",
          view: "15k",
          live: false),
      Story(
          image: "images/story3.jpg",
          name: "Ab de villiers",
          view: "3k",
          live: true),
      Story(
          image: "images/story4.jpg",
          name: "Harshelle",
          view: "100",
          live: false
      )
    ];

    storyItems.value = serverresponse;
  }
}