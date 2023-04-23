import 'package:flutter/material.dart';

class Story {
  final String image;
  final String name;
  final String view;
  final bool live;

  Story(
      {
        required this.image,
        required this.name,
        required this.view,
        required this.live
      }
      );
}
