import 'package:flutter/material.dart';

class TrendingPost {
  final String image;
  final bool like;
  final String profilepic;
  final String username;
  final String time;

  TrendingPost(
      {required this.image,
        required this.like,
        required this.profilepic,
        required this.username,
        required this.time});
}
